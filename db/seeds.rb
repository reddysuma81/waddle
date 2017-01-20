# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create [{:name => 'Totally Worth It'},
                 {:name => 'Family Fun'},
                 {:name => 'Foodie Drinkie'},
                 {:name => 'Sexcapades'},
                 {:name => 'Fuck Yeah, New New York'},
                 {:name => 'Big Ups'},
                 {:name => 'Shits N Giggles'},
                 {:name => 'Coping With Trump'}]
