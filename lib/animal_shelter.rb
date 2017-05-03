class Animal
  attr_accessor(:name, :gender, :date_of_admittance, :type, :breed)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @gender = attributes.fetch(:gender)
    @date_of_admittance = attributes.fetch(:date_of_admittance)
    @type = attributes.fetch(:type)
    @breed = attributes.fetch(:breed)
  end
end
