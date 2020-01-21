
exports.seed = (knex) => knex('cities').del()
  .then(() => knex('cities').insert([
    { name: 'Bandung', province_id: 9 },
    { name: 'Jakarta', province_id: 6 },
    { name: 'Solo', province_id: 10 },
    { name: 'Surabaya', province_id: 11 }
  ]));
