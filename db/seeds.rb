# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Station.destroy_all
StationCharger.destroy_all
Charger.destroy_all
User.destroy_all

u = User.create!(email: "drisscon@email.com", password: "123456")

c1 = Charger.create(ctype: "Type 1", capacity: "3.7 kW")
c2 = Charger.create(ctype: "Type 1", capacity: "7 kW")

c3 = Charger.create(ctype: "Type 2", capacity: "3.7 kW")
c4 = Charger.create(ctype: "Type 2", capacity: "3.7 kW", tethered: false)
c5 = Charger.create(ctype: "Type 2", capacity: "7 kW")
c6 = Charger.create(ctype: "Type 2", capacity: "7 kW", tethered: false)
c7 = Charger.create(ctype: "Type 2", capacity: "22 kW")
c8 = Charger.create(ctype: "Type 2", capacity: "22 kW", tethered: false)

c9 = Charger.create(ctype: "CCS", capacity: "50 kW")
c10 = Charger.create(ctype: "CCS", capacity: "150 kW")
c11 = Charger.create(ctype: "CCS", capacity: "350 kW")

c12 = Charger.create(ctype: "CHADEMO", capacity: "50 kW")
c13 = Charger.create(ctype: "CHADEMO", capacity: "100 kW")

c14 = Charger.create(ctype: "Type E", capacity: "2.3 kW")
c15 = Charger.create(ctype: "Type E", capacity: "3.7 kW")
c16 = Charger.create(ctype: "Type 2", capacity: "11 kW")
c17 = Charger.create(ctype: "Type 2", capacity: "43 kW")

station1 = Station.create(name: "Camping Miramonte Charging Station", user: u, longitude: "-5.832540299999999", latitude: "35.7917562")
StationCharger.create(charger: c14, charger_count: 1, station: station1)

station2 = Station.create(name: "Hotel El Minzah", user: u, longitude: "-5.812535399999999", latitude: "35.78199669999999")
StationCharger.create(charger: c14, charger_count: 1, station: station2)

station3 = Station.create(name: "Dar Tanger Medina", user: u, longitude: "-5.8126352", latitude: "35.7866377")
StationCharger.create(charger: c7, charger_count: 2, station: station3)

station4 = Station.create(name: "Restaurant K Tani", user: u, longitude: "-5.8078056", latitude: "35.7702185")
StationCharger.create(charger: c3, charger_count: 1, station: station4)

station5 = Station.create(name: "Camping Achakar", user: u, longitude: "-5.9372618", latitude: "35.7593713")
StationCharger.create(charger: c15, charger_count: 3, station: station5)

station6 = Station.create(name: "Station-service Total Relais De Tanger", user: u, longitude: "-5.8523481", latitude: "35.7392015")
StationCharger.create(charger: c7, charger_count: 1, station: station6)

station7 = Station.create(name: "Station-service Total Relais Tanger Med", user: u, longitude: "-5.67815", latitude: "35.69012")
StationCharger.create(charger: c8, charger_count: 1, station: station7)

station8 = Station.create(name: "Shell Melloussa", user: u, longitude: "-5.678809999999999", latitude: "35.687794")
StationCharger.create(charger: c8, charger_count: 2, station: station8)

station9 = Station.create(name: "Station Afriquia Asilah", user: u, longitude: "-6.0044806", latitude: "35.46988169999999")
StationCharger.create(charger: c8, charger_count: 1, station: station9)

station10 = Station.create(name: "Lixus Beach Resort", user: u, longitude: "-6.1344856", latitude: "35.2353865")
StationCharger.create(charger: c8, charger_count: 1, station: station10)
StationCharger.create(charger: c7, charger_count: 1, station: station10)

station11 = Station.create(name: "Avenue Omar Ben Abdelaziz Charging Station", user: u, longitude: "-6.145860799999999", latitude: "35.1809772")
StationCharger.create(charger: c4, charger_count: 1, station: station11)

station12 = Station.create(name: "Station Afriquia Larache", user: u, longitude: "-6.121569799999998", latitude: "35.16890859999999")
StationCharger.create(charger: c7, charger_count: 2, station: station12)

station13 = Station.create(name: "Station Winxo A1 Moulay Bousselham", user: u, longitude: "-6.2138844", latitude: "34.8751581")
StationCharger.create(charger: c4, charger_count: 2, station: station13)
StationCharger.create(charger: c7, charger_count: 2, station: station13)

station14 = Station.create(name: "Station-service Total Relais Atlantique", user: u, longitude: "-6.4075573", latitude: "34.6449402")
StationCharger.create(charger: c8, charger_count: 1, station: station14)

station15 = Station.create(name: "Avenue Ouali Al Aahd Sidi Mohamed Salé Charging Station", user: u, longitude: "-6.8130611", latitude: "34.0280301")
StationCharger.create(charger: c16, charger_count: 2, station: station15)

station16 = Station.create(name: "Société du Tramway de Rabat Salé Charging Station", user: u, longitude: "-6.8308749", latitude: "34.0176792")
StationCharger.create(charger: c7, charger_count: 2, station: station16)

station17 = Station.create(name: "Station-service Total Tamesna", user: u, longitude: "-6.851683700000001", latitude: "34.0116464")
StationCharger.create(charger: c7, charger_count: 1, station: station17)

station18 = Station.create(name: "Marjane Agdal Ryad", user: u, longitude: "-6.8447309", latitude: "34.0034938")
StationCharger.create(charger: c7, charger_count: 4, station: station18)

station19 = Station.create(name: "52 Avenue Ahmed Rifai Charging Station", user: u, longitude: "-6.834828999999999", latitude: "33.9740027")
StationCharger.create(charger: c7, charger_count: 1, station: station19)

station20 = Station.create(name: "IRESEN Charging Station", user: u, longitude: "-6.8487246", latitude: "33.9768718")
StationCharger.create(charger: c7, charger_count: 2, station: station20)

station21 = Station.create(name: "Marjane Hay Riad Rocade de Rabat", user: u, longitude: "-6.853467999999999", latitude: "33.953902")
StationCharger.create(charger: c8, charger_count: 2, station: station21)
StationCharger.create(charger: c3, charger_count: 2, station: station21)

station22 = Station.create(name: "7 Boulevard Hassan II Charging Station", user: u, longitude: "-7.131281599999999", latitude: "33.6257616")
StationCharger.create(charger: c5, charger_count: 1, station: station22)

station23 = Station.create(name: "SNTL Autoroute A1 Charging Station", user: u, longitude: "-7.412220399999999", latitude: "33.6572887")
StationCharger.create(charger: c8, charger_count: 1, station: station23)

station24 = Station.create(name: "Station-service Total Riviera", user: u, longitude: "-7.644851000000003", latitude: "33.568177")
StationCharger.create(charger: c7, charger_count: 2, station: station24)

station25 = Station.create(name: "67 Avenue Habib Sinaceur Charging Station", user: u, longitude: "-7.658825200000001", latitude: "33.5965043")
StationCharger.create(charger: c7, charger_count: 1, station: station25)

station26 = Station.create(name: "Station-service Total Relais Al Baida", user: u, longitude: "-7.608099399999999", latitude: "33.5100107")
StationCharger.create(charger: c17, charger_count: 1, station: station26)
StationCharger.create(charger: c9, charger_count: 2, station: station26)
StationCharger.create(charger: c12, charger_count: 1, station: station26)

station27 = Station.create(name: "station-service Shell exit casa", user: u, longitude: "-7.630047799999999", latitude: "33.5066377")
StationCharger.create(charger: c7, charger_count: 2, station: station27)

station28 = Station.create(name: "Station-service Total Mediouna", user: u, longitude: "-7.5211441", latitude: "33.4540883")
StationCharger.create(charger: c7, charger_count: 1, station: station28)

station29 = Station.create(name: "Afriquia Station Berrchid A7", user: u, longitude: "-7.573249999999999", latitude: "33.2225533")
StationCharger.create(charger: c7, charger_count: 2, station: station29)

station30 = Station.create(name: "Afriquia Settat A7", user: u, longitude: "-7.6678348", latitude: "32.897804")
StationCharger.create(charger: c7, charger_count: 1, station: station30)

station31 = Station.create(name: "Winxo Oum Rabii", user: u, longitude: "-7.794542300000002", latitude: "32.62973")
StationCharger.create(charger: c7, charger_count: 2, station: station31)

station32 = Station.create(name: "Shell Station Benguerir", user: u, longitude: "-7.9694417", latitude: "32.2738617")
StationCharger.create(charger: c7, charger_count: 2, station: station32)

station33 = Station.create(name: "Green Energy Park Charging Station", user: u, longitude: "-7.928971900000001", latitude: "32.221195")
StationCharger.create(charger: c7, charger_count: 6, station: station33)

station34 = Station.create(name: "Afriquia Sidi Bou OTHMANE", user: u, longitude: "-8.0241126", latitude: "31.9179536")
StationCharger.create(charger: c7, charger_count: 2, station: station34)

station35 = Station.create(name: "Station-service Total Djebilet", user: u, longitude: "-8.019272799999998", latitude: "31.6457998")
StationCharger.create(charger: c7, charger_count: 1, station: station35)

station36 = Station.create(name: "Avenue Mohammed V Hotel de ville Albaladia Charging Station", user: u, longitude: "-7.998004000000001", latitude: "31.62839529999999")
StationCharger.create(charger: c8, charger_count: 1, station: station36)

station36 = Station.create(name: "Mövenpick Hotel Mansour Eddahbi Marrakech Charging Station", user: u, longitude: "-8.014418", latitude: "31.623871")
StationCharger.create(charger: c4, charger_count: 20, station: station36)
StationCharger.create(charger: c8, charger_count: 2, station: station36)

station36 = Station.create(name: "Station-service Total Moulay Ali", user: u, longitude: "-7.991584700000001", latitude: "31.621301")
StationCharger.create(charger: c17, charger_count: 1, station: station36)

station37 = Station.create(name: "Avenue Annakhil Charging Station", user: u, longitude: "-8.046673799999997", latitude: "31.5923965")
StationCharger.create(charger: c6, charger_count: 1, station: station37)

station38 = Station.create(name: "Restaurant Gusto Marrakech Charging Station", user: u, longitude: "-7.982319899999999", latitude: "31.57813799999999")
StationCharger.create(charger: c4, charger_count: 1, station: station38)

station39 = Station.create(name: "Station Sun Pack Charging Station", user: u, longitude: "-8.163924999999999", latitude: "31.602166")
StationCharger.create(charger: c7, charger_count: 1, station: station39)

station40 = Station.create(name: "Station Total Relais Chichaoua", user: u, longitude: "-8.6551811", latitude: "31.4871058")
StationCharger.create(charger: c7, charger_count: 1, station: station40)

station41 = Station.create(name: "Station-service Total Relais Amskroud", user: u, longitude: "-9.3203443", latitude: "30.5356435")
StationCharger.create(charger: c7, charger_count: 1, station: station41)

station42 = Station.create(name: "Atlas Kasbah Ecolodge Charging Station", user: u, longitude: "-9.490068899999999", latitude: "30.4319642")
StationCharger.create(charger: c4, charger_count: 1, station: station42)
StationCharger.create(charger: c16, charger_count: 1, station: station42)

station43 = Station.create(name: "Port de Tanger Ville Charging Station", user: u, longitude: "-5.803471399999999", latitude: "35.7854927")
StationCharger.create(charger: c8, charger_count: 1, station: station43)

station44 = Station.create(name: "Villa Carleton - Garden Café & Restaurant Charging Station", user: u, longitude: "-5.825603800000001", latitude: "35.7797302")
StationCharger.create(charger: c8, charger_count: 1, station: station44)

station45 = Station.create(name: "Kenzi Solazur Tanger Charging Station", user: u, longitude: "-5.797889100000001", latitude: "35.7768292")
StationCharger.create(charger: c8, charger_count: 2, station: station45)
StationCharger.create(charger: c16, charger_count: 1, station: station45)

station46 = Station.create(name: "Ceramic pro Charging Station", user: u, longitude: "-9.585573000000002", latitude: "30.4174016")
StationCharger.create(charger: c8, charger_count: 2, station: station46)

station47 = Station.create(name: "Kenzi Club Agdal Medina Charging Station", user: u, longitude: "-7.984051999999997", latitude: "31.5787539")
StationCharger.create(charger: c8, charger_count: 1, station: station47)

station48 = Station.create(name: "Station Afriquia Targa", user: u, longitude: "-8.234799200000001", latitude: "31.72004480000001")
StationCharger.create(charger: c8, charger_count: 2, station: station48)

station49 = Station.create(name: "Parking Place Rachidi Charging Station", user: u, longitude: "-7.6244444", latitude: "33.5920446")
StationCharger.create(charger: c9, charger_count: 4, station: station49)
StationCharger.create(charger: c12, charger_count: 1, station: station49)
StationCharger.create(charger: c7, charger_count: 2, station: station49)

station50 = Station.create(name: "Smeia - BMW Motorrad Charging Station Casablanca", user: u, longitude: "-7.5524038", latitude: "33.615372")
StationCharger.create(charger: c8, charger_count: 1, station: station50)

station51 = Station.create(name: "IMARSI", user: u, longitude: "-7.578887", latitude: "33.594066")
StationCharger.create(charger: c4, charger_count: 2, station: station51)

station52 = Station.create(name: "Station service shell Bouznika", user: u, longitude: "-7.232718800000001", latitude: "33.7796735")
StationCharger.create(charger: c8, charger_count: 2, station: station52)

station53 = Station.create(name: "Mega Mall Rabat Charging Station", user: u, longitude: "-6.830362999999998", latitude: "33.967815")
StationCharger.create(charger: c8, charger_count: 2, station: station53)

station54 = Station.create(name: "Royal Tulip City Center", user: u, longitude: "-5.783708", latitude: "35.77325239999999")
StationCharger.create(charger: c4, charger_count: 1, station: station54)

station55 = Station.create(name: "Station Total Relais Agadir Avenue Al Moune", user: u, longitude: "-9.563349299999999", latitude: "30.4279962")
StationCharger.create(charger: c8, charger_count: 1, station: station55)

station56 = Station.create(name: "Venezia Ice Charging Station", user: u, longitude: "-9.5917518", latitude: "30.4257496")
StationCharger.create(charger: c15, charger_count: 1, station: station56)

station57 = Station.create(name: "Avenue Prince Mouly Abdellah RMEL LOT Charging Station", user: u, longitude: "-9.5427947", latitude: "30.3613178")
StationCharger.create(charger: c4, charger_count: 1, station: station57)

station58 = Station.create(name: "Aéroport de Tanger-Ibn Batouta Charging Station", user: u, longitude: "-5.9129097", latitude: "35.7258603")
StationCharger.create(charger: c1, charger_count: 1, station: station58)

station59 = Station.create(name: "Novotel Mohammedia Charging Station", user: u, longitude: "-7.395683", latitude: "33.707114")
StationCharger.create(charger: c6, charger_count: 1, station: station59)

station60 = Station.create(name: "Station Total - Relais Chaouia Berrchid", user: u, longitude: "-7.574891099999999", latitude: "33.2233928")
StationCharger.create(charger: c17, charger_count: 1, station: station60)

station61 = Station.create(name: "SARL ATV UTILITY MARRAKECH", user: u, longitude: "-8.03852", latitude: "31.66928099999999")
StationCharger.create(charger: c8, charger_count: 1, station: station61)

station62 = Station.create(name: "GTR AGADIR", user: u, longitude: "-9.5292275", latitude: "30.39698609999999")
StationCharger.create(charger: c8, charger_count: 1, station: station62)

station63 = Station.create(name: "Star Bobinage", user: u, longitude: "-7.546089299999999", latitude: "33.6132456")
StationCharger.create(charger: c1, charger_count: 1, station: station63)

station64 = Station.create(name: "Villa Josephine Charging Station", user: u, longitude: "-5.840486899999999", latitude: "35.7924608")
StationCharger.create(charger: c4, charger_count: 1, station: station64)

station65 = Station.create(name: "Kech Boutique Hôtel & Spa Charging Station", user: u, longitude: "-7.988493899999999", latitude: "31.58694")
StationCharger.create(charger: c4, charger_count: 1, station: station65)

station66 = Station.create(name: "Direction Régionale de l'Environnement - Région de Marrakech Safi", user: u, longitude: "-8.005622899999999", latitude: "31.629386")
StationCharger.create(charger: c8, charger_count: 2, station: station66)

station67 = Station.create(name: "Station SHELL Saf Saf kenitra", user: u, longitude: "-6.580976799999999", latitude: "34.22873999999999")
StationCharger.create(charger: c8, charger_count: 2, station: station67)
StationCharger.create(charger: c12, charger_count: 1, station: station67)
StationCharger.create(charger: c9, charger_count: 3, station: station67)

station68 = Station.create(name: "Station Total Relais La palmeraie", user: u, longitude: "-7.9781948", latitude: "31.75600500000001")
StationCharger.create(charger: c8, charger_count: 1, station: station68)

station69 = Station.create(name: "EVBOX Charging Station 17 Rue Ibnou Khallikane", user: u, longitude: "-7.625635299999999", latitude: "33.581867")
StationCharger.create(charger: c7, charger_count: 4, station: station69)
StationCharger.create(charger: c16, charger_count: 4, station: station69)

station70 = Station.create(name: "1 Boulevard Hassan I Charging Station", user: u, longitude: "-7.620923599999999", latitude: "33.5944677")
StationCharger.create(charger: c8, charger_count: 4, station: station70)

station71 = Station.create(name: "1 Boulevard Hassan I Charging Station", user: u, longitude: "-7.620923599999999", latitude: "33.5944677")
StationCharger.create(charger: c8, charger_count: 4, station: station71)

station72 = Station.create(name: "Avenue Hassan II Charging Station", user: u, longitude: "-6.873752199999999", latitude: "33.9810772")
StationCharger.create(charger: c8, charger_count: 2, station: station72)

station73 = Station.create(name: "ev-box Charging Station Mediouna à 800 mètres Station Total Mediouna", user: u, longitude: "-7.521085599999999", latitude: "33.45425869999999")
StationCharger.create(charger: c8, charger_count: 2, station: station73)

station74 = Station.create(name: "Station Afriquia Sortie de Marrackech", user: u, longitude: "-7.997997299999998", latitude: "31.6793269")
StationCharger.create(charger: c8, charger_count: 1, station: station74)

station75 = Station.create(name: "Afriquia SIDI BOU OTHMANE N9", user: u, longitude: "-7.945110799999998", latitude: "31.922936")
StationCharger.create(charger: c8, charger_count: 1, station: station75)

station76 = Station.create(name: "Station Afriquia Imintanoute Agadir vers Marrackech", user: u, longitude: "-9.0238443", latitude: "31.0244103")
StationCharger.create(charger: c8, charger_count: 2, station: station76)
StationCharger.create(charger: c4, charger_count: 2, station: station76)

station77 = Station.create(name: "Station Winxo Imintanoute  sens Agadir vers Marrackech", user: u, longitude: "-9.024592599999998", latitude: "31.0260318")
StationCharger.create(charger: c8, charger_count: 1, station: station77)

station78 = Station.create(name: "Lixus Golf Resort Larache", user: u, longitude: "-6.1340129", latitude: "35.22754339999999")
StationCharger.create(charger: c6, charger_count: 1, station: station78)

station79 = Station.create(name: "Hôtel Fairmont Royal Palm Marrackech", user: u, longitude: "-8.0490377", latitude: "31.5139105")
StationCharger.create(charger: c15, charger_count: 1, station: station79)

station80 = Station.create(name: "Hôtel ibis Casa Voyageurs", user: u, longitude: "-7.5917355", latitude: "33.5891814")
StationCharger.create(charger: c15, charger_count: 1, station: station80)

station81 = Station.create(name: "Tesla Club Morocco", user: u, longitude: "-6.818808199999999", latitude: "33.9558921")
StationCharger.create(charger: c5, charger_count: 1, station: station81)

station82 = Station.create(name: "TESLA SUPERCHARGE Tanger", user: u, longitude: "-5.763109", latitude: "35.7850206")
StationCharger.create(charger: c4, charger_count: 2, station: station82)

station83 = Station.create(name: "ZOUGUISOFT", user: u, longitude: "-6.315486", latitude: "33.888211")
StationCharger.create(charger: c16, charger_count: 1, station: station83)

station84 = Station.create(name: "EV-Box Charging Station EL JADIDA", user: u, longitude: "-8.4937872", latitude: "33.201678")
StationCharger.create(charger: c8, charger_count: 2, station: station84)

station85 = Station.create(name: "Station Total Taourirt", user: u, longitude: "-3.1642775", latitude: "34.4111967")
StationCharger.create(charger: c7, charger_count: 1, station: station85)

station86 = Station.create(name: "Station-service Total Atlantis Sens Tanger - Casablanca a 200 mètres Afriquia Larache", user: u, longitude: "-6.122215799999998", latitude: "35.17068229999999")
StationCharger.create(charger: c8, charger_count: 1, station: station86)

station87 = Station.create(name: "Rue Abdelhak Ben Mehyou 1 A 2km Evbox chrging station Ibnou Khalikane,djihâd", user: u, longitude: "-7.626196399999999", latitude: "33.58161499999999")
StationCharger.create(charger: c8, charger_count: 2, station: station87)

station88 = Station.create(name: "ONOMO Hotel Casablanca City Center", user: u, longitude: "-7.6390959", latitude: "33.586425")
StationCharger.create(charger: c10, charger_count: 1, station: station88)

station89 = Station.create(name: "Hilton Tangier Al Houara Resort & Spa", user: u, longitude: "-5.965837199999999", latitude: "35.6674645")
StationCharger.create(charger: c10, charger_count: 1, station: station89)

station90 = Station.create(name: "WINXO Moulay Bousselham", user: u, longitude: "-6.1424261", latitude: "35.161328")
StationCharger.create(charger: c8, charger_count: 1, station: station90)

station91 = Station.create(name: "Station-service Total Relais Mazagan", user: u, longitude: "-8.534850400000002", latitude: "33.0307806")
StationCharger.create(charger: c8, charger_count: 1, station: station91)

station92 = Station.create(name: "Hôtel El Kasbah Souiri", user: u, longitude: "-9.7646649", latitude: "31.5147207")
StationCharger.create(charger: c15, charger_count: 1, station: station92)

station93 = Station.create(name: "Universié Euro Méditerranéenne de Fès", user: u, longitude: "-5.0634366", latitude: "34.0435059")
StationCharger.create(charger: c6, charger_count: 2, station: station93)

station94 = Station.create(name: "Badre Sadiki Ferme P7073", user: u, longitude: "-5.241229399999999", latitude: "34.01782299999999")
StationCharger.create(charger: c8, charger_count: 1, station: station94)
StationCharger.create(charger: c8, charger_count: 1, station: station94)

station95 = Station.create(name: "Zaki Suites Hôtel & Spa", user: u, longitude: "-5.533233600000001", latitude: "33.881137")
StationCharger.create(charger: c8, charger_count: 1, station: station95)
StationCharger.create(charger: c16, charger_count: 1, station: station95)
StationCharger.create(charger: c4, charger_count: 1, station: station95)

station96 = Station.create(name: "Centre Commercial Borj Fes M' Donalds Drive", user: u, longitude: "-4.996024599999999", latitude: "34.04434579999999")
StationCharger.create(charger: c15, charger_count: 1, station: station96)

station97 = Station.create(name: "Hôtel Sahrai", user: u, longitude: "-4.9921345", latitude: "34.0435157")
StationCharger.create(charger: c8, charger_count: 2, station: station97)

station98 = Station.create(name: "Complexe Agora Park Taza", user: u, longitude: "-3.9562858", latitude: "34.2667131")
StationCharger.create(charger: c8, charger_count: 2, station: station98)

station99 = Station.create(name: "Station-service Total Relais Bouregreg", user: u, longitude: "-6.7777144", latitude: "33.9061181")
StationCharger.create(charger: c17, charger_count: 1, station: station99)
StationCharger.create(charger: c9, charger_count: 2, station: station99)
StationCharger.create(charger: c12, charger_count: 1, station: station99)

station100 = Station.create(name: "Château Roslane", user: u, longitude: "-5.440646399999999", latitude: "33.7597224")
StationCharger.create(charger: c8, charger_count: 1, station: station100)

station101 = Station.create(name: "Camping Amazigh", user: u, longitude: "-5.1703548", latitude: "33.44945550000001")
StationCharger.create(charger: c14, charger_count: 1, station: station101)

station102 = Station.create(name: "Parc Derichebourg", user: u, longitude: "-5.2311441", latitude: "33.43499560000001")
StationCharger.create(charger: c8, charger_count: 2, station: station102)

station103 = Station.create(name: "EV-Box Charging Station", user: u, longitude: "-5.2311441", latitude: "33.43499560000001")
StationCharger.create(charger: c16, charger_count: 4, station: station103)
StationCharger.create(charger: c8, charger_count: 2, station: station103)

station104 = Station.create(name: "Bin El Ouidane", user: u, longitude: "-6.455154400000001", latitude: "32.107915")
StationCharger.create(charger: c16, charger_count: 2, station: station104)

station105 = Station.create(name: "Kasbah Hotel Camping Jurassique", user: u, longitude: "-4.3753508", latitude: "32.1538493")
StationCharger.create(charger: c14, charger_count: 1, station: station105)

station106 = Station.create(name: "Argane Tichka Restaurant", user: u, longitude: "-7.377261999999999", latitude: "31.3286511")
StationCharger.create(charger: c16, charger_count: 1, station: station106)

station107 = Station.create(name: "hotel le berbere palace", user: u, longitude: "-6.909776", latitude: "30.923062")
StationCharger.create(charger: c15, charger_count: 1, station: station107)

station108 = Station.create(name: "Hôtel Tamassint", user: u, longitude: "-5.502444399999999", latitude: "31.5149888")
StationCharger.create(charger: c14, charger_count: 1, station: station108)

station109 = Station.create(name: "Hôtel Oscar N10", user: u, longitude: "-6.903823000000001", latitude: "30.919091")
StationCharger.create(charger: c8, charger_count: 10, station: station109)

station110 = Station.create(name: "Hotel La Grande Gare, Rue Ibn Tabir", user: u, longitude: "-13.2166332", latitude: "27.1623867")
StationCharger.create(charger: c14, charger_count: 1, station: station110)

station111 = Station.create(name: "Hôtel Dakhla club", user: u, longitude: "-15.768987", latitude: "23.903502")
StationCharger.create(charger: c15, charger_count: 1, station: station111)

station112 = Station.create(name: "Hotel Manarat Boujdour", user: u, longitude: "-14.480893", latitude: "26.127288")
StationCharger.create(charger: c14, charger_count: 1, station: station112)

station113 = Station.create(name: "Hotel Barbas", user: u, longitude: "-16.7475147", latitude: "22.0547275")
StationCharger.create(charger: c15, charger_count: 1, station: station113)

station114 = Station.create(name: "Ceuta", user: u, longitude: "-5.321345499999999", latitude: "35.8893874")
StationCharger.create(charger: c14, charger_count: 3, station: station114)
StationCharger.create(charger: c16, charger_count: 2, station: station114)

station115 = Station.create(name: "Sofitel Tamuda Bay Beach and Spa", user: u, longitude: "-5.3282445", latitude: "35.6945089")
StationCharger.create(charger: c4, charger_count: 1, station: station115)

station116 = Station.create(name: "Calle García Cabrelles", user: u, longitude: "-2.9437018", latitude: "35.2955516")
StationCharger.create(charger: c8, charger_count: 3, station: station116)
StationCharger.create(charger: c4, charger_count: 3, station: station116)

station117 = Station.create(name: "Station-service Total Relais D'Oulmes", user: u, longitude: "-6.1049709", latitude: "33.8170726")
StationCharger.create(charger: c8, charger_count: 1, station: station117)

station118 = Station.create(name: "Mcdonald's Dawliz", user: u, longitude: "-7.661720342328685", latitude: "33.60155967298711")
StationCharger.create(charger: c7, charger_count: 3, station: station118)
