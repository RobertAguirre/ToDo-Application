# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
include Faker

User.destroy_all
TodoList.destroy_all
TodoItem.destroy_all

# Create Users
10.times do
  User.create!(
    name:  Name.name,
    email: Internet.email,
    password: Internet.password
  )
end

users = User.all

# Create ToDo Lists
10.times do
  TodoList.create!(
    user: users.sample,
    title: Lorem.words,
    description: Lorem.words,
  )
end

todolists = TodoList.all


#Create ToDo Items
40.times do
  TodoItem.create!(
    todo_list: todolists.sample,
    content: Lorem.words,
  )
end

todoitems = TodoItem.all


puts "Seed finished"
puts "#{User.count} users created"
puts "#{TodoList.count} todo lists created"
puts "#{TodoItem.count} todo lists created"
