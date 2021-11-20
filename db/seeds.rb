# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.create(
    title: "Learn GraphQL", 
    description: "", 
    finished: false, 
    assigned: "2021-12-01"
)

Task.create(
    title: "Start project", 
    description: "", 
    finished: true, 
    assigned: "2021-12-01"
)

Context.create(
    name: "Home",
    generated: false
)

Context.create(
    name: "Work",
    generated: false
)

TaskContext.create(
    task_id: 1,
    context_id: 1
)

TaskContext.create(
    task_id: 1,
    context_id: 2
)