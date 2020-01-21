const express = require('express'),
  { HomeController, AuthController } = require('../Controllers'),
  router = express.Router();

router.get('/', HomeController.index)
  .post('/register', AuthController.register);

module.exports = router;
