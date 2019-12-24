class Room
  attr_accessor :title, :date_created, :price, :url

  def self.create_from_hash(hash)
    new_from_hash(hash).save
  end

  def self.new_from_hash(hash)
    room = self.new
    room.title = hash[:title]
    room.date_created = hash[:date_created]
    room.price = hash[:price]
    room.url =  hash[:url]
    room
  end

  def save
    # I need a database!!!
    sql =
  end

  def self.create_table
    sql <<-SQL
      CREATE TABLE IF NOT EXISTS rooms (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        date_created DATETIME,
        price TEXT,
        url TEXT
      )
    SQL
    DB[:connection].execute(sql)
  end

end
