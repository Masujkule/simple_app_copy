# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 
 Product.create(:name => "Pukas Sixty Niner", :description => "an intermediate board", :image_url => "https://asset1.surfcdn.com/pukas-surfboards-pukas-sixty-niner-surfboard-2015-model-blue.jpg?w=1200&h=1200&r=4&q=80&o=6mGdt$NHeAx6caXBCn2i8uaVT0Ij&V=KHCk") 
 Product.create(:name => "Pukas DFK", :description => "just a surfboard", :image_url => "https://asset1.surfcdn.com/pukas-surfboards-pukas-sixty-niner-surfboard-2015-model-blue.jpg?w=1200&h=1200&r=4&q=80&o=6mGdt$NHeAx6caXBCn2i8uaVT0Ij&V=KHCk")
 Product.create(:name => "Pukas The Game", :description => "not suitable for begginers", :image_url => "https://asset1.surfcdn.com/pukas-surfboards-pukas-sixty-niner-surfboard-2015-model-blue.jpg?w=1200&h=1200&r=4&q=80&o=6mGdt$NHeAx6caXBCn2i8uaVT0Ij&V=KHCk")
 Product.create(:name => "Pukas Blackwings", :description => "an egg shape board", :image_url => "https://asset1.surfcdn.com/pukas-surfboards-pukas-sixty-niner-surfboard-2015-model-blue.jpg?w=1200&h=1200&r=4&q=80&o=6mGdt$NHeAx6caXBCn2i8uaVT0Ij&V=KHCk")
 Product.create(:name => "Pukas Salt Shaker", :description => "a vector board", :image_url => "https://asset1.surfcdn.com/pukas-surfboards-pukas-sixty-niner-surfboard-2015-model-blue.jpg?w=1200&h=1200&r=4&q=80&o=6mGdt$NHeAx6caXBCn2i8uaVT0Ij&V=KHCk")
 Product.create(:name => "Pukas Resin Cake", :description => "egg shape board", :image_url => "https://asset1.surfcdn.com/pukas-surfboards-pukas-sixty-niner-surfboard-2015-model-blue.jpg?w=1200&h=1200&r=4&q=80&o=6mGdt$NHeAx6caXBCn2i8uaVT0Ij&V=KHCk")

 # Comment.create!(user: User.first, product: Product.first, rating: 1, body: "bad")
 # Comment.create!(user: User.first, product: Product.first, rating: 4, body: "nice")
 # Comment.create!(user: User.first, product: Product.first, rating: 2, body: "meh")

 User.create!(email: 'admin@example.com', password: 'polvosurf', admin:true)