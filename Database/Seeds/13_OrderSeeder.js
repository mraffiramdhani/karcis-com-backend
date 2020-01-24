// eslint-disable-next-line import/no-extraneous-dependencies
const faker = require('faker');
const { range, randomNumber } = require('../../Utils');

const addDays = (date, days) => {
  const copy = new Date(Number(date))
  copy.setDate(date.getDate() + days)
  return copy
}

const checkOutDate = new Date();
// eslint-disable-next-line camelcase
const createRecord = (knex, user_id, hotel_id, room_type_id) => knex('orders').insert({
  user_id,
  hotel_id,
  room_type_id,
  check_in: new Date(),
  check_out: new Date(addDays(checkOutDate, 1)),
  cost: faker.random.number(2000000),

});

exports.seed = (knex) => knex('orders').del()
  .then(() => {
    // Inserts seed entries
    const records = [];
    const hotel = randomNumber(1);
    const room = randomNumber(1);
    const user = range(1, 5);
    // Inserts seed entries
    // eslint-disable-next-line no-plusplus
    for (let i = 0; i < user.length; i++) {
      records.push(createRecord(knex, user[i], (hotel === 0 ? 1 : hotel), (room === 0 && room > 5 ? 1 : room)));
    }

    // eslint-disable-next-line no-console
    console.log('orders seed');
    return Promise.all(records);
  });
