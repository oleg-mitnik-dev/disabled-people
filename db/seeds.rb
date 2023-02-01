10.times do
  Person.create(name: Faker::Name.first_name, surname: Faker::Name.last_name)
end
