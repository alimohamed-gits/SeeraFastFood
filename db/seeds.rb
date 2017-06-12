# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

carlos = User.create(first_name: 'Carlos', last_name: 'Bueno', address: 'H.drop', email: 'carlos@email.com', phone: '7778899', password: 'Carlos1', password_confirmation: 'Carlos1')
freida = User.create(first_name: 'Frieda', last_name: 'Bueno', address: 'M.rain', email: 'freida@email.com', phone: '7778899', password: 'Freida1', password_confirmation: 'Freida1')
julian = User.create(first_name: 'Julian', last_name: 'Bueno', address: 'G.dhonveli', email: 'julian@email.com',phone: '7778899', password: 'Julian1', password_confirmation: 'Julian1')


t1 = Category.create(image_file_name: "Seera_Chicken.jpg", name: "Rice")
Item.create(name: "Chicken Seera", image_file_name: "Seera_Chicken.jpg", price: 60, category_id: t1.id)

Item.create(name: "Fish Seera", image_file_name: "Seera_Chicken.jpg", price: 60, category_id: t1.id)

Item.create(name: "Beef Seera", image_file_name: "Seera_Chicken.jpg", price: 60, category_id: t1.id)

Item.create(name: "Nasigoreng", image_file_name: "Seera_Chicken.jpg", price: 60, category_id: t1.id)

t2 = Category.create(image_file_name: "Chicken_Fried_Noodles.jpg", name: "Noodles")
Item.create(name: "Chicken Noodles", image_file_name: "Chicken_Fried_Noodles.jpg", price: 60, category_id: t2.id)

Item.create(name: "Fish Noodles", image_file_name: "Chicken_Fried_Noodles.jpg", price: 60, category_id: t2.id)

Item.create(name: "Beef Noodles", image_file_name: "Chicken_Fried_Noodles.jpg", price: 60, category_id: t2.id)

Item.create(name: "Bamigoreng", image_file_name: "Chicken_Fried_Noodles.jpg", price: 60, category_id: t2.id)

t3 = Category.create(image_file_name: "not_pasta.jpg", name: "Pasta")
Item.create(name: "Chicken Spaghetti", image_file_name: "not_pasta.jpg", price: 65, category_id: t3.id)

Item.create(name: "Fish Spaghetti", image_file_name: "not_pasta.jpg", price: 65, category_id: t3.id)

Item.create(name: "Beef Spaghetti", image_file_name: "not_pasta.jpg", price: 65, category_id: t3.id)

Item.create(name: "Carbonara", image_file_name: "not_pasta.jpg", price: 65, category_id: t3.id)

t4 = Category.create(image_file_name: "not_salad.jpg", name: "Salad")
Item.create(name: "Chicken Salad", image_file_name: "not_salad.jpg", price: 60, category_id: t4.id)

Item.create(name: "Caesar Salad", image_file_name: "not_salad.jpg", price: 65, category_id: t4.id)

Item.create(name: "Fruit Salad", image_file_name: "not_salad.jpg", price: 65, category_id: t4.id)

Item.create(name: "Greek Salad", image_file_name: "not_salad.jpg", price: 65, category_id: t4.id)