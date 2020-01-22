const express = require('express'),
  { HomeController, UserController, AuthController } = require('../Controllers'),
  router = express.Router();

router.get('/', HomeController.index);

// Auth Routes
router
  .post('/register', AuthController.register)
  .post('/login', AuthController.login)
  .post('/password', AuthController.forgotPassword)
  .post('/password/reset', AuthController.resetPassword)
  .post('/otp/check', AuthController.checkOTP)
  .get('/logout', AuthController.logout);

// User Routes
router
  .post('/user', UserController.createUser)
  .get('/user', UserController.getUsers)
  .get('/user/:id', UserController.getUserById)
  .patch('/user/:id', UserController.updateUser)
  .delete('/user/:id', UserController.deleteUser);

module.exports = router;
