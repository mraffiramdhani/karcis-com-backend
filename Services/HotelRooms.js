/* eslint-disable camelcase */
const conn = require('./db');

const getRooms = (hotelId) => {
  const sql = 'SELECT * FROM hotel_rooms WHERE hotel_id = ?';
  return new Promise((resolve, reject) => {
    conn.query(sql, [hotelId], (err, res) => {
      if (err) reject(err);
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
}

const deleteRoom = (roomId, hotelId) => {
  const sql = 'DELETE FROM hotel_rooms WHERE id = ? AND hotel_id = ?';
  return new Promise((resolve, reject) => {
    conn.query(sql, [roomId, hotelId], (err, res) => {
      if (err) reject(err);
      resolve(res);
    });
  });
}

module.exports = {
  getRooms,
  getRoom,
  createRoom,
  updateRoom,
  deleteRoom
};