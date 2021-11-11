# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
male_person = Person.create!({
  first_name: 'Joe', last_name: 'Doe', sex: :male,
})
female_person = Person.create!({
  first_name: 'Jenna', last_name: 'Doe', sex: :female,
})

father = Person.create!({
  first_name: 'John', last_name: 'Doe', sex: :male,
})
mother = Person.create!({
  first_name: 'Johana', last_name: 'Doe', sex: :female,
})

father.add_children(male_person, female_person)
mother.add_children(male_person, female_person)