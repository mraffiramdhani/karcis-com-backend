/* eslint-disable no-else-return */
const {
  response, redis, urlParser
} = require('../Utils');
const { Hotel } = require('../Services');

const getHotels = async (req, res) => {
  const { search, sort, perPage, page } = req.query;

  var numRows;
  var numPerPage = parseInt(perPage, 10) || 10;
  var currectPage = parseInt(page, 10) || 1;
  var numPages;
  var skip = (currectPage - 1) * numPerPage;

  await Hotel.getHotelsCount(search, sort).then((result) => {
    numRows = result[0].hotelCount;
    numPages = Math.ceil(numRows / numPerPage);
  }).catch((error) => response(res, 200, false, 'Error At Fetching Hotel Count.', error));

  var limit = skip + ',' + numPerPage;
  var redisKey = 'hotel_' + encodeURI(search+sort+perPage+currectPage);

  return redis.get(redisKey, async (ex, data) => {
    if (data) {
      const resultJSON = JSON.parse(data);
      return response(res, 200, true, 'Data Found - Redis Cache', resultJSON);
    }
    else {
      const hotels = await Hotel.getHotels(search, sort, limit);
      if (hotels) {
        const result = {
          hotels
        };

        if (currectPage <= numPages) {
          result.pagination = {
            currentPage,
            recordPerPage: numPerPage,
            prev: currectPage > 1 ? currectPage - 1 : undefined,
            next: currectPage < numPages ? currectPage + 1 : undefined,
            prevLink: currectPage > 1 ? urlParser(search, sort, currectPage - 1, numPerPage) : undefined,
            nextLink: currectPage < numPages ? urlParser(search, sort, currectPage + 1, numPerPage) : undefined,
          }
        }
        else {
          result.pagination = {
            err: 'queried page ' + currectPage + ' is >= to maximum page number ' + numPages
          }
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
  await Hotel.getHotelById(id).then((result) => {
    if (result.length > 0) {
      return response(res, 200, true, 'Data Found.', result);
    }
    else {
      return response(res, 200, true, 'Data Not Found.');
    }
  }).catch((error) => response(res, 200, false, 'Error At Fetching Hotel Data.', error));
};

// // eslint-disable-next-line consistent-return
// const createUser = async (req, res) => {
//   let data = {};
//   await uploadProfileImage(req).then(async (result) => {
//     data = result;
//     const encPassword = hashString(data.password);
//     data.password = encPassword;
//     // eslint-disable-next-line camelcase
//     // eslint-disable-next-line consistent-return
//     await User.createUser(data).then(async (_result) => {
//       const { insertId } = _result;
//       if (insertId !== 0) {
//         await User.getUserById(insertId).then((__result) => {
//           if (__result.length > 0) {
//             return response(res, 200, true, 'User Created Successfuly.', __result[0]);
//           }
//           else {
//             return response(res, 200, false, 'Creating User Failed. Please Try Again.');
//           }
//         }).catch((error) => response(res, 200, false, 'Error At Fetching User Data.', error));
//       }
//       else {
//         return response(res, 200, false, 'Error At Creating User.');
//       }
//     }).catch((error) => response(res, 200, false, 'Error At Creating User.', error));
//   }).catch((error) => response(res, 200, false, 'Error At Uploading Image.', error));
// };

// const updateUser = async (req, res) => {
//   const { id } = req.params;

//   let data = {};
//   await uploadProfileImage(req).then(async (result) => {
//     data = result;
//     if (data.password !== '' || data.password) {
//       const encPassword = hashString(data.password);
//       data.password = encPassword;
//     }
//     // eslint-disable-next-line consistent-return
//     await User.updateUser(id, data).then(async (_result) => {
//       if (_result.affectedRows === 0) {
//         return response(res, 200, false, 'Data not Found.');
//       }
//       else {
//         await User.getUserById(id).then((__result) => response(res, 200, true, 'User Updated Successfully.', __result[0])).catch((error) => response(res, 200, false, 'Error At Fetching User Data.', error));
//       }
//     }).catch((error) => response(res, 200, false, 'Error At Updating User Data.', error));
//   }).catch((error) => response(res, 200, false, 'Error At Uploading Image.', error));
// };

// const deleteUser = async (req, res) => {
//   const { id } = req.params;
//   await User.deleteUser(id).then((result) => {
//     if (result.affectedRows > 0) {
//       return response(res, 200, true, 'User Deleted Successfully.', result);
//     }
//     else {
//       return response(res, 200, false, 'Deleting User Failed. Please Try Again.');
//     }
//   }).catch((error) => response(res, 200, false, 'Error At Deleting User.', error));
// };

module.exports = {
  getHotels,
  getHotelById
};
