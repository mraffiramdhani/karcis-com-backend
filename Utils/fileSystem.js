/* eslint-disable prefer-template */
/* eslint-disable no-path-concat */
const formidable = require('formidable');
const path = require('path');
const fs = require('fs');

const uploadProfileImage = async (request) => {
  const data = {};
  const formParse = new formidable.IncomingForm();
  formParse.uploadDir = path.join(__dirname + './../Public/Images/Profile/');
  formParse.keepExtensions = true;
  formParse.maxFieldsSize = 2 * 1024 * 1024;
  return new Promise((resolve, reject) => {
    formParse.onPart = (part) => {
      if (!part.filename || part.filename.match(/\.(jpg|jpeg|png)$/i)) {
        // Let formidable handle the non file-pars and valid file types
        formParse.handlePart(part);
      }
      else {
        // eslint-disable-next-line no-underscore-dangle
        formParse._error('File type is not supported');
      }
    };
    formParse.parse(request)
      .on('field', (name, field) => {
        data[name] = field;
      })
      .on('file', (name, file) => {
        if (file !== null || file.name !== '') {
          const fileName = name + '_' + Date.now() + '_' + file.name;
          fs.rename(file.path, formParse.uploadDir + fileName, (error) => error);
          data[name] = fileName;
        }
      })
      .on('aborted', () => {
        console.error('Request aborted by the user');
      })
      .on('error', (err) => {
        reject(err);
      })
      .on('end', () => {
        resolve(data);
      });
  });
};

module.exports = {
  uploadProfileImage
};
