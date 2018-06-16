Category.destroy_all
puts "Cleaning DB"
categories = ["inspiration", "colors", "icons", "fonts", "images", "articles"]

categories.each do |name|
  Category.create!(name: name)
  puts "Created category: #{name}"
end
