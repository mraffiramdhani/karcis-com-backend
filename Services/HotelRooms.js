/* eslint-disable camelcase */
const conn = require('./db');
const { paramParser } = require('../Utils');

const getRoomsCount = (hotelId, search, sort) => {
  const sql = 'SELECT COUNT(*) as roomCount FROM hotel_rooms WHERE hotel_id = ?';
  const sqlParsed = paramParser(sql, search, sort, null, false);

  return new Promise((resolve, reject) => {
    conn.query(sqlParsed, [hotelId], (err, res) => {
      if (err) reject(err);
      resolve(res);
    });
  });
};

const getRooms = (hotelId, search, sort, limit) => {
  const sql = 'SELECT * FROM hotel_rooms WHERE hotel_id = ?';
  const sqlParsed = paramParser(sql, search, sort, limit, false);

  return new Promise((resolve, reject) => {
    conn.query(sqlParsed, [hotelId], (err, res) => {
      if (err) reject(err);
      resolve(res);
    });
  });
};

const getCheapestRooms = (hotelId) => {
  const sql = 'SELECT * FROM hotel_rooms WHERE hotel_id = ? ORDER BY cost ASC LIMIT 1';
  return new Promise((resolve, reject) => {
    conn.query(sql, [hotelId], (err, res) => {
      if(err) reject(err);
      resolve(res);
    });
  });
};

const getRoom = (roomId, hotelId) => {
  const sql = 'SELECT * FROM hotel_rooms WHERE id = ? AND hotel_id = ?';
  return new Promise((resolve, reject) => {
    conn.query(sql, [roomId, hotelId], (err, res) => {
      if (err) reject(err);
      resolve(res);
    });
  });
}

const createRoom = (hotelId, data) => {
  const { id, cost, capacity, description } = data;
  const sql = 'INSERT INTO hotel_rooms(room_type_id, hotel_id, cost, capacity, description) VALUES(?,?,?,?,?)';
  return new Promise((resolve, reject) => {
    conn.query(sql, [id, hotelId, cost, capacity, description], (err, res) => {
      if (err) reject(err);
      resolve(res);
    });
  });
};

const updateRoom = (hotelId, data) => {
  const { id, cost, capacity, description } = data;
  const sql = 'UPDATE hotel_rooms SET cost = ?, capacity = ?, description = ? WHERE hotel_id = ? AND room_type_id = ?';
  return new Promise((resolve, reject) => {
    conn.query(sql, [cost, capacity, description, hotelId, id], (err, res) => {
      if (err) reject(err);
      resolve(res);
    });
  });
};

const deleteRoom = (roomId, hotelId) => {
  const sql = 'DELETE FROM hotel_rooms WHERE id = ? AND hotel_id = ?';
  return new Promise((resolve, reject) => {
    conn.query(sql, [roomId, hotelId], (err, res) => {
      if (err) reject(err);
      resolve(res);
    });
  });
};

module.exports = {
  getRoomsCount,
  getRooms,
  getCheapestRooms,
  getRoom,
  createRoom,
  updateRoom,
  deleteRoom
};
