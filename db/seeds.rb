# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sc = SecretCode.create(code: "foobar")
User.create(first_name: "admin", 
						last_name: "admin", 
						email: "admin@admin.com", 
						is_admin: true, password: "admin1234", 
						password_confirmation: "admin1234", 
						secret_code_id: sc.id
					)
puts "admin created!"