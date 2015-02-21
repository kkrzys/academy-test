user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

city = City.find_or_create_by(name: 'Berlin', short_name: 'Ber')
puts 'CREATED/FINDING CITY: ' << city.name
city = City.find_or_create_by(name: 'Paris')
puts 'CREATED/FINDING CITY: ' << city.name
city = City.find_or_create_by(name: 'Madrid', short_name: 'Mad')
puts 'CREATED/FINDING CITY: ' << city.name
city = City.find_or_create_by(name: 'Barcelona', short_name: 'Bar')
puts 'CREATED/FINDING CITY: ' << city.name
city = City.find_or_create_by(name: 'Warsaw')
puts 'CREATED/FINDING CITY: ' << city.name
city = City.find_or_create_by(name: 'Miami', short_name: 'Mi')
puts 'CREATED/FINDING CITY: ' << city.name
