namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'

    [Customer, Product, Onepackage, Sale].each(&:delete_all)

      Customer.populate 100 do |person|
      person.name = Faker::Name.name
      person.company = Faker::Company.name

      Product.populate 1..2 do |product|
      product.name    = Faker::Commerce.product_name
      product.description = Faker::Hipster.paragraphs(2)
      product.baseCost = Faker::Number.between(100, 1000)


      Onepackage.populate 1..2 do |var|
      var.name = Faker::Commerce.product_name
      var.cost = Faker::Number.between(50, 2000)
      var.product_ida = product.id

      Onepackage.populate 1..2 do |var|
      var.name = Faker::Commerce.product_name
      var.cost = Faker::Number.between(50, 2000)
      var.product_ida = product.id
      var.product_idb = product.id-1

      Sale.populate 1..3 do |sale|
      sale.transactionnum = Faker::Number.number(5)
      sale.package_id = var.id
      sale.customer_id = person.id
      sale.cost = Faker::Number.between(50, 2000)

	end
end
    end
    end
    end
  end
end