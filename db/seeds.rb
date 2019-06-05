require('pry-byebug')
require_relative("../models/student")
require_relative("../models/house")

house1 = House.new({
  "name" => "Gryffindor"
  })

house2 = House.new({
  "name" => "Slytherin"
  })

house3 = House.new({
  "name" => "Hufflepuff"
  })

house4 = House.new({
  "name" => "Ravenclaw"
  })

house1.save
house2.save
house3.save
house4.save

student1 = Student.new({
  "first_name" => "Harry",
  "second_name" => "Potter",
  "house" => house3.id,
  "age" => 18
  })

student2 = Student.new({
  "first_name" => "Hermione",
  "second_name" => "Granger",
  "house" => house3.id,
  "age" => 17
  })

student1.save
student2.save


binding.pry
nil
