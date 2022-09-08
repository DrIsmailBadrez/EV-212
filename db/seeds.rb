# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Charger.destroy_all
Charger.create(ctype: "Type 1", capacity: "3.7 kW")
Charger.create(ctype: "Type 1", capacity: "7 kW")

Charger.create(ctype: "Type 2", capacity: "3.7 kW")
Charger.create(ctype: "Type 2", capacity: "3.7 kW", tethered: false)
Charger.create(ctype: "Type 2", capacity: "7 kW")
Charger.create(ctype: "Type 2", capacity: "7 kW", tethered: false)
Charger.create(ctype: "Type 2", capacity: "22 kW")
Charger.create(ctype: "Type 2", capacity: "22 kW", tethered: false)

Charger.create(ctype: "Combined charging system (CCS)", capacity: "50 kW")
Charger.create(ctype: "Combined charging system (CCS)", capacity: "150 kW")
Charger.create(ctype: "Combined charging system (CCS)", capacity: "350 kW")

Charger.create(ctype: "CHAdeMO", capacity: "50 kW")
Charger.create(ctype: "CHAdeMO", capacity: "100 kW")
