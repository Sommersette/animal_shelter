class Animal
  attr_accessor(:name, :gender, :date_of_admittance, :type, :breed, :id)


  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @gender = attributes.fetch(:gender)
    @date_of_admittance = attributes.fetch(:date_of_admittance)
    @type = attributes.fetch(:type)
    @breed = attributes.fetch(:breed)
    @id = attributes.fetch(:id)

  end

  define_method(:save) do
    result = DB.exec("INSERT INTO add_animal (name,gender,date_of_admittance,type,breed) VALUES('#{name}','#{gender}','#{date_of_admittance}','#{type}','#{breed}') RETURNING id;")
    @id = result.first.fetch("id").to_i
  end

  define_singleton_method (:all) do
    returned_animals = DB.exec("SELECT * FROM add_animal;")
    animals = []
    returned_animals.each do |animal|
      name = animal.fetch("name")
      gender = animal.fetch("gender")
      date = animal.fetch("date_of_admittance")
      type = animal.fetch("type")
      breed = animal.fetch("breed")
      id = animal.fetch("id").to_i
      animals.push(Animal.new({:name => name, :gender => gender, :date_of_admittance => date, :type => type, :breed => breed, :id => id}))
    end
    animals
  end

  define_method(:==) do |another_animal|
    self.name().==(another_animal.name()).&(self.gender().==(another_animal.gender))&(self.date_of_admittance().==(another_animal.date_of_admittance())).&(self.type().==(another_animal.type())).&(self.breed().==(another_animal.breed()))
  end
end
