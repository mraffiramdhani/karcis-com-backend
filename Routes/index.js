const express = require('express'),
  {
    AmenityController,
    AuthController,
    BalanceController,
    HomeController,
    HotelController,
    HotelOrderController,
    HotelRoomController,
    RoomTypeController,
    UserController
  } = require('../Controllers'),
  router = express.Router();
const { auth } = require('../Services/middleware');

// HomeController
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

// RoomTypeController
router
  .get('/room/type', RoomTypeController.getRoomTypes)
  .get('/room/type/:id', RoomTypeController.getRoomTypeById)
  .post('/room/type', auth, RoomTypeController.createRoomType)
  .patch('/room/type/:id', auth, RoomTypeController.updateRoomType)
  .delete('/room/type/:id', auth, RoomTypeController.deleteRoomType);

// HotelRoomController
router
  .get('/hotel/:id/room', HotelRoomController.getHotelRooms)
  .get('/hotel/:id/room/:roomId', HotelRoomController.getHotelRoomById)
  .post('/hotel/:id/room', auth, HotelRoomController.createHotelRoom)
  .patch('/hotel/:id/room/:roomId', auth, HotelRoomController.updateHotelRoom)
  .delete('/hotel/:id/room/:roomId', auth, HotelRoomController.deleteHotelRoom);

// HotelOrderController
router
  .get('/order/hotel', auth, HotelOrderController.getOrders)
  .get('/order/hotel/history', auth, HotelOrderController.getOrderHistories)
  .get('/order/hotel/:orderId', auth, HotelOrderController.getOrder)
  .post('/order/hotel/', auth, HotelOrderController.createOrder)
  .patch('/order/hotel/:orderId/cancel', auth, HotelOrderController.cancelOrder)
  .patch('/order/hotel/:orderId/complete', auth, HotelOrderController.completeOrder)
  .delete('/order/hotel/:orderId', auth, HotelOrderController.deleteOrder);

module.exports = router;
