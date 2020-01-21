/* eslint-disable no-else-return */
// eslint-disable-next-line camelcase
const { forgot_password } = require('../Utils/email');
const {
  response, signToken, compareHashedString, sendEmail, generateOTP
} = require('../Utils');
const { User, Token, OTP } = require('../Services');

// eslint-disable-next-line consistent-return
const register = async (req, res) => {
  const {
    // eslint-disable-next-line camelcase
    first_name, last_name, email, password, phone
  } = req.body;
  const data = {
    first_name, last_name, email, password, phone
  };
  if (!data.first_name || !data.last_name || !data.email || !data.password) {
    return response(res, 200, false, 'Please Provide a Valid Data.');
  }
  else {
    await User.createUser(data).then(async (result) => {
      const id = result.insertId;
      const token = signToken({
        id, first_name, last_name, email
      });
      await Token.putToken({ token }).then(() => response(res, 200, true, 'Register Success.', {
        token, first_name, last_name, email
      })).catch((error) => response(res, 200, false, 'Error At Storing Token', error));
    }).catch((error) => response(res, 200, false, 'Error At Registering User.', error));
  }
};

// eslint-disable-next-line consistent-return
const login = async (req, res) => {
  const { email, password } = req.body;

  if (!email || !password) {
    return response(res, 200, false, 'Please Provide a Valid Data.');
  }
  else {
    // eslint-disable-next-line consistent-return
    await User.getUserByEmail(email).then(async (result) => {
      if (result.length > 0) {
        if (compareHashedString(password, result[0].password)) {
          // eslint-disable-next-line camelcase
          const { id, first_name, last_name } = result[0];
          const token = signToken({
            id, first_name, last_name, email
          });
          await Token.putToken(token).then(() => response(res, 200, true, 'Login Success.', {
            token, first_name, last_name, email
          })).catch((error) => response(res, 200, false, 'Error At Putting Token Into Database', error));
        }
      }
      else {
        return response(res, 200, false, 'User not Found.');
      }
    }).catch((error) => response(res, 200, false, 'Error At Finding Valid User Email.', error));
  }
};

const logout = async (req, res) => {
  Token.revokeToken(req.headers.jwt_token).then(() => response(res, 200, true, 'Logout Success.')).catch((error) => response(res, 200, false, 'Error At Logging Out User.', error));
};

const forgotPassword = async (req, res) => {
  const { email } = req.body;
  // eslint-disable-next-line consistent-return
  await User.getUserByEmail(email).then(async (result) => {
    if (result.length > 0) {
      const otpCode = generateOTP();
      await OTP.putCode(otpCode, 10).then(async () => {
        const payload = {
          to: email,
          subject: 'Reset Password Request Email.',
          html: forgot_password(otpCode)
        };
        await sendEmail(payload).then((_result) => response(res, 200, true, 'Forgot Password Request Success.', _result)).catch((error) => response(res, 200, false, 'Error At Sending Forgot Password Email.', error));
      }).catch((error) => response(res, 200, false, 'Error At Storing OTP Codes', error));
    }
    else {
      return response(res, 200, false, 'Email Not Found.');
    }
  }).catch((error) => response(res, 200, false, 'Error At Validating User Email.', error));
};

const checkOTP = async (req, res) => {
  const { code } = req.body;
  await OTP.checkCode(code).then((result) => {
    if (result.length > 0) {
      return response(res, 200, true, 'OTP Check Success.');
    }
    else {
      return response(res, 200, false, 'OTP Code Expired. Please Try Again.');
    }
  }).catch((error) => response(res, 200, false, 'Error At OTP Checking', error));
};

module.exports = {
  register,
  login,
  logout,
  forgotPassword,
  checkOTP
};
