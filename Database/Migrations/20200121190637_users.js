
exports.up = (knex) => {
  return knex.schema.createTable('users', (table) => {
    table.increments('id');
    table.string('first_name');
    table.string('last_name');
    table.string('email');
    table.string('password');
    table.string('phone');
    table.dateTime('created_at').notNullable().defaultTo(knex.raw('CURRENT_TIMESTAMP'));
    table.dateTime('updated_at').notNullable().defaultTo(knex.raw('CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP'));

    table.unique('email');
  });
};

exports.down = (knex) => {
  return knex.schema.dropTable('users');
};
