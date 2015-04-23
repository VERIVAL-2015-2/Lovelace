# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Generating 10 fake products for future use

10.times do |i|
	product_code = Faker::Number.number(4)
	product_name = Faker::Commerce.product_name 
	product_price = Faker::Commerce.price #=> "44.6"
	product_stock = Faker::Number.number(4)
	product_description = Faker::Lorem.sentence
	product_details = Faker::Lorem.paragraph
	
	puts "Cadastrando Produto: #{product_name}"

	Product.create(code: product_code, name: product_name, 
				price: product_price, stock: product_stock,
				description: product_description, details: product_details)

end