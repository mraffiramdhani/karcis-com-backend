/* eslint-disable camelcase */
/* eslint-disable max-len */
/* eslint-disable no-else-return */
const {
  response, redis, urlParser
} = require('../Utils');
const { Hotel, HotelRooms, HotelAmenities, Amenity } = require('../Services');

const getHotels = async (req, res) => {
  const {
    search, sort, perPage, page
  } = req.query;

  var numRows;
  var numPerPage = parseInt(perPage, 10) || 10;
  var currentPage = parseInt(page, 10) || 1;
  var numPages;
  var skip = (currentPage - 1) * numPerPage;

  await Hotel.getHotelsCount(search, sort).then((result) => {
    numRows = result[0].hotelCount;
    numPages = Math.ceil(numRows / numPerPage);
  }).catch((error) => response(res, 200, false, 'Error At Fetching Hotel Count.', error));

  const limit = `${skip},${numPerPage}`;
  const redisKey = `hotel_${encodeURI(urlParser(search, sort, currentPage, numPerPage))}`;

  return redis.get(redisKey, async (ex, data) => {
    if (data) {
      const resultJSON = JSON.parse(data);
      return response(res, 200, true, 'Data Found - Redis Cache', resultJSON);
    }
    else {
      const hotels = await Hotel.getHotels(search, sort, limit);
      if (hotels) {
        for(let i = 0; i < hotels.length; i++){
          const cheapestRoom = await HotelRooms.getCheapestRooms(hotels[i].id);
          hotels[i].cost = cheapestRoom[0].cost;
        }

        const result = {
          hotels,

        };

        if (currentPage <= numPages) {
          result.pagination = {
            currentPage,
            recordPerPage: numPerPage,
            prev: currentPage > 1 ? currentPage - 1 : undefined,
            next: currentPage < numPages ? currentPage + 1 : undefined,
            prevLink: currentPage > 1 ? urlParser(search, sort, currentPage - 1, numPerPage) : undefined,
            nextLink: currentPage < numPages ? urlParser(search, sort, currentPage + 1, numPerPage) : undefined
          };
        }
        else {
          result.pagination = {
            err: `queried page ${currentPage} is >= to maximum page number ${numPages}`
          };
        }

        redis.setex(redisKey, 10, JSON.stringify(result));
        return response(res, 200, true, 'Data Found - Database Query', result);
      }
      else {
        return response(res, 200, false, 'Data not Found');
      }
    }
  });
};

const getHotelById = async (req, res) => {
  const { id } = req.params;
  await Hotel.getHotelById(id).then(async (result) => {
    if (result.length > 0) {
      const arr = [];
      await HotelAmenities.getAmenities(id).then(async (_result) => {
        if (_result.length > 0) {
          for(let i = 0 ; i < _result.length ; i++){
            const hotelAmenity = await Amenity.getAmenityById(_result[i].amenities_id);
            arr.push(hotelAmenity[0]);
          }
        }
      }).catch((error) => response(res, 200, false, 'Error At Fetching Hotel Amenity.', error));
      result[0].amenities = arr;
      return response(res, 200, true, 'Data Found.', result[0]);
    }
    else {
      return response(res, 200, true, 'Data Not Found.');
    }
  }).catch((error) => response(res, 200, false, 'Error At Fetching Hotel Data.', error));
};

const createHotel = async (req, res) => {
  const {
    name, description, address, city_id, latitude, longitude, province_id
  } = req.body;
  const data = {
    name, description, address, city_id, latitude, longitude, province_id
  };
  await Hotel.createHotel(data).then((result) => {
    if (result.insertId > 0) {
      return response(res, 200, true, 'Hotel Created Successfuly.', result);
    }
    else {
      return response(res, 200, false, 'Creating Hotel Failed. Please Try Again.');
    }
  }).catch((error) => response(res, 200, false, 'Error At Creating Hotel.', error));
};

const updateHotel = async (req, res) => {
  const { id } = req.params;
  const {
    name, description, address, city_id, latitude, longitude, province_id
  } = req.body;
  const data = {
    name, description, address, city_id, latitude, longitude, province_id
  };
  await Hotel.updateHotel(id, data).then(async (result) => {
    if (result.affectedRows > 0) {
      await Hotel.getHotelById(id).then((_result) => response(res, 200, true, 'Hotel Updated Successfuly.', _result)).catch((error) => response(res, 200, false, 'Error At Fetching Hotel.', error));
    }
    else {
      return response(res, 200, false, 'Updating Hotel Failed. Please Try Again');
    }
  }).catch((error) => response(res, 200, false, 'Error At Updating Hotel.', error));
};

const deleteHotel = async (req, res) => {
  const { id } = req.params;
  await Hotel.deleteHotel(id).then((result) => {
    if (result.affectedRows > 0) {
      return response(res, 200, true, 'Hotel Deleted Successfuly.', result);
    }
    else {
      return response(res, 200, false, 'Deleting Hotel Failed. Please Try Again.');
    }
  }).catch((error) => response(res, 200, false, 'Error At Deleting Hotel.', error));
};

module.exports = {
  getHotels,
  getHotelById,
  createHotel,
  updateHotel,
  deleteHotel
};
