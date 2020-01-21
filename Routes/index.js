const express = require('express'),
  { HomeController, AuthController } = require('../Controllers'),
  router = express.Router();

router.get('/', HomeController.index);

router
  .post('/register', AuthController.register)
  .post('/login', AuthController.login)
  .post('/password', AuthController.forgotPassword)
  .get('/logout', AuthController.logout);

module.exports = router;
