# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.destroy_all
Actor.destroy_all
Role.destroy_all
matrix = Movie.create(title:"The Matrix.", description:"Best movie ever if you ask Dean",length:120)
fightclub = Movie.create(title:"Fight Club.", description:"Marija likes this movie",length:180)
frozen = Movie.create(title:"Frozen", description:"Ice Princess with a helpless sister.",length:90)

bradpitt = Actor.create(name:"Brad Pitt",  bio:"I am a good looking fella.",age:57)
keanureeves = Actor.create(name:"Keanu Reeves",  bio:"I love my dog..",age:56)


role1 = Role.create(movie_id: matrix.id , actor_id: keanureeves.id)
role2 = Role.create(movie_id: fightclub.id, actor_id: bradpitt.id)
role3 = Role.create(movie_id: frozen.id, actor_id: bradpitt.id)



