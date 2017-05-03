class Animal
  attr_accessor(:name, :gender, :date_of_admittance, :type, :breed, :id)
  @@animals = []

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @gender = attributes.fetch(:gender)
    @date_of_admittance = attributes.fetch(:date_of_admittance)
    @type = attributes.fetch(:type)
    @breed = attributes.fetch(:breed)

  end

  define_singleton_method(:all) do
    @@animals
  end

  define_method(:save) do
    @@animals.push(self)
  end

end
