require_relative('../db/sql_runner')

class Artist

attr_accessor :id, :first_name, :last_name

def initialize(options)
  @id = options['id'].to_i() if options['id']
  @first_name = options['first_name']
  @last_name  = options['last_name']

end

def save()
  sql = 'INSERT INTO artists (first_name, last_name) VALUES ($1,$2) RETURNING id'
  values = [@first_name,@last_name]
  result = SqlRunner.run(sql,values)
  @id = result.first()['id'].to_i
end

def delete()
    sql = 'DELETE FROM artists
    WHERE id = $1'
    values = [@id]
    SqlRunner.run( sql, values )
end

def self.delete_all()
  sql = 'DELETE FROM artists'
  SqlRunner.run(sql)
end

def self.delete_by_id(id)
  sql = 'DELETE FROM artists WHERE id = $1'
  values = [id]
  SqlRunner.run(sql, values)
end

def self.find_all()
  sql = 'SELECT * FROM artists'
  result = SqlRunner.run(sql)
  return result.map{|details| Artist.new(details)}
end

def self.find_by_id(id)
  sql = 'SELECT * FROM artists WHERE id = $1'
  values = [id]
  result = SqlRunner.run(sql,values)
  return Artist.new(result[0])
end

end
