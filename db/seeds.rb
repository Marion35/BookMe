# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "destroy Books"
Book.destroy_all
User.destroy_all

puts "user"

user3 = User.create!(email: "marionthorin@email.com", password: "123456")
user4 = User.create!(email: "guillaumegans@email.com", password: "123456")
user5 = User.create!(email: "marionthorin@gmail.com", password: "123456")
user6 = User.create!(email: "guillaumegans@gmail.com", password: "123456")
user7 = User.create!(email: "marion@email.com", password: "123456")
user8 = User.create!(email: "guillaume@email.com", password: "123456")




puts "books"

book1 = Book.create!(title: "La fille du train", author: "Paula Hawkins", description: "Roman d'enquête", user_id: user3.id)
book2 = Book.create!(title: "Astérix le Gaulois", author: "R. Goscinny", description: "BD française très connue, de style comédie", user_id: user3.id)
book3 = Book.create!(title: "Le recueil de Poèmes", author: "Laetitia Girod", description: "Livre de poèmes", user_id: user3.id)
book4 = Book.create!(title: "Le choeur des femmes", author: "Martin Winckler", description: "Roman parlant de médecine, on suit une jeune fille en stage", user_id: user3.id)
book5 = Book.create!(title: "Vertiges", author: "Robin Cook", description: "Roman de médecine, des personnes ont des vertiges mais on ne sait pas pourquoi", user_id: user3.id)
