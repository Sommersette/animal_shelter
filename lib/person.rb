class Person
  attr_accessor(:name, :phone, :animal_type_preference,:breed_type_preference, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @phone = attributes.fetch(:phone)
    @animal_type_preference = attributes.fetch(:animal_type_preference)
    @breed_type_preference = attributes.fetch(:breed_type_preference)
    @id = attributes.fetch(:id)
  end

  define_method(:save) do
    result = DB.exec("INSERT INTO add_person (name, phone, animal_type_preference, breed_type_preference) VALUES ('#{name}','#{phone}','#{animal_type_preference}','#{breed_type_preference}') RETURNING id;")
    @id = result.first.fetch("id").to_i
  end

  define_singleton_method (:all) do
    returned_persons = DB.exec("SELECT * FROM add_person;")
    persons = []
    returned_persons.each do |person|
      name = person.fetch("name")
      phone = person.fetch("phone")
      animal_type_preference = person.fetch("animal_type_preference")
      breed_type_preference = person.fetch("breed_type_preference")
      id = person.fetch("id").to_i
      persons.push(Person.new({:name => name, :phone => phone, :animal_type_preference => animal_type_preference, :breed_type_preference => breed_type_preference, :id => id }))
    end
  persons
  end

  define_method(:==) do |another_person|
    self.name().==(another_person.name()).&(self.phone().==(another_person.phone))&(self.animal_type_preference().==(another_person.animal_type_preference())).&(self.breed_type_preference().==(another_person.breed_type_preference()))
  end

end
