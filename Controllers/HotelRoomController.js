/* eslint-disable no-else-return */
const {
	response, redis, urlParser
} = require('../Utils');
const { HotelRooms, RoomImages } = require('../Services');

const getHotelRooms = async (req, res) => {
  const {
    search, sort, perPage, page
  } = req.query;
  const { id } = req.params;

  var numRows;
  var numPerPage = parseInt(perPage, 10) || 10;
  var currentPage = parseInt(page, 10) || 1;
  var numPages;
  var skip = (currentPage - 1) * numPerPage;

  await HotelRooms.getRoomsCount(id, search, sort).then((result) => {
    numRows = result[0].roomCount;
    numPages = Math.ceil(numRows / numPerPage);
  }).catch((error) => response(res, 200, false, 'Error At Fetching Hotel Rooms Count.', error));

  const limit = `${skip},${numPerPage}`;
  const redisKey = `hotel_rooms_${encodeURI(`hotel_id=${id}` + urlParser(search, sort, currentPage, numPerPage))}`;

  return redis.get(redisKey, async (ex, data) => {
    if (data) {
      const resultJSON = JSON.parse(data);
      return response(res, 200, true, 'Data Found - Redis Cache', resultJSON);
    }
    else {
      const rooms = await HotelRooms.getRooms(id, search, sort, limit);
      if (rooms) {
      	for(let i = 0; i < rooms.length; i++){
          const roomImages = await HotelRooms.getCheapestRooms(hotels[i].id);
          hotels[i].cost = cheapestRoom[0].cost;
        }
        const result = {
          rooms
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

// const getHotelRoomById = async (req, res) => {
//   const { id, hotelId } = req.params;
//   await HotelRooms.getRoom(id, hotelId).then((result) => {
//     if (result.length > 0) {
//       return response(res, 200, true, 'Data Found.', result[0]);
//     }
//     else {
//       return response(res, 200, false, 'Data Not Found.');
//     }
//   }).catch((error) => response(res, 200, false, 'Error At Fetching Hotel Room By ID.', error));
// };

// const createHotelRoom = async (req, res) => {
// 	const { id } = req.params;

// };

// const updateBalance = async (req, res) => {
//   const { id } = req.auth;
//   const { value } = req.body;
//   await Balance.updateBalance(id, value).then(async (result) => {
//     if (result.affectedRows > 0) {
//       await Balance.getBalance(id).then(async (_result) => {
//         if (_result.length > 0) {
//           const data = { balance: _result[0].balance, top_up: value}
//           await BalanceHistories.createBalanceHistory(id, _result[0].id, data).then((__result) => {
//             if (__result.insertId > 0) {
//               return response(res, 200, true, 'Top Up Balance Success.', _result[0]);
//             }
//             else {
//               return response(res, 200, false, 'Balance Top Up Failed. Please Try Again.');
//             }
//           }).catch((error) => response(res, 200, false, 'Error At Storing Top Up History.', error));
//         }
//         else {
//           return response(res, 200, false, 'Fetching User Balance Failed. Please Try Again.');
//         }
//       }).catch((error) => response(res, 200, false, 'Error At Fetching User Balance.', error));
//     }
//     else {
//       return response(res, 200, false, 'Updating Balance Failed. Please Try Again.');
//     }
//   }).catch((error) => response(res, 200, false, 'Error At Updating User Balance.', error));
// };

module.exports = {
  getHotelRooms
};
