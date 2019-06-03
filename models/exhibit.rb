require_relative('../db/sql_runner')

class Exhibit

attr_accessor :id, :exhibit_name, :category, :artist_id

def initialize(options)
  @id = options['id'].to_i() if options['id']
  @exhibit_name = options['exhibit_name']
  @category = options['category']
  @artist_id = options['artist_id'].to_i()
end

def save()
  sql = 'INSERT INTO exhibits (exhibit_name, category, artist_id) VALUES ($1, $2,$3) RETURNING id'
  values = [@exhibit_name,@category,@artist_id]
  result = SqlRunner.run(sql,values)
  @id = result.first()['id'].to_i
end

def self.find_all()
  sql = "SELECT * FROM exhibits"
  result = SqlRunner.run( sql )
  return result.map{|details| Exhibit.new(details)}
end

def self.find_by_id(id)
  sql = 'SELECT * FROM exhibits WHERE id = $1'
  values = [id]
  result = SqlRunner.run(sql,values)
  return Exhibit.new(result[0])
end

def self.filter_by_artist(id)
  sql = 'SELECT * FROM exhibits WHERE artist_id = $1'
  values = [id]
  result = SqlRunner.run(sql,values)
  return result.map{|details| Exhibit.new(details)}
end

def delete()
    sql = 'DELETE FROM exhibits
    WHERE id = $1'
    values = [@id]
    SqlRunner.run( sql, values )
end

def self.delete_all()
  sql = 'DELETE FROM exhibits'
  SqlRunner.run(sql)
end

def self.delete_by_id(id)
  sql = 'DELETE FROM exhibits WHERE id = $1'
  values = [id]
  SqlRunner.run(sql,values)
end

def update()
  sql = 'UPDATE exhibits SET (exhibit_name, category, artist_id)
   = ($1, $2, $3) WHERE id = $4'
  values = [@exhibit_name, @category, @artist_id, @id]
  SqlRunner.run(sql,values)
end

end
