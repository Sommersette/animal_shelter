require "animal_shelter"
require "person"
require "rspec"
require "pry"

describe (Person) do

  describe '#initialize' do
    it("initializes the system to add person") do
      test_person = Person.new({:name => 'Felix', :phone => 1234, :animal_type_preference => 'ferret', :breed_type_preference => 'sable', :id => nil})
      expect(test_person.name()).to(eq("Felix"))
    end
  end

  describe 'initialize' do
    it("initialize the phone number for person") do
      test_person = Person.new({:name => 'Felix', :phone => 1234, :animal_type_preference => 'ferret', :breed_type_preference => 'sable', :id => nil})
      expect(test_person.phone()).to(eq(1234))
    end
  end

  describe 'initialize' do
    it("initialize the species of the animal for person") do
      test_person = Person.new({:name => 'Felix', :phone => 1234, :animal_type_preference => 'ferret', :breed_type_preference => 'sable',:id => nil})
      expect(test_person.animal_type_preference()).to(eq('ferret'))
    end
  end

  describe 'initialize' do
    it("initialize the breed of the animal for person") do
      test_person = Person.new({:name => 'Felix', :phone => 1234, :animal_type_preference => 'ferret', :breed_type_preference => 'sable',:id => nil})
      expect(test_person.breed_type_preference()).to(eq('sable'))
    end
  end

  describe '#save' do
    it('it saves to the empty array') do
      test_person = Person.new({:name => 'Felix', :phone => '1234', :animal_type_preference => 'ferret', :breed_type_preference => 'sable',:id => nil})
      test_person.save()
      expect(Person.all()).to(eq([test_person]))
      test_person2 = Person.new({:name => 'Yancy', :phone => '5678', :animal_type_preference => 'birds', :breed_type_preference => 'tucan',:id => nil})
      test_person2.save()
      expect(Person.all()).to(eq([test_person,test_person2]))
    end
  end

  describe '#==' do
    it 'is the same animal if it has the same id' do
      test_person = Person.new({:name => 'Felix', :phone => '1234', :animal_type_preference => 'ferret', :breed_type_preference => 'sable',:id => nil})
      test_person2 = Person.new({:name => 'Felix', :phone => '1234', :animal_type_preference => 'ferret', :breed_type_preference => 'sable',:id => nil})
      expect(test_person).to(eq(test_person2))
    end
  end

  describe("#id") do
    it("lets you read the animal ID") do
      person = Person.new({:name => 'Felix', :phone => 1234, :animal_type_preference => 'ferret', :breed_type_preference => 'sable',:id => nil})
      expect(person.id()).to(eq(nil))
    end
  end

end
