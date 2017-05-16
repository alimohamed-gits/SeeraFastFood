# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


t1 = Category.create(name: "Rice")
Item.create(name: "Chicken Seera", image: "https://igx.4sqi.net/img/general/width960/33088984_JYTQrl9MJQsIU4wX5PM5ipTp6mwcKDHJAk3swKgN-h4.jpg", description: "The best chicken ever.", price: 60, category_id: t1.id)

Item.create(name: "Fish Seera", image: "https://igx.4sqi.net/img/general/width960/33088984_JYTQrl9MJQsIU4wX5PM5ipTp6mwcKDHJAk3swKgN-h4.jpg", description: "The best Fish ever.", price: 60, category_id: t1.id)

Item.create(name: "Beef Seera", image: "https://igx.4sqi.net/img/general/width960/33088984_JYTQrl9MJQsIU4wX5PM5ipTp6mwcKDHJAk3swKgN-h4.jpg", description: "The best Beef ever.", price: 60, category_id: t1.id)

t2 = Category.create(name: "Noodles")
Item.create(name: "Chicken Noodles", image: "https://igx.4sqi.net/img/general/width960/33088984_JYTQrl9MJQsIU4wX5PM5ipTp6mwcKDHJAk3swKgN-h4.jpg", description: "The best Chicken Noodles ever.", price: 60, category_id: t2.id)

Item.create(name: "Fish Noodles", image: "https://igx.4sqi.net/img/general/width960/33088984_JYTQrl9MJQsIU4wX5PM5ipTp6mwcKDHJAk3swKgN-h4.jpg", description: "The best Fish Noodles ever.", price: 60, category_id: t2.id)

Item.create(name: "Beef Noodles", image: "https://igx.4sqi.net/img/general/width960/33088984_JYTQrl9MJQsIU4wX5PM5ipTp6mwcKDHJAk3swKgN-h4.jpg", description: "The best Beef Noodles ever.", price: 60, category_id: t2.id)

t3 = Category.create(name: "Pasta")
Item.create(name: "Chicken Spaghetti", image: "https://igx.4sqi.net/img/general/width960/33088984_JYTQrl9MJQsIU4wX5PM5ipTp6mwcKDHJAk3swKgN-h4.jpg", description: "The best Chicken Spaghetti ever.", price: 65, category_id: t3.id)

Item.create(name: "Fish Spaghetti", image: "https://igx.4sqi.net/img/general/width960/33088984_JYTQrl9MJQsIU4wX5PM5ipTp6mwcKDHJAk3swKgN-h4.jpg", description: "The best Fish Spaghetti ever.", price: 65, category_id: t3.id)

Item.create(name: "Beef Spaghetti", image: "https://igx.4sqi.net/img/general/width960/33088984_JYTQrl9MJQsIU4wX5PM5ipTp6mwcKDHJAk3swKgN-h4.jpg", description: "The best Beef Spaghetti ever.", price: 65, category_id: t3.id)

t4 = Category.create(name: "Salad")
Item.create(name: "Chicken Salad", image: "https://igx.4sqi.net/img/general/width960/33088984_JYTQrl9MJQsIU4wX5PM5ipTp6mwcKDHJAk3swKgN-h4.jpg", description: "The best Chicken Salad ever.", price: 60, category_id: t4.id)

Item.create(name: "Caesar Salad", image: "https://igx.4sqi.net/img/general/width960/33088984_JYTQrl9MJQsIU4wX5PM5ipTp6mwcKDHJAk3swKgN-h4.jpg", description: "The best Caesar Salad ever.", price: 65, category_id: t4.id)