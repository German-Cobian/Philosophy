# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding..."

User.create(name: 'Number1')

Category.create(name: 'Metaphysics', priority: 1)
Category.create(name: 'Gnoseology', priority: 2)
Category.create(name: 'Logic', priority: 3)
Category.create(name: 'Ethics', priority: 4)

Article.create(
  title: 'The world as it is and the world as perceived', 
  text: 'Kant shares his insights', 
  user_id: 1, 
  category_id: 1).image.attach(io: File.open('app/assets/images/Kant.jpg'), filename: 'Kant.jpg')

Article.create(
  title: 'The limits of human knowledge', 
  text: 'Hume limits it to sense perceptions', 
  user_id: 1, 
  category_id: 2).image.attach(io: File.open('app/assets/images/Hume.jpg'), filename: 'Hume.jpg')

  Article.create(
  title: 'The importance of the identity function',
  text: 'Bertrand Russell gives us the scoop',
  user_id: 1,
  category_id: 3).image.attach(io: File.open('app/assets/images/Math.jpg'), filename: 'Math.jpg')

  Article.create(
  title: 'What precisely is the good life', 
  text: 'The prime concern of Socrates', 
  user_id: 1, 
  category_id: 4).image.attach(io: File.open('app/assets/images/Socrates.jpg'), filename: 'Socrates.jpg')

puts "Seeding done."
