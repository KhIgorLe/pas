# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
shops_params = [
  { name: 'Eldorado', address: 'Deribasovcskaya 23', city: 'Odessa' },
  { name: 'Comfy', address: 'Ekaterinskaya 10', city: 'Odessa' },
  { name: 'Virtus', address: 'Lenina 25', city: 'Kiev', metro_station: 'Metro 34' },
  { name: 'Foxtrot', address: 'Stroiteley 30', city: 'Lvov' }
]

shops = Shop.create(shops_params)

products_params = [
  { vendor_code: 245789, title: 'Laptop', weight: 5, size: '300 * 250', color: 'Black', price: 21000, total: 15  },
  { vendor_code: 111111, title: 'Moped', weight: 54, size: '2200 * 1250', color: 'white', price: 150000, total: 5  },
  { vendor_code: 222222, title: 'Pan', weight: 2, size: '450 * 320', color: 'grey', price: 1500, total: 8  },
  { vendor_code: 333333, title: 'Black tea', weight: 30, size: '20 * 10', color: 'black', price: 25, total: 12  }
]

products = Product.create(products_params)

product_shops_params = [
  { product: products[0], shop: shops[1], amount: 8 },
  { product: products[0], shop: shops[3], amount: 4 },
  { product: products[0], shop: shops[2], amount: 3 },
  { product: products[1], shop: shops[2], amount: 2 },
  { product: products[1], shop: shops[0], amount: 3 },
  { product: products[2], shop: shops[1], amount: 4 },
  { product: products[2], shop: shops[2], amount: 4 },
  { product: products[3], shop: shops[3], amount: 5 },
  { product: products[3], shop: shops[1], amount: 6 },
  { product: products[3], shop: shops[2], amount: 1 }
]

ProductShop.create(product_shops_params)
