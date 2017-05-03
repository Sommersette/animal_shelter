require "animal_shelter"
require "rspec"
require "pry"

describe (Animal) do

  describe '#initialize' do
    it("initializes the system to add animals") do
      test_animal = Animal.new({:name => 'rufus', :gender => 'male', :date_of_admittance => '2017-06-04', :type => 'fish', :breed => 'carp'})
      expect(test_animal.name()).to(eq("rufus"))
    end
  end

  describe '#initialize' do
    it('lets you see gender') do
      test_animal = Animal.new({:name => 'rufus', :gender => 'male', :date_of_admittance => '2017-06-04', :type => 'fish', :breed => 'carp'})
      expect(test_animal.gender()).to(eq("male"))
    end
  end

  describe '#initialize' do
    it('lets you check the date of admittance') do
    test_animal = Animal.new({:name => 'rufus', :gender => 'male', :date_of_admittance => '2017-06-04', :type => 'fish', :breed => 'carp'})
    expect(test_animal.date_of_admittance()).to(eq("2017-06-04"))
    end
  end

  describe '#initialize' do
    it('lets you check type of the animal') do
    test_animal = Animal.new({:name => 'rufus', :gender => 'male', :date_of_admittance => '2017-06-04', :type => 'fish', :breed => 'carp'})
    expect(test_animal.type()).to(eq('fish'))
    end
  end

  describe '#initialize' do
    it('lets you check the breed') do
    test_animal = Animal.new({:name => 'rufus', :gender => 'male', :date_of_admittance => '2017-06-04', :type => 'fish', :breed => 'carp'})
    expect(test_animal.breed()).to(eq('carp'))
    end
  end

end
