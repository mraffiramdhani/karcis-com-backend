/* eslint-disable no-else-return */
const jwt = require('jsonwebtoken');
const { isRevoked } = require('./Token');
const { response, verifyToken } = require('../Utils');

const auth = async (req, res, next) => {
  if (req.headers.authorization && req.headers.authorization.startsWith('Bearer')) {
    const jwtToken = req.headers.authorization.substr(7);
    req.headers.jwt_token = jwtToken;
    // eslint-disable-next-line consistent-return
    await isRevoked(jwtToken).then((result) => {
      if (result.length > 0) {
        return response(res, 200, false, 'Session Expired. PLease Log In Again.');
      }
      else {
        try {
          req.auth = verifyToken(jwtToken);
          next();
        }
        catch (error) {
          return response(res, 200, false, 'Error At Verifying JWToken.', error);
        }
      }
    }).catch((error) => response(res, 200, false, 'Error At Validating Token.', error));
  }
  else {
    response(res, 200, false, 'Authorization Failed. Please Log In Again.');
  }
};

module.exports = { auth };
