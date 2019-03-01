# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.delete_all
SalesItem.delete_all

categories = []
[["Shoes","Things for your feet"],["Shirts","On row 5"]].each do |item|
  categories.append Category.create(name: item.first,notes:item.second)
end

%w{Item_1 Item_2 Item_3 Item_4}.each do |item|
  SalesItem.create!(name: item, price: rand(100),category: categories[rand(categories.length)])
end

