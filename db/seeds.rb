airports = ["SFO", "JFK", "BDL", "BOS", "LGA", "LAX", "DFW"]

airports.each do |airport|
  Airport.create(code: airport)
end

options = Airport.all

Flight.create(from_airport: options[2], to_airport: options.first, departure: 5.days.from_now, duration: "120")
Flight.create(from_airport: options[1], to_airport: options.last, departure: 10.days.from_now, duration: "520")
Flight.create(from_airport: options[3], to_airport: options[2], departure: 3.days.from_now, duration: "360")
Flight.create(from_airport: options[5], to_airport: options[4], departure: 7.days.from_now, duration: "120")
Flight.create(from_airport: options.last, to_airport: options[1], departure: 8.days.from_now, duration: "90")
Flight.create(from_airport: options[4], to_airport: options[5], departure: 12.days.from_now, duration: "300")
Flight.create(from_airport: options[0], to_airport: options[3], departure: 20.days.from_now, duration: "189")
Flight.create(from_airport: options[2], to_airport: options[1], departure: 4.days.from_now, duration: "100")
Flight.create(from_airport: options[4], to_airport: options[5], departure: 5.days.from_now, duration: "120")
Flight.create(from_airport: options[0], to_airport: options[2], departure: 5.days.from_now, duration: "120")
