const {
  response, signToken, verifyToken
} = require('../Utils');
const { User, Token } = require('../Services');

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
  // eslint-disable-next-line no-else-return
  else {
    await User.createUser(data).then(async (result) => {
      const id = result.insertId;
      const token = signToken({
        id, first_name, last_name, email
      });
      await Token.putToken({ token }).then(() => response(res, 200, true, 'Register Success.', {
        token, first_name, last_name, email
      })).catch((error) => response(res, 200, false, 'Error.', error));
    });
  }
};

const 

module.exports = {
  register
};
