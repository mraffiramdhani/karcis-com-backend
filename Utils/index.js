const response = require('./response');
const redis = require('./redis');
const paramParser = require('./paramParser');
const urlParser = require('./urlParser');
const { sendEmail } = require('./mail');
const { hashString, compareHashedString } = require('./bcrypt');
const { signToken, verifyToken } = require('./token');
const { randomString, randomNumber, range, generateOTP } = require('./generator');
const { uploadProfileImage, uploadHotelImages, uploadAmenityIcon } = require('./fileSystem');

module.exports = {
  response,
  redis,
  paramParser,
  urlParser,
  signToken,
  verifyToken,
  hashString,
  compareHashedString,
  sendEmail,
  randomString,
  randomNumber,
  range,
  generateOTP,
  uploadProfileImage,
  uploadHotelImages,
  uploadAmenityIcon
};
