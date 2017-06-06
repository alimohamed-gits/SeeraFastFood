# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

carlos = User.create(first_name: 'Carlos', last_name: 'Bueno', address: 'H.drop', email: 'carlos@email.com', phone: '7778899', password: 'Carlos1', password_confirmation: 'Carlos1', role: 'admin')
freida = User.create(first_name: 'Frieda', last_name: 'Bueno', address: 'M.rain', email: 'freida@email.com', phone: '7778899', password: 'Freida1', password_confirmation: 'Freida1')
julian = User.create(first_name: 'Julian', last_name: 'Bueno', address: 'G.dhonveli', email: 'julian@email.com',phone: '7778899', password: 'Julian1', password_confirmation: 'Julian1', role: 'staff')


t1 = Category.create(image: "Seera_Chicken.jpg", name: "Rice")
Item.create(name: "Chicken Seera", image: "Seera_Chicken.jpg", description: "The best chicken ever.", price: 60, category_id: t1.id)

Item.create(name: "Fish Seera", image: "Seera_Chicken.jpg", description: "The best Fish ever.", price: 60, category_id: t1.id)

Item.create(name: "Beef Seera", image: "Seera_Chicken.jpg", description: "The best Beef ever.", price: 60, category_id: t1.id)

Item.create(name: "Nasigoreng", image: "Seera_Chicken.jpg", description: "The best Beef ever.", price: 60, category_id: t1.id)

t2 = Category.create(image: "Chicken_Fried_Noodles.jpg", name: "Noodles")
Item.create(name: "Chicken Noodles", image: "Chicken_Fried_Noodles.jpg", description: "The best Chicken Noodles ever.", price: 60, category_id: t2.id)

Item.create(name: "Fish Noodles", image: "Chicken_Fried_Noodles.jpg", description: "The best Fish Noodles ever.", price: 60, category_id: t2.id)

Item.create(name: "Beef Noodles", image: "Chicken_Fried_Noodles.jpg", description: "The best Beef Noodles ever.", price: 60, category_id: t2.id)

Item.create(name: "Bamigoreng", image: "Chicken_Fried_Noodles.jpg", description: "The best Beef Noodles ever.", price: 60, category_id: t2.id)

t3 = Category.create(image: "not_pasta.jpg", name: "Pasta")
Item.create(name: "Chicken Spaghetti", image: "not_pasta.jpg", description: "The best Chicken Spaghetti ever.", price: 65, category_id: t3.id)

Item.create(name: "Fish Spaghetti", image: "not_pasta.jpg", description: "The best Fish Spaghetti ever.", price: 65, category_id: t3.id)

Item.create(name: "Beef Spaghetti", image: "not_pasta.jpg", description: "The best Beef Spaghetti ever.", price: 65, category_id: t3.id)

Item.create(name: "Carbonara", image: "not_pasta.jpg", description: "The best Beef Spaghetti ever.", price: 65, category_id: t3.id)

t4 = Category.create(image: "not_salad.jpg", name: "Salad")
Item.create(name: "Chicken Salad", image: "not_salad.jpg", description: "The best Chicken Salad ever.", price: 60, category_id: t4.id)

Item.create(name: "Caesar Salad", image: "not_salad.jpg", description: "The best Caesar Salad ever.", price: 65, category_id: t4.id)

Item.create(name: "Fruit Salad", image: "not_salad.jpg", description: "The best Caesar Salad ever.", price: 65, category_id: t4.id)

Item.create(name: "Greek Salad", image: "not_salad.jpg", description: "The best Caesar Salad ever.", price: 65, category_id: t4.id)