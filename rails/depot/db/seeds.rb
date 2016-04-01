# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(title: 'Buch1', price: 10, description: 'Text1', image_url: 'frau_merkel.jpeg')
Product.create(title: 'Buch2', price: 20, description: 'Text2', image_url: 'dummy.jpg')
Product.create(title: 'Buch3', price: 30, description: 'Text3', image_url: 'frau_merkel.jpeg')
Product.create(title: 'Buch4', price: 40, description: 'Text4', image_url: 'dummy.jpg')