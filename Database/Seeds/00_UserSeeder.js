// eslint-disable-next-line import/no-extraneous-dependencies
const faker = require('faker');
const { range, hashString } = require('../../Utils');

const createRecord = (knex, id) => knex('users').insert({
  id,
  first_name: faker.name.firstName(),
  last_name: faker.name.lastName(),
  email: faker.internet.email(),
  password: hashString('password'),
  phone: '+62987676522',
  image: 'default.png'
});

exports.seed = (knex) => knex('users').del()
  .then(() => {
    // Inserts seed entries
    const records = [];
    const user = range(1 ,10);
    // Inserts seed entries
    // eslint-disable-next-line no-plusplus
    for (let i = 0; i < user.length; i++) {
      records.push(createRecord(knex, user[i]));
    }

    // eslint-disable-next-line no-console
    console.log('users seed');
    return Promise.all(records);
  });
