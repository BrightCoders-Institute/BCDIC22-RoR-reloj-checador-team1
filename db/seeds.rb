# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
store = Store.create(name: 'Oxxo', address: '123 Street')
empleado = Employee.create(name: 'Bart Simpson', email: 'bart@simpson.com', position: 'regional manager', statusActive: true, store_id: 1, privateNumber: 123456)
admin = Administrator.create(admin_id: 1, privateNumber: 123456)