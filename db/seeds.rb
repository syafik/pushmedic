[User, Product, ProductType].map(&:delete_all)

User.create!(
    email:    "admin@pushmedic.com",
    password: "password",
    role:     "admin"
)

products = [
    "accounting", "charts", "pharmacy", "report", "services"
]

products.each do |product|
  ProductType.create!(name: product)

  puts "Creating products.. #{product}"
  Product.create!(
      title:        product,
      description: "Easy to use, burstable power when you need it. #{product}",
      product_type_id: ProductType.all.sample.id,
      image:       open(Rails.root.join("app/assets/images/products/#{product}.png"))
  )
end