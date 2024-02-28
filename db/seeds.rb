# db/seeds.rb
require 'faker'
# db/seeds.rb
require 'csv'

# Clear existing data
Product.destroy_all
Category.destroy_all

# Read data from CSV file and create records
csv_file = Rails.root.join('db', 'products.csv')
csv_data = File.read(csv_file)

CSV.parse(csv_data, headers: true) do |row|
  category = Category.find_or_create_by(name: row['category'])
  Product.create(
    title: row['title'],
    description: row['description'],
    price: row['price'],
    stock_quantity: row['stock_quantity'],
    category: category
  )
end

