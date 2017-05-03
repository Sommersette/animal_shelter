require "animal_shelter"
require "person"
require "rspec"
require "pry"

DB = PG.connect({:dbname => "animal_shelter"})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM add_animal *;")
    DB.exec("DELETE FROM add_person *;")
  end
end
