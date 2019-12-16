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

  def self.find (id, db)  #finds a pokemon from the database by their id number and returns a new Pokemon object
    sql = <<-SQL
     SELECT * FROM pokemon WHERE id = (?);
   SQL
    new_pokemon = self.new(pokemon[0], pokemon[1], pokemon[2])
    new_pokemon.id = pokemon[0][0]
    new_pokemon.name = pokemon[0][1]
    new_pokeman.type = pokemon[0][2]
    return new_pokemon
  end
end
