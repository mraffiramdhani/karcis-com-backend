
exports.up = (knex) => knex.schema.createTable('hotel_rooms', (table) => {
  table.integer('room_type_id').unsigned();
  table.integer('hotel_id').unsigned();
  table.decimal('cost').nullable();
  table.integer('capacity').nullable();
  table.text('description');

  table.foreign('room_type_id').references('room_types.id').onDelete('cascade').onUpdate('cascade');
  table.foreign('hotel_id').references('hotels.id').onDelete('cascade').onUpdate('cascade');
});

exports.down = (knex) => knex.schema.dropTable('hotel_rooms');
