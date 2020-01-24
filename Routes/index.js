const express = require('express'),
  {
    AmenityController,
    AuthController,
    BalanceController,
    HomeController,
    HotelController,
    HotelRoomController,
    RoomTypeController,
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

// AmenityController
router
  .get('/amenity', AmenityController.getAmenities)
  .get('/amenity/:id', AmenityController.getAmenity)
  .post('/amenity', auth, AmenityController.createAmenity)
  .patch('/amenity/:id', auth, AmenityController.updateAmenity)
  .delete('/amenity/:id', auth, AmenityController.deleteAmenity);

router
  .get('/room/type', RoomTypeController.getRoomTypes)
  .get('/room/type/:id', RoomTypeController.getRoomTypeById)
  .post('/room/type', auth, RoomTypeController.createRoomType)
  .patch('/room/type/:id', auth, RoomTypeController.updateRoomType)
  .delete('/room/type/:id', auth, RoomTypeController.deleteRoomType);

router
  .get('/hotel/:id/room', HotelRoomController.getHotelRooms)
  .get('/hotel/:id/room/:roomId', HotelRoomController.getHotelRoomById)
  .post('/hotel/:id/room', HotelRoomController.createHotelRoom)
  .patch('/hotel/:id/room/:roomId', HotelRoomController.updateHotelRoom)
  .delete('/hotel/:id/room/:roomId', HotelRoomController.deleteHotelRoom);



module.exports = router;
