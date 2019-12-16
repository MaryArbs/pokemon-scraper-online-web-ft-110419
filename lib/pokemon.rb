class Pokemon
  attr_accessor :id, :name, :type, :db

  @@all = []

  def initialize (id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    sql = <<-SQL
      INSERT INTO pokemon (name, type) VALUES (?, ?);
     SQL
      db.execute(sql, [name, type])
  end

  def self.find (id, name, type, db)  #finds a pokemon from the database by their id number and returns a new Pokemon object
    pokemon = db.execute("SELECT * FROM pokemon WHERE id=?", [num])
    pokemon = self.new(pokemon)
    pokemon.id = row[0][0]
    pokemon.name = row[0][1]
    pokeman.type = [0][2]
    pokemon
  end
end

