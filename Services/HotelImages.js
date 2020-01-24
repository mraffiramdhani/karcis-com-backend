/* eslint-disable camelcase */
const conn = require('./db');

const getImages = (hotelId) => {
  const sql = 'SELECT * FROM hotel_images WHERE hotel_id = ?';
  return new Promise((resolve, reject) => {
    conn.query(sql, [hotelId], (err, res) => {
      if (err) reject(err);
      resolve(res);
    });
  });
};

const createImages = (hotelId, data) => {
  var imgData = [];
  for(let i = 0; i < data.filename.length; i++){
    imgData.push(`(${hotelId}, '${data.filename[i]}')`);
  }
  const sql = `INSERT INTO hotel_images(hotel_id, filename) VALUES ${imgData.join(',')}`;
  return new Promise((resolve, reject) => {
    conn.query(sql, [], (err, res) => {
      if (err) reject(err);
      console.log(res);
      resolve(res);
    });
  });
};

const updateImage = (imageId, hotelId, data) => {
  const { filename } = data;
  const sql = 'UPDATE hotel_images SET filename = ? WHERE id = ? AND hotel_id = ?';
  return new Promise((resolve, reject) => {
    conn.query(sql, [filename, imageId, hotelId], (err, res) => {
      if (err) reject(err);
      resolve(res);
    });
  });
}

const deleteImage = (imageId, hotelId) => {
  const sql = 'DELETE FROM hotel_images WHERE id = ? AND hotel_id = ?';
  return new Promise((resolve, reject) => {
    conn.query(sql, [imageId, hotelId], (err, res) => {
      if (err) reject(err);
      resolve(res);
    });
  });
}

module.exports = {
  getImages,
  createImages,
  updateImage,
  deleteImage
};
