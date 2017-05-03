require "animal_shelter"
require "person"
require "spec_helper"
require "rspec"
require "pry"


describe (Animal) do

  describe '#initialize' do
    it("initializes the system to add animals") do
      test_animal = Animal.new({:name => 'rufus', :gender => 'male', :date_of_admittance => '2017-06-04', :type => 'fish', :breed => 'carp',:id => nil})
      expect(test_animal.name()).to(eq("rufus"))
    end
  end

  describe '#initialize' do
    it('lets you see gender') do
      test_animal = Animal.new({:name => 'rufus', :gender => 'male', :date_of_admittance => '2017-06-04', :type => 'fish', :breed => 'carp', :id => nil})
      expect(test_animal.gender()).to(eq("male"))
    end
  end

  describe '#initialize' do
    it('lets you check the date of admittance') do
    test_animal = Animal.new({:name => 'rufus', :gender => 'male', :date_of_admittance => '2017-06-04', :type => 'fish', :breed => 'carp', :id => nil})
    expect(test_animal.date_of_admittance()).to(eq("2017-06-04"))
    end
  end

  describe '#initialize' do
    it('lets you check type of the animal') do
    test_animal = Animal.new({:name => 'rufus', :gender => 'male', :date_of_admittance => '2017-06-04', :type => 'fish', :breed => 'carp', :id => nil})
    expect(test_animal.type()).to(eq('fish'))
    end
  end

  describe '#initialize' do
    it('lets you check the breed') do
    test_animal = Animal.new({:name => 'rufus', :gender => 'male', :date_of_admittance => '2017-06-04', :type => 'fish', :breed => 'carp', :id => nil})
    expect(test_animal.breed()).to(eq('carp'))
    end
  end

    describe '.all' do
      it('empties the array initially') do
      expect(Animal.all()).to(eq([]))
    end
  end

    describe '#save' do
      it('it saves to the empty array') do
        test_animal = Animal.new({:name => 'rufus', :gender => 'male', :date_of_admittance => '2017-06-04', :type => 'fish', :breed => 'carp', :id => nil})
        test_animal.save()
        expect(Animal.all()).to(eq([test_animal]))
        test_animal2 = Animal.new({:name => 'murphy', :gender => 'female', :date_of_admittance => '2017-06-03', :type => 'bird', :breed => 'finch', :id => nil})
        test_animal2.save()
        expect(Animal.all()).to(eq([test_animal,test_animal2]))
      end
    end

    describe '#==' do
      it 'is the same animal if it has the same id' do
        test_animal = Animal.new({:name => 'rufus', :gender => 'male', :date_of_admittance => '2017-06-04', :type => 'fish', :breed => 'carp', :id => nil})
        test_animal2 = Animal.new({:name => 'rufus', :gender => 'male', :date_of_admittance => '2017-06-04', :type => 'fish', :breed => 'carp', :id => nil})
        expect(test_animal).to(eq(test_animal2))
      end
    end

    describe("#id") do
      it("lets you read the animal ID") do
        animal = Animal.new({:name => 'rufus', :gender => 'male', :date_of_admittance => '2017-06-04', :type => 'fish', :breed => 'carp', :id => nil})
        expect(animal.id()).to(eq(nil))
      end
    end


  end
