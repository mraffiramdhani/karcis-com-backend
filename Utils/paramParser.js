const paramParser = (sql, search = null, sort = null, limit = null, where = false) => {
  if (search !== null) {
    const arr = [];
    Object.keys(search).map((key) => arr.push(`${key} LIKE '%${search[key]}%'`));
    sql += ` ${where ? 'WHERE' : ''} ` + arr.join(' AND ');
  }
  if (sort !== null) {
    Object.keys(sort).map((key) => {
      sql += ` ORDER BY ${key} ${sort[key]}`;
    });
  }
  if (limit !== null) {
    sql += ` LIMIT ${limit}`;
  }
  return sql;
};

module.exports = paramParser;
