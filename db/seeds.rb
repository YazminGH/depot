# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Product.delete_all

 Product.create!(title: 'Ariel',
   description:
   %{Funko Pop Disney: Ultimate Princess - Ariel.
   Las figuras Funko Pop traen a tus personajes favoritos del mundo de DISNEY de una manera estilizada e increíble, vienen en una caja con ventana lista para exhibirse.},
   image_url: 'ariel.jpg',
   price: 289.00)

 Product.create!(title: 'Sebastian',
   description:
   %{Se lanzaron los personajes de Sebastián y Flounder de La Sirenita, que hasta ahora solo contaba con versiones Funko Pop! de Ariel y Úrsula.},
   image_url: 'sebastian.jpg',
   price: 289.00)

 Product.create!(title: 'Aurora',
   description:
   %{Funko Pop Disney: Ultimate Princess - Aurora.
   Las figuras Funko Pop traen a tus personajes favoritos del mundo de DISNEY de una manera estilizada e increíble, vienen en una caja con ventana lista para exhibirse.},
   image_url: 'aurora.jpg',
   price: 289.00)
