const express = require('express'),
  {
    AuthController,
    BalanceController,
    HomeController,
    HotelController,
    UserController
  } = require('../Controllers'),
  router = express.Router();
const { auth } = require('../Services/middleware');

router.get('/', HomeController.index);

// Auth Routes
router
  .post('/register', AuthController.register)
  .post('/login', AuthController.login)
  .post('/password', AuthController.forgotPassword)
  .post('/password/reset', AuthController.resetPassword)
  .post('/otp/check', AuthController.checkOTP)
  .get('/logout', auth, AuthController.logout);

// User Routes
router
  .get('/user', UserController.getUsers)
  .get('/user/:id', UserController.getUserById)
  .post('/user', auth, UserController.createUser)
  .patch('/user/:id', auth, UserController.updateUser)
  .delete('/user/:id', auth, UserController.deleteUser);

// Hotel Routes
router
  .get('/hotel', HotelController.getHotels)
  .get('/hotel/:id', HotelController.getHotelById)
  .post('/hotel', auth, HotelController.createHotel)
  .patch('/hotel/:id', auth, HotelController.updateHotel)
  .delete('/hotel/:id', auth, HotelController.deleteHotel);

// Balance Routes
router
  .get('/balance', auth, BalanceController.getBalanceByUser)
  .get('/balance/history', auth, BalanceController.getBalanceHistories)
  .patch('/top-up', auth, BalanceController.updateBalance);

module.exports = router;
