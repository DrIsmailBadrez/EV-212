# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

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
file1 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3cGCd1FxOZ0vtu1vfxPuN-EJ1Qz4SMFF29sriwNfZhpWoQr1oyVUmByhbw2jFArtrTQEIQpIVl83maqdS9RQck-RkIkzfW5TnkjytGE2PbyhT9izE-s4M-9OlrZPb5zJx26OaXv5XYVeYHjHO7ysbaLLZ16T79R6E8HTLxUP2BMfG8&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=61934")
station1.photo.attach(io: file1, filename: "nes.png", content_type: "image/png")
station1.save
StationCharger.create(charger: c14, charger_count: 1, station: station1)

station2 = Station.create(name: "Hotel El Minzah", user: u, longitude: "-5.812535399999999", latitude: "35.78199669999999")
file2 = URI.open("https://doc-00-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/qod89isoadfg5ftkro07lgsvt0/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vZHlBEpwmiHJHKPiWp3iWY6kcSgEMswQqfF82rfCq43UAMVWW7aLJopGxO4ymsjU9M9w42OWAZ4NmV70T2Ve3tpyXNqkCO-r4BzuShca_hJ_1GvapCmUEfPagyUl1pKTVKLBtFuej7QYMraHHUO-R5MC_o-Wb6RhjtHCvH7wDQvDpuKVsz_8Sv5djoioS-rvo0?session=0&fife=s16383")
station2.photo.attach(io: file2, filename: "nes.png", content_type: "image/png")
station2.save
StationCharger.create(charger: c14, charger_count: 1, station: station2)

station3 = Station.create(name: "Dar Tanger Medina", user: u, longitude: "-5.8126352", latitude: "35.7866377")
file3 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3dHhO_FnN30wm1pyuG-NmHf2WgYRvy49QbBW0ofwSqmXy07ffs-OWnP_YgZNHB4yse1qvo3Aunmcs_r9kiOwvaaj4IAMPqBFdQyjl3ZwoCYYAV6_JafwmcUAID-GurK98xdXBTnr9fvuADSeBTyiltzkVsi5gbQBlWLSTvBjsdieNTD&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=49408")
station3.photo.attach(io: file3, filename: "nes.png", content_type: "image/png")
station3.save
StationCharger.create(charger: c7, charger_count: 2, station: station3)

station4 = Station.create(name: "Restaurant K Tani", user: u, longitude: "-5.8078056", latitude: "35.7702185")
file4 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/23/bd/8e/40/the-place-to-be.jpg")
station4.photo.attach(io: file4, filename: "nes.png", content_type: "image/png")
station4.save
StationCharger.create(charger: c3, charger_count: 1, station: station4)

station5 = Station.create(name: "Camping Achakar", user: u, longitude: "-5.9372618", latitude: "35.7593713")
file5 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3fAGUMre8MuVGdZ4M-2Bjn8kdA7YzTX6wquhREmKV6MhQl2T1Hatn3hqInXW3Tt7H5XHk4x28fQaqcduG-KrUCqBb3PGlyInlmaSmP1fI1c8R5QcoEglmRzyqEFnDOxecvfa84nNNS3tO-BnLlPevNCpCEAQU_DX1iF0Wzk9_ga8oF4&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=105173")
station5.photo.attach(io: file5, filename: "nes.png", content_type: "image/png")
station5.save
StationCharger.create(charger: c15, charger_count: 3, station: station5)

station6 = Station.create(name: "Station-service Total Relais De Tanger", user: u, longitude: "-5.8523481", latitude: "35.7392015")
file6 = URI.open("https://doc-08-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/mvj1j5bnms0bt5n2r8kk68bquk/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vYRNhNuYgmDRWezlHtV3O1P41x6CfQcAOj1x0NjXMAl_1y7SE_st9wwumllUS1FP_Ks5QRgiVQjCqK28ep7wBanQHs3-vJO7144QdlHLNw2COiUVWxcCodokR6RNTKPo9p6_naX3c2ypmbajtYCtBzXhuxBKOs7kU8cU8ZkiLWil95tYrg_aCmhEItiX8afHGQ?session=0&fife=s16383")
station6.photo.attach(io: file6, filename: "nes.png", content_type: "image/png")
station6.save
StationCharger.create(charger: c7, charger_count: 1, station: station6)

station7 = Station.create(name: "Station-service Total Relais Tanger Med", user: u, longitude: "-5.67815", latitude: "35.69012")
file7 = URI.open("https://doc-00-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/c0dirs8dm8hb0prc8jn25850ek/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vassOVuG1TraGXadEMXE2sdcZPeNqw-QrDL1qIoJ6KPIBgrredzDSTNYVDiCEmvQPTEcLePA8D5IcQgmx0CuLYjmYvm0tgTmecocL40rxpc7WrUf1DDMuRCXUfJFDwnucpBQaheSxZtOTJDgiSJZKsvHAvf3fgAchw0Gtl152odWWw_miO3KHhp0Hh7Gp1uiER4?session=0&fife=s16383")
station7.photo.attach(io: file7, filename: "nes.png", content_type: "image/png")
station7.save
StationCharger.create(charger: c8, charger_count: 1, station: station7)

station8 = Station.create(name: "Shell Melloussa", user: u, longitude: "-5.678809999999999", latitude: "35.687794")
file8 = URI.open("https://doc-14-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/875nrb7pk4f7o0cbjhctil9d54/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vbohHA1903c3kUUptb5eITiBwj06Ndnf_hLmIIULGGSA-3DhR3_GG-Fhi8mIvDpMT3-BpszwzkVFC5jRup4Bbsc7ATdlfyW65YOy1-cdEpXR5Qge1Py8whvIIqymqF3Pv3ZhWLy4-FrEl-Jw5Liqy9Kl9HYaY6eiMp9iqy0vdN5HysoH3H0Ak9Z7YorgSCIOzg?session=0&fife=s16383")
station8.photo.attach(io: file8, filename: "nes.png", content_type: "image/png")
station8.save
StationCharger.create(charger: c8, charger_count: 2, station: station8)

station9 = Station.create(name: "Station Afriquia Asilah", user: u, longitude: "-6.0044806", latitude: "35.46988169999999")
file9 = URI.open("https://doc-0o-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/ibglevvlb6hgc1vs42i2cmloes/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vZrZPwTFRD6jHwooBAb5uI13zrrgxbEyotq4T4LTReVlSgms0t93hmFw9KW59T_xbOnMgjR8p-nyK8UjcWqN8PHgSFkiq83qrynhfGhwufPmyyqu4lP9QSDkwzUrbYOxC6Z3ogrc1-f1RyjkxNztUrv6Rk5idFNQWqkqyus0cwOP_X0R0Qees8MZ29YnLbAwex0?session=0&fife=s16383")
station9.photo.attach(io: file9, filename: "nes.png", content_type: "image/png")
station9.save
StationCharger.create(charger: c8, charger_count: 1, station: station9)

station10 = Station.create(name: "Lixus Beach Resort", user: u, longitude: "-6.1344856", latitude: "35.2353865")
file10 = URI.open("https://doc-0s-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/kf2pngq8o4fl9gift1l6748oas/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vYUMEqYFiNomtdRDVexbZmp-K03Qp-fnnmsvX9UTkd2Nc2Hggl93f9QYzFwMEMeb4gadUu88PzeCJsjSRK5HchDCIOgNmnUGIHOsekAx02N-Lde8iqHRBdt4osRNAkaolgYOCqnWsP9U-hKANbHnTR22Nr1lpIEFxDMEFzFT3Ep45q08ZyOnaP4j2286JNq7qUO?session=0&fife=s16383")
station10.photo.attach(io: file10, filename: "nes.png", content_type: "image/png")
station10.save
StationCharger.create(charger: c8, charger_count: 1, station: station10)
StationCharger.create(charger: c7, charger_count: 1, station: station10)

station11 = Station.create(name: "Avenue Omar Ben Abdelaziz Charging Station", user: u, longitude: "-6.145860799999999", latitude: "35.1809772")
file11 = URI.open("https://cdn3.park4night.com/lieu/97601_97700/97601_gd.jpg")
station11.photo.attach(io: file11, filename: "nes.png", content_type: "image/png")
station11.save
StationCharger.create(charger: c4, charger_count: 1, station: station11)

station12 = Station.create(name: "Station Afriquia Larache", user: u, longitude: "-6.121569799999998", latitude: "35.16890859999999")
file12 = URI.open("https://doc-08-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/afdtbp6lnv2dqoe55l1h7jhfo8/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vZ6gqMp89iqkc0bRgla4C-M5l33yo_kvDhZBqyd6TOy4-Bt1xFAI1Maead3DWXPb4R9QQys1QEtIxy1r--xwx_6p0g2c59XnWO_Yn70r-zKC62guOjIqHW6D5hPU9P60CVK6QgUZJlC5L4L9LreSnHqK6wBeiS-vXTQc-vs2M5ThHK27n2DZBmmZN2fHy7NY_zG?session=0&fife=s16383")
station12.photo.attach(io: file12, filename: "nes.png", content_type: "image/png")
station12.save
StationCharger.create(charger: c7, charger_count: 2, station: station12)

station13 = Station.create(name: "Station Winxo A1 Moulay Bousselham", user: u, longitude: "-6.2138844", latitude: "34.8751581")
file13 = URI.open("https://doc-14-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/qg1u8arihfjce3i0sm2bp1jq7c/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vbpNz77XX442B2b4f9BD831WGmaf-HIDLg9_dO6h7gUHXL57VminvTSw7lJBLdvzkq4i4-YJPLAjcCbkdwQbdp2K4avK6i_U8I5Dux-IDpvGUH5DffknbwoDVNKuQHHv7mJkI7AZ7iwUdhnI9CBwT2sR_ozz7x9ecDefBIvzUyS6RpLXlLpe5Nx8ssyo2fMCRT_?session=0&fife=s16383")
station13.photo.attach(io: file13, filename: "nes.png", content_type: "image/png")
station13.save
StationCharger.create(charger: c4, charger_count: 2, station: station13)
StationCharger.create(charger: c7, charger_count: 2, station: station13)

station14 = Station.create(name: "Station-service Total Relais Atlantique", user: u, longitude: "-6.4075573", latitude: "34.6449402")
file14 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3eeNgrm-LVhFfIt0k0xym6qjKzrxpv_cdKvjIYGK7XE1ohQz4N5kq3ymx81AsXB2GpIsx5Gp0dh30tQsQQSeTwXzWqxDRzSySVUeDoZGOrsWUbeY3hkdWFVKJ5yznRKec8tPE6TukhzzTxj9HCoZp1Gu1GVW7ye9VCGqgQ3d-94wV5s&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=58171")
station14.photo.attach(io: file14, filename: "nes.png", content_type: "image/png")
station14.save
StationCharger.create(charger: c8, charger_count: 1, station: station14)

station15 = Station.create(name: "Avenue Ouali Al Aahd Sidi Mohamed Salé Charging Station", user: u, longitude: "-6.8130611", latitude: "34.0280301")
file15 = URI.open("https://doc-0c-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/n6abq37bvt8op3h0nu7fjljdn4/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vbNLkCpzN9W4QMccjXdWdI40d1tQPyHNjLgxTPuRq-SKtjP9QHnMtrJRdnWhOQAqxIuS5L24dx6n66iedgRf3wD9hw1jcRH-Uxhj-Sq5ABwCYKQW00jUMgsDhjTocSFKijr86CkPoOSHHL1j8F0GUzXdPTemeujVMdtK5Ie3p61m3ZJhFWRjemOGwVfHloWZFc?session=0&fife=s16383")
station15.photo.attach(io: file15, filename: "nes.png", content_type: "image/png")
station15.save
StationCharger.create(charger: c16, charger_count: 2, station: station15)

station16 = Station.create(name: "Société du Tramway de Rabat Salé Charging Station", user: u, longitude: "-6.8308749", latitude: "34.0176792")
file16 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3dhQr-HUsdCH_VxcOlzpRe-aXHD0aNjnhCMjWMLCTAg4_Ip3bLC0u7DgT7Qngc-u5oWjLoOeOSktmh12bTJBE-09WStMO7igykJNvFIRA8N1NyiPnpO-gSRXQGibzvPWGrVb7vfKgIzf4PJj2QSTE_gKIY-NG82_UF2jekyy1sXKRi1&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=114914")
station16.photo.attach(io: file16, filename: "nes.png", content_type: "image/png")
station16.save
StationCharger.create(charger: c7, charger_count: 2, station: station16)

station17 = Station.create(name: "Station-service Total Tamesna", user: u, longitude: "-6.851683700000001", latitude: "34.0116464")
file17 = URI.open("https://doc-04-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/ij9cu98q57jbdlt619hgi6pjr8/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vZDfR-THP4MEj4ptxfPeHbbAuYrdBSxr6kGnrr-FsNBkualcSMJ9JPZnTsWZ4cycf4XOYAdHrH42tUXirii4XquARBg04jFaYK6x4UZSzkpLxFjBs-I4jmlSCgFumuzZsNkK-KxsgN5I0s544414bX_d-ulvScKSybsIqJCFKnnCf2prdCFxMEsjJcbjKqQ6vGs?session=0&fife=s16383")
station17.photo.attach(io: file17, filename: "nes.png", content_type: "image/png")
station17.save
StationCharger.create(charger: c7, charger_count: 1, station: station17)

station18 = Station.create(name: "Marjane Agdal Ryad", user: u, longitude: "-6.8447309", latitude: "34.0034938")
file18 = URI.open("https://chargemap.s3.amazonaws.com/charging_pool_photos/url/840x560/291633/1577287326_android.jpg")
station18.photo.attach(io: file18, filename: "nes.png", content_type: "image/png")
station18.save
StationCharger.create(charger: c7, charger_count: 4, station: station18)

station19 = Station.create(name: "52 Avenue Ahmed Rifai Charging Station", user: u, longitude: "-6.834828999999999", latitude: "33.9740027")
file19 = URI.open("https://doc-14-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/p54nbkhmjjjsmch2glk6fmekq4/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vaavu5TJcAIbKP1lfkwPbkEi8yFi1d1IBvAxznL_5LOOipPUzu2d9bf3iTwZfjSOXsLRhZyRRZLKVP6T65h0ReEDPE6Ra7bHh-2a-2nxaePE725UregudiNpEWVnOULEj4y1HXLmLi5homPxqJe9c98xoYXKqZbblI--wyhPwukavhOlh9C6WDD3HHUQNIzqu8?session=0&fife=s16383")
station19.photo.attach(io: file19, filename: "nes.png", content_type: "image/png")
station19.save
StationCharger.create(charger: c7, charger_count: 1, station: station19)

station20 = Station.create(name: "IRESEN Charging Station", user: u, longitude: "-6.8487246", latitude: "33.9768718")
file20 = URI.open("https://doc-0c-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/du956j117p7vr6hosfhabhhec4/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vYnla1BsVbqqFkutiU7aXv_9FlxhW5bVsXy6vSFoGpblk5IkCsVrSmzkRkAbLqgmePXVzP00uGsfJVM5H2x0RGauMdjjYF3S_USczmIkAV54yIzPSNduWbMiyIvQIZ9EXKNN9gVnIFRVdKhzDoPN2vdq9kbYi7vA8WeIAGAprWwaS0Cty1Z69KbIsnfEid5AmJN?session=0&fife=s16383")
station20.photo.attach(io: file20, filename: "nes.png", content_type: "image/png")
station20.save
StationCharger.create(charger: c7, charger_count: 2, station: station20)

station21 = Station.create(name: "Marjane Hay Riad Rocade de Rabat", user: u, longitude: "-6.853467999999999", latitude: "33.953902")
file21 = URI.open("https://doc-0o-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/mg5bo6l7h1kc8jeq172jh7rp44/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vbpLH-6fjgk5Zy4w1LTXaeJ2mlQdwgri1sjveTM9IZWIaOrJ5VOXA1m9kZDbFUkc0muc8S6JWwZxQucPTeTZ2LP_a2XiegNFHnqXFMfbcbVDeEY26CzAPrTwmn8qRvNWPkWtCryOIs58S6tZWhke8p8TOhpvDnowl3j8Id_TTOdUrChAKuiiWcppuaCmkQiTSA?session=0&fife=s16383")
station21.photo.attach(io: file21, filename: "nes.png", content_type: "image/png")
station21.save
StationCharger.create(charger: c8, charger_count: 2, station: station21)
StationCharger.create(charger: c3, charger_count: 2, station: station21)

station22 = Station.create(name: "7 Boulevard Hassan II Charging Station", user: u, longitude: "-7.131281599999999", latitude: "33.6257616")
file22 = URI.open("https://doc-0k-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/rfp8kger6pksoo6q7m5snh0kf0/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vbMp4SfYCByYSMkmVqbOeadWkWKM1T8N7itdsoeasOD66C3ZFEBLrJTVfEcTlg8DdRbyuTnk-fQQ9HIujZbdq_0K8rljWQzAsLlTI2zhoSM-QauycRzPiqxtwDMqL0RQk7sF2aqDmiY0jD0LX0D4G2Uq2sSd0gTcC76WuXgHr3pmGryuVqUbJn8KpaQFmpxs-s?session=0&fife=s16383")
station22.photo.attach(io: file22, filename: "nes.png", content_type: "image/png")
station22.save
StationCharger.create(charger: c5, charger_count: 1, station: station22)

station23 = Station.create(name: "SNTL Autoroute A1 Charging Station", user: u, longitude: "-7.412220399999999", latitude: "33.6572887")
file23 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3cqXKDdVmyb28s9rxzJ551cRjvo0PObnz9WFb4Z_k3NC9U0qNKhCZU1l0JwXYFfN1WIZ6dZTVY3IE3oGeo9RXHE4jEi_KzhbPGZxy0gs4IH1msI73n1VgY7xLWvZDcnlyRkmbLZvdjcr4ORTRMcMk3qXBk4skvK7kEf_PIU_uvaeEl5&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=110821")
station23.photo.attach(io: file23, filename: "nes.png", content_type: "image/png")
station23.save
StationCharger.create(charger: c8, charger_count: 1, station: station23)

station24 = Station.create(name: "Station-service Total Riviera", user: u, longitude: "-7.644851000000003", latitude: "33.568177")
file24 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3cD0fQ3GBNardvyyaedv0zPSf6uIEcybAHDwmjQk1GfJTx2k0ZLZorr4T8Jte8vef3IxqyBfDVOsDC34Qj35RqTtiTz5iy2T9_yDQZXLe8f878GSRZamuWWcA2W9UMTGy4N3y0GAYqBW7sXmhQnTwWgxUla3Kx7c9TfJf3FxB4Zeh8l&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=68699")
station24.photo.attach(io: file24, filename: "nes.png", content_type: "image/png")
station24.save
StationCharger.create(charger: c7, charger_count: 2, station: station24)

station25 = Station.create(name: "67 Avenue Habib Sinaceur Charging Station", user: u, longitude: "-7.658825200000001", latitude: "33.5965043")
file25 = URI.open("https://doc-0k-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/ti9kv1b3t35q18cqq5p0p732f0/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vbv5m2UFtcM7wn94MyxxGujXMzRrCevzrbsdz-iBJcx0LB93guNliZcBloxlBBxuj4ZeFgkxVWMKe14V0nYKfLfrL35dgmRJobxHOdRNxjgD9cnOSwFS3Yy5K5MqCEUEoyuEsu66Y76kNMQkvPqLmwdb3LmuUUj1TwL9yNJQ6DHeUlgBZyExSxSzUx2OHB974U?session=0&fife=s16383")
station25.photo.attach(io: file25, filename: "nes.png", content_type: "image/png")
station25.save
StationCharger.create(charger: c7, charger_count: 1, station: station25)

station26 = Station.create(name: "Station-service Total Relais Al Baida", user: u, longitude: "-7.608099399999999", latitude: "33.5100107")
file26 = URI.open("https://doc-0o-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/hj5hrl691d37q5obumam3ugl18/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vbTAp8VM1q0BBVb_pPEZAC2nORVra4SLkjcQcVIlyNmLeWh11odX6C4LqAAroX_JHo9qPxahcfBWmn04FOgr5sNzhHS0yCk16nP1tpSjLk83AKglnrBTtx2LEixeygUUchpCVhBLi2S1lHUlS0ezizTzI5-D8IQBRoFTyNJIhCundn0-0YCK5bKFT_zjyl4QZY?session=0&fife=s16383")
station26.photo.attach(io: file26, filename: "nes.png", content_type: "image/png")
station26.save
StationCharger.create(charger: c17, charger_count: 1, station: station26)
StationCharger.create(charger: c9, charger_count: 2, station: station26)
StationCharger.create(charger: c12, charger_count: 1, station: station26)

station27 = Station.create(name: "station-service Shell exit casa", user: u, longitude: "-7.630047799999999", latitude: "33.5066377")
file27 = URI.open("https://doc-00-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/lcrl9q35o54og3c5bg7t8qp6qo/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vbYQDkrksX4XF3ERDZjv5oqlMbSJOTwXU9f6ylqWIva02O_sUooyMBvX8LH7avIoVOeyDGNZuPmRDkqcaRKpBYGuEEEEt5fYMWarI0q3KuEbPdWXvwIsu9jtsAgAACEKv_kaMwg0Fvu5F8sT94Wt1b-E2VGQS9PZF3_bc2nOdr6tnELWmghzKDEKyX5sqO0xUk?session=0&fife=s16383")
station27.photo.attach(io: file27, filename: "nes.png", content_type: "image/png")
station27.save
StationCharger.create(charger: c7, charger_count: 2, station: station27)

station28 = Station.create(name: "Station-service Total Mediouna", user: u, longitude: "-7.5211441", latitude: "33.4540883")
file28 = URI.open("https://doc-0o-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/d88tq4g7r9s8rlmdakj6p96prc/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vaEKNE6MiQispAJhH43OMcJj5QXuKBA6c0pG8fVPD2HAJON2wfp-eQbn_Fp_71rFsaDTwzy6KtrrUtM8bWxJSJW7b8m0rpuzbzjvvCLOIgWTCKAL1J9zdhDF2h1Ni66s2AzKdrkZIJ-jzDVtcQavpiqeUHhREfOkoIrWNzYUn4b4oFpYZIXyiolm5KFZKiASXk?session=0&fife=s16383")
station28.photo.attach(io: file28, filename: "nes.png", content_type: "image/png")
station28.save
StationCharger.create(charger: c7, charger_count: 1, station: station28)

station29 = Station.create(name: "Afriquia Station Berrchid A7", user: u, longitude: "-7.573249999999999", latitude: "33.2225533")
file29 = URI.open("https://doc-08-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/nspj10punpgksd7sau2mqg2idk/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vaMzNb1JqqSktocgvvaXXz4za6v2PevH_CYlo3HXRDt3LCmkkFBSmyrfPFh1llFTh_ihRJEKrNlKbfchzFK3ta9lfDUBMHVDi-ZMuedUBlSAx5wd_PhPOJgYD9PNlEZVzn5Bxa8QHIhaD6UPBmDNnoy9FhJx_ouWHJX98moPlaSiQHfYpldezo71vyXREEFZrOn?session=0&fife=s16383")
station29.photo.attach(io: file29, filename: "nes.png", content_type: "image/png")
station29.save
StationCharger.create(charger: c7, charger_count: 2, station: station29)

station30 = Station.create(name: "Afriquia Settat A7", user: u, longitude: "-7.6678348", latitude: "32.897804")
file30 = URI.open("https://doc-0k-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/dk7jqmos12hg0drav27cu5kp04/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vb5DvSKcr4mzmiiEYo4pInQwYnVC-m7h3UdMPnf0Dw-2zcJBngcQDqCwrEJTHgro22zaaZEydKZ4q0JDePmEsPfIYvI81_OjAI8wYuCGZKh3R0beyO1Ttjwb-fbUpoF58eQwADL5dZnf4plEHQXOZX3ERIW9OhHR3lBAFm7p3PCpWUg30ifZw8CBusEAwhmkWE?session=0&fife=s16383")
station30.photo.attach(io: file30, filename: "nes.png", content_type: "image/png")
station30.save
StationCharger.create(charger: c7, charger_count: 1, station: station30)

station31 = Station.create(name: "Winxo Oum Rabii", user: u, longitude: "-7.794542300000002", latitude: "32.62973")
file31 = URI.open("https://doc-10-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/mmku21vq0m84ku64enluij29nc/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1va6FpX8c3Xb2U46O9snDaaoqmJA8TZJ1y9QeR2edefvln1aqyu-7fbGxpM1AYsKev-l9PTLVLSDqCvC3PwjqAa4RapnuRDZUpYfPDO5YmHFmjsHb1-9zhuIkH5CHGI3RFEngZoPSU_IP49Zo3qoGe6bUZTpBtjPoydbQ98Tm8ye2tQhOzQ3a-E-0Vgrd7ipIWzu?session=0&fife=s16383")
station31.photo.attach(io: file31, filename: "nes.png", content_type: "image/png")
station31.save
StationCharger.create(charger: c7, charger_count: 2, station: station31)

station32 = Station.create(name: "Shell Station Benguerir", user: u, longitude: "-7.9694417", latitude: "32.2738617")
file32 = URI.open("https://doc-0g-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/b71bpfulo887poptdtmkcj3t0o/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vZyiVTKOfsjFC-ZC4_vgZycy6_cS4tpEpx3Rb5hrh7SypGbw8cJaByXzAgWBfMoPNuQto-H6q_Et-kowlTF9Ls04yv8s7fJN7JQ35l3o0fCVjUtw3saZP0r4eIu1C4AoKAfZn_KK0ifcjJiZvSiC4CJbIEcRAQOeJAWW-Kv-4sQ4g0ygW0OzomJGuMtYYRsRRsg?session=0&fife=s16383")
station32.photo.attach(io: file32, filename: "nes.png", content_type: "image/png")
station32.save
StationCharger.create(charger: c7, charger_count: 2, station: station32)

station33 = Station.create(name: "Green Energy Park Charging Station", user: u, longitude: "-7.928971900000001", latitude: "32.221195")
file33 = URI.open("https://doc-0s-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/ommeop2sgh2e1lkd9ptaa26jc8/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vZq45rHW-XZLm0aLFRBcS7LvrkSRyqQ0WV554AQlk7jSFcvgIt0znBJHmcMxK_MsH8JG6NYmlWoHwRcocoh_oRfQDwq3cWyQpM-U0g1V2UICB6zhOXz77HwsMiiV1NNbBJ_eiyakusMxS12e0ZVT3z6ttbjR-V_70u9gJ-PxtMZdczJSQho4zGdfUrqFchnLg8?session=0&fife=s16383")
station33.photo.attach(io: file33, filename: "nes.png", content_type: "image/png")
station33.save
StationCharger.create(charger: c7, charger_count: 6, station: station33)

station34 = Station.create(name: "Afriquia Sidi Bou OTHMANE", user: u, longitude: "-8.0241126", latitude: "31.9179536")
file34 = URI.open("https://doc-14-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/9fflg9po6e3h0v4m6gd5ocr2tk/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vYZ6casdM0ptPe9CN4ODNIuMZ3DPaWaREFFFuW-dqW0siUPlBVglkFY9YMliF-oWL8ydfGlqqRul_Qac6vKDJ0IO2hgYK_8W2W89wW1Heo0zYQJ8dJtjsfHWfmP7YmljHwlK5-zpzLs7DOnQ7JltLAEytNNnPwcVnQ2z1zP4azbSwnfvJeat0UC0mq8h41MHZTW?session=0&fife=s16383")
station34.photo.attach(io: file34, filename: "nes.png", content_type: "image/png")
station34.save
StationCharger.create(charger: c7, charger_count: 2, station: station34)

station35 = Station.create(name: "Station-service Total Djebilet", user: u, longitude: "-8.019272799999998", latitude: "31.6457998")
file35 = URI.open("https://doc-04-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/437oounp2uhs56k6naogb37mak/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vYn2c6KsbVm0vjDsWxp2FEH5lv9XxngEYaaJMkt2PqtOzmCPy27oxQGN6Cx3L3nDAZy5LAbX7CBREAE0J6SkUW1yYZCsVKUl_PfJLjuaQ_lR0RFdRYb25SgJVrnIiwLrbIoNYWXWNycVQOuy1PRDEfnqLEakG3w5szQ3XYYqQ2tt6NQrOq--otpFmdrP0ozGlFF?session=0&fife=s16383")
station35.photo.attach(io: file35, filename: "nes.png", content_type: "image/png")
station35.save
StationCharger.create(charger: c7, charger_count: 1, station: station35)

station36 = Station.create(name: "Avenue Mohammed V Hotel de ville Albaladia Charging Station", user: u, longitude: "-7.998004000000001", latitude: "31.62839529999999")
file36 = URI.open("https://doc-00-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/71f12rb2v9bot73mapekqadii4/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vanPQnry8mxjROsKjEuLctMaF7yvKYbWsFV4R8BN7NvB-uPQa860c6LY0tY86ONyUiByaGM-Og9CTERDzfUzy1-BExmu1Vt-hCH8oIyam_V2k-ET9_n1-HRZbK4p1nvAeXejyeul7UTgOZAd2aQS7KUR2BzNtp7ohnMOLs3qG_wp0PU8nbmnPbZ7W6BSnfOgJY?session=0&fife=s16383")
station36.photo.attach(io: file36, filename: "nes.png", content_type: "image/png")
station36.save
StationCharger.create(charger: c8, charger_count: 1, station: station36)

station36 = Station.create(name: "Mövenpick Hotel Mansour Eddahbi Marrakech Charging Station", user: u, longitude: "-8.014418", latitude: "31.623871")
file36 = URI.open("https://doc-08-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/uk75i5aqdctfqu7ti0gkaipblg/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vaedVidWERBf0CxZEuVkqOBN8ss-xcOtAcODpS9ZTI5OueveSu5TkUCvbTVPXfOq11DaE9AcRRWXrjaLTUHmYyzDYp2-k2rPBUM6R3PODyFN86wXPoNPzz1xkeILGYkXhFKHnIPoBc_hSLnR3nVnbi8eY1O1GsA7NT7GiMjwyhBY36KdgtGUfLMoNakqsmJlEU?session=0&fife=s16383")
station36.photo.attach(io: file36, filename: "nes.png", content_type: "image/png")
station36.save
StationCharger.create(charger: c4, charger_count: 20, station: station36)
StationCharger.create(charger: c8, charger_count: 2, station: station36)

station36 = Station.create(name: "Station-service Total Moulay Ali", user: u, longitude: "-7.991584700000001", latitude: "31.621301")
file36 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3ddo4nysrzo9QavOw2mOP4IoGLPBrN0cMfC3PSsi_mlS3B7sa-lawqTCOqGdRpLzdYC8VNBQYJG4Bi9rxHD7henoBgF9GX7tEwOI5xaiTVMhqOelW-IkdLFchNiUb_VWgMgb11J6irj1AUAMezP9KHjNk9_0IiqrMqUlSSVm4KP6Itk&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=24799")
station36.photo.attach(io: file36, filename: "nes.png", content_type: "image/png")
station36.save
StationCharger.create(charger: c17, charger_count: 1, station: station36)

station37 = Station.create(name: "Avenue Annakhil Charging Station", user: u, longitude: "-8.046673799999997", latitude: "31.5923965")
file37 = URI.open("https://www.lavieeco.com/wp-content/uploads/2021/11/IMG-20211117-WA0015.jpg")
station37.photo.attach(io: file37, filename: "nes.png", content_type: "image/png")
station37.save
StationCharger.create(charger: c6, charger_count: 1, station: station37)

station38 = Station.create(name: "Restaurant Gusto Marrakech Charging Station", user: u, longitude: "-7.982319899999999", latitude: "31.57813799999999")
file38 = URI.open("https://doc-00-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/3luso6q9f1kp7c9lj378adkf50/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vYphy2YXCreoiLghD9iXvsLSwpybp6nmB_A9n86x29QZvje2ddxd94JXhGc5ReXCBFUB622qdNqXX8quyIyntn-WpPY-IApsfOY0xVzeBjIhsdwz_plBJ00ssMFfjctZc7apyvQreDl-3LILhij2Wt4WCSvNYH8_9ScNr3__CsY-SoNtvZzRnXDSIXWJo3-sR4?session=0&fife=s16383")
station38.photo.attach(io: file38, filename: "nes.png", content_type: "image/png")
station38.save
StationCharger.create(charger: c4, charger_count: 1, station: station38)

station39 = Station.create(name: "Station Sun Park Charging Station", user: u, longitude: "-8.163924999999999", latitude: "31.602166")
file39 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3ccLvH8W1PXPTeqVZIUv0LC9nUAsiZVbYfVa3fx1I344C_dTLVPNckodSD4LgoVgHHAm3lyGdUzFvqPMsdT7UwHsbtAGqd3mrYIxcQmw7YmxiBe8_5X7mnYtq_ars9YeymyrcdWVohMsgYAqyy0eLT4GaClvgLN3WY59wlqG9aqYeSS&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=85122")
station39.photo.attach(io: file39, filename: "nes.png", content_type: "image/png")
station39.save
StationCharger.create(charger: c7, charger_count: 1, station: station39)

station40 = Station.create(name: "Station Total Relais Chichaoua", user: u, longitude: "-8.6551811", latitude: "31.4871058")
file40 = URI.open("https://doc-04-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/o7fnsi4be1hvfd4kk5mp2gac7s/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vajklfIb49PI3D7YmiZ_7CGkodZ6lBsIznnSORHfgyZVdkWQxYS9grOVn6uurHlAjUTIZfuwqf1mcxtXo9iQ3RVqft7v4T6QD0E2BjVd7t8UTBZSzghAftASrodN-GPtf18ItYylE742U_67SGwk1DQQifHGoeU08WSSSNpemzCeuooRKRdpCrGDMu6CMLoWv-h?session=0&fife=s16383")
station40.photo.attach(io: file40, filename: "nes.png", content_type: "image/png")
station40.save
StationCharger.create(charger: c7, charger_count: 1, station: station40)

station41 = Station.create(name: "Station-service Total Relais Amskroud", user: u, longitude: "-9.3203443", latitude: "30.5356435")
file41 = URI.open("https://doc-0s-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/mp4gipc53c48kr66p6s3j59css/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vYP7B9cva4wivK0XLy8qhAV78gZrZLKr-_fwejMRfNQpmC2ndsRIiraz91TNJq_NgBhHn7TZlEhjdpiO8UhJn1vtmCiFi27NJsOj1KNEzXgoxyWxXCRwrr-2kEm8Ea68Sxl1gGpUuw5hCifmNYiy3JsxMmnw5NV1XHT5QcC6boFYB5T52KPeHW6sRQtU1CgqyJg?session=0&fife=s16383")
station41.photo.attach(io: file41, filename: "nes.png", content_type: "image/png")
station41.save
StationCharger.create(charger: c7, charger_count: 1, station: station41)

station42 = Station.create(name: "Atlas Kasbah Ecolodge Charging Station", user: u, longitude: "-9.490068899999999", latitude: "30.4319642")
file42 = URI.open("https://doc-0k-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/hf687t4gv9lpna0nj1v75pc1m4/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vZN-x_y0MmwQMVYGSRarldkTynDya3yyzjujBNkvA3fnvOx6Q2_-l9A48wZ2ehVqVhlDYRpwM4KRtBpozYqHytSjQ2u9NAooDI6tjqyFyT1DRu036rF4uC1_6YXY80Lvu-iGkw376inM5rYgPkByHH--KP5LaJyfbeumQOollW4JK7m2W9RvFcgZu-KYsqSdzE?session=0&fife=s16383")
station42.photo.attach(io: file42, filename: "nes.png", content_type: "image/png")
station42.save
StationCharger.create(charger: c4, charger_count: 1, station: station42)
StationCharger.create(charger: c16, charger_count: 1, station: station42)

station43 = Station.create(name: "Port de Tanger Ville Charging Station", user: u, longitude: "-5.803471399999999", latitude: "35.7854927")
file43 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3e6ShTvKRGduEwZHLFYj-VKiNIsrDyLjdSlBZRdANPDI4jkQIt5pKoQHmuVjeWyInz8Yfy27rHKeqBvUGowg0OEj5Jue2mIMenUqTNuCri-2r67buFyig-qXfW2PAiStmFkHBt3JeAcTfi0CBQ3t9-8kLRlP_3nVY9btxd0wSSp8O5i&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=7505")
station43.photo.attach(io: file43, filename: "nes.png", content_type: "image/png")
station43.save
StationCharger.create(charger: c8, charger_count: 1, station: station43)

station44 = Station.create(name: "Villa Carleton - Garden Café & Restaurant Charging Station", user: u, longitude: "-5.825603800000001", latitude: "35.7797302")
file44 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3dSYQFOhc-wns62YDafa6Llc5s8XZTtDb5tWFopeuiX1v0Dg1V-iWysjYd90vXJEaGcZzWD_bnAFlRFCRoEf2ipOlCFLXqClWdW-demykpyIEhVpxtjlVooYRXNXSg_DLloHjXE6wbnmiLxO63ukb07HAJ7VAJOOdi603lfC79XUuID&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=79416")
station44.photo.attach(io: file44, filename: "nes.png", content_type: "image/png")
station44.save
StationCharger.create(charger: c8, charger_count: 1, station: station44)

station45 = Station.create(name: "Kenzi Solazur Tanger Charging Station", user: u, longitude: "-5.797889100000001", latitude: "35.7768292")
file45 = URI.open("https://doc-0c-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/g329tinmnpfdhpbssnkpeajl74/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1va8PMvb2TlTiDujWWwBL5UBRpZ_YN-bDwNrkH3jaTrnVv339aF9oDZKU2XDHmZ_mj5J9fVAqNjNjIcy-ppqlc3CFXthiM2XU-InxLO-8MYhvymVWT_KpB-AO_BDqIWretqLAqtCU7R_HsOHgRbwb6800aUI3GJUmYjrA1qUGDb-PcCkayJJhlXawPH2m-h_eZgc?session=0&fife=s16383")
station45.photo.attach(io: file45, filename: "nes.png", content_type: "image/png")
station45.save
StationCharger.create(charger: c8, charger_count: 2, station: station45)
StationCharger.create(charger: c16, charger_count: 1, station: station45)

station46 = Station.create(name: "Ceramic pro Charging Station", user: u, longitude: "-9.585573000000002", latitude: "30.4174016")
file46 = URI.open("https://doc-0k-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/5he4v5nmggbfll8o68g7g1bgs4/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vbSDLSGq3c1Vq1pHjX61PbQOgLaflrSEbMY2Xj0Dzry76KQHPquRyTh-JdUVnctwxGDAEgr4ptlSeFsUMPVEpE5WwmmWPw4GfdKJpXF_3gqfHOqwtZ0tv36kEfZVXHY-Bjy1Nq-BeZzvYul4-tGEaOkkNGgT_VfCbkARePhrGUGKvHdC7HAC-dm-M6YYVPa0YZU?session=0&fife=s16383")
station46.photo.attach(io: file46, filename: "nes.png", content_type: "image/png")
station46.save
StationCharger.create(charger: c8, charger_count: 2, station: station46)

station47 = Station.create(name: "Kenzi Club Agdal Medina Charging Station", user: u, longitude: "-7.984051999999997", latitude: "31.5787539")
file47 = URI.open("https://doc-10-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/klfip8jo2tc6pepgc654lh8fho/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vY9HhWQAduERSQRGUm_Fyb7eHkx7W3FMuMxmmETcSzG5J6siA3jfbD8gK-T5wUIi3JadhR7sZrhPZ6-IyBuwC0r5e_CzOZL7UkEgvlTPJ5m92aKe9BEFhgt4pboNSx-VOu7eA13F_DYuMTzeDjzRnV4AgeDbQ2lAr0IGztRu5Fan8FVBslvJjcvD6OO1H-Y7V3l?session=0&fife=s16383")
station47.photo.attach(io: file47, filename: "nes.png", content_type: "image/png")
station47.save
StationCharger.create(charger: c8, charger_count: 1, station: station47)

station48 = Station.create(name: "Station Afriquia Targa", user: u, longitude: "-8.234799200000001", latitude: "31.72004480000001")
file48 = URI.open("https://doc-0g-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/v1k03jfbe3muvjb3dhho4c892s/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1va8fz6q32KBHIzo0Wha8_-Bjb8Ysi5pvMDOBNFZAmR5bz6xkjaPng4nd0hRGUpY_mfMz8Ph3aAk0xsP0Ew5_M1-nilulwseO-JWURkWpZXbZP6Vu44z7Ia9Q0GwhCnEbW8F34dSGWP2vLddz2de_PW5FG-0AMfky7JKYnmLacp75ehUSEKyrFnZMNRPaLTi1Ls?session=0&fife=s16383")
station48.photo.attach(io: file48, filename: "nes.png", content_type: "image/png")
station48.save
StationCharger.create(charger: c8, charger_count: 2, station: station48)

station49 = Station.create(name: "Parking Place Rachidi Charging Station", user: u, longitude: "-7.6244444", latitude: "33.5920446")
file49 = URI.open("https://doc-00-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/203vo8dnsqffkgfdkst54k3ask/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vYAmHgbl1S2qo3_Og1W3ZY1WoKCr9W3cRwds2HJwnPBdyHZGSGKjY1VnsoVosWjSVOW1JOSGadqqieV-gSrBiB7JEKLG2K2gyZwfNfBwZXBSJnTIF5qoTc8ydXGLApCth2EdhmqiqnGp5tk485RdfXJ9zr56Y6uCJb6e3oeYvOuxDHVJHBwxrvQZRMGEfGqpkE?session=0&fife=s16383")
station49.photo.attach(io: file49, filename: "nes.png", content_type: "image/png")
station49.save
StationCharger.create(charger: c9, charger_count: 4, station: station49)
StationCharger.create(charger: c12, charger_count: 1, station: station49)
StationCharger.create(charger: c7, charger_count: 2, station: station49)

station50 = Station.create(name: "Smeia - BMW Motorrad Charging Station Casablanca", user: u, longitude: "-7.5524038", latitude: "33.615372")
file50 = URI.open("https://doc-0c-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/n2dpfhp9ehdui143j0l44v6jc0/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vYg9WbMrwLqgCXxFb5RIGZrJMIXxoqTzs_VQaweEIJsoLCu01SrKYtsyTxLKpnj_3WplEeSInyQjUq9JrO1E5IvgUPJXjG0EYyRW3TtGgALsjLHOOkyJQOVbZ_wl9F3Y00KJJqgjdy9pyVGDfn4ZVc3zswiGOVAuXwoLyteo8KdFhoIhB1P5Sk1ifYMlssPk3fv?session=0&fife=s16383")
station50.photo.attach(io: file50, filename: "nes.png", content_type: "image/png")
station50.save
StationCharger.create(charger: c8, charger_count: 1, station: station50)

station51 = Station.create(name: "IMARSI", user: u, longitude: "-7.578887", latitude: "33.594066")
file51 = URI.open("https://lh3.googleusercontent.com/p/AF1QipMDrBTo1xcD63jnj0Iy3gk5Fevzwen27p7WxSCN=w1080-h608-p-no-v0")
station51.photo.attach(io: file51, filename: "nes.png", content_type: "image/png")
station51.save
StationCharger.create(charger: c4, charger_count: 2, station: station51)

station52 = Station.create(name: "Station service shell Bouznika", user: u, longitude: "-7.232718800000001", latitude: "33.7796735")
file52 = URI.open("https://doc-00-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/4r17bb719m0fdo9gg5cjhpir68/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vZcAK1PCqAE1g9WTDdb-8nB28uBpegwG48VT64K5iHMenKCIvUA1vZhTezXa7bhCd3N_Lv3tmrxlopr_g6mWxTgw53Nm2B10A0d72yrxbTTzFeM1TiLbAX4LKhKL6J76wsGAj1tHO9F7Kj4HKRvk9I8rduCbLy5N_z_CtY7dREx7hjXgxzYGZD3hQsc6XOfad8?session=0&fife=s16383")
station52.photo.attach(io: file52, filename: "nes.png", content_type: "image/png")
station52.save
StationCharger.create(charger: c8, charger_count: 2, station: station52)

station53 = Station.create(name: "Mega Mall Rabat Charging Station", user: u, longitude: "-6.830362999999998", latitude: "33.967815")
file53 = URI.open("https://doc-0k-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/rmrohkmqamo1dboo33h12fjr34/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vb1SEeqm91iPQur2wAAbO2aSDYxvti7XHhSTSR-htH8nIXdOzXnvHIJ8duY0KiMU5lSOlMSkYdUDH3phWUv23E7SK3fzag6YmlON-J3MNkM6Q1FxgjHJU-wWTTks1r-dhCVXPbW1jGREUh7KcZBueozMiZW49FfYUWMUKhRXqHvzvOgPquENgXcOMoI-nG1kdNi?session=0&fife=s16383")
station53.photo.attach(io: file53, filename: "nes.png", content_type: "image/png")
station53.save
StationCharger.create(charger: c8, charger_count: 2, station: station53)

station54 = Station.create(name: "Royal Tulip City Center", user: u, longitude: "-5.783708", latitude: "35.77325239999999")
file54 = URI.open("https://doc-0k-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/d8jevd84n1tksdj7phlp452cdk/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vZh_qazornxpoMw8oUZhxU7Y1XtOJWhoTSLywSCST3jxGs3V7y5E2OTtFYgFrHeiGlCM_r1dSqYW4OlURN9oGjC2kwGk5yDPFT9UVhQqQTitf0icDW97Vh6ZQUVIme-Qm4tBdtMrKB7HUd2s_TkN3IXtTrVS6gJUvNV2IZ7Pt-l0hDw3CWCg050_biAczKBPj8?session=0&fife=s16383")
station54.photo.attach(io: file54, filename: "nes.png", content_type: "image/png")
station54.save
StationCharger.create(charger: c4, charger_count: 1, station: station54)

station55 = Station.create(name: "Station Total Relais Agadir Avenue Al Moune", user: u, longitude: "-9.563349299999999", latitude: "30.4279962")
file55 = URI.open("https://doc-0c-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/lculjf1bf7v0vmvt356pcie5p0/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vZcK11gmbfnLHvL7Rgmyh-_2NnUBhpEerYv1KyFFV9n_9I3fvFH2SuZenlok70yco0UvIN3o1cKAB99dbDNA9Wze4L_GIW2FehZH7T5VNnpvXuePquW9g0n5hYxDcuAi1cIoeAytCe1XZFWitHnW7NpfJxiRcfyDhzJXuXlZ3ENO9XzZtgjc2bde0PlQ-wd4qCo?session=0&fife=s16383")
station55.photo.attach(io: file55, filename: "nes.png", content_type: "image/png")
station55.save
StationCharger.create(charger: c8, charger_count: 1, station: station55)

station56 = Station.create(name: "Venezia Ice Charging Station", user: u, longitude: "-9.5917518", latitude: "30.4257496")
file56 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3fBsQvGyB5QoxOoBJPKvxe0k1zLLKQP70osbTTJ78aHRW97hJ0HmVXJDbvMoaSvatX3d4zWf_a_9wOewUuqvOY3FEwbY8fCMJUdz6vlwBUoc8WN8q37F8Z45dRmkyRc6DN0hnv3aP1wkykbTowGSx_xvltm3jBs65uW6FZqBWwbsWFn&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=113854")
station56.photo.attach(io: file56, filename: "nes.png", content_type: "image/png")
station56.save
StationCharger.create(charger: c15, charger_count: 1, station: station56)

station57 = Station.create(name: "Avenue Prince Mouly Abdellah RMEL LOT Charging Station", user: u, longitude: "-9.5427947", latitude: "30.3613178")
file57 = URI.open("https://mapio.net/images-p/7824403.jpg")
station57.photo.attach(io: file57, filename: "nes.png", content_type: "image/png")
station57.save
StationCharger.create(charger: c4, charger_count: 1, station: station57)

station58 = Station.create(name: "Aéroport de Tanger-Ibn Batouta Charging Station", user: u, longitude: "-5.9129097", latitude: "35.7258603")
file58 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3erDXcCYZJsAAoRehb4rJlcigEMQ4YgJ0mKdkOmKQ12YdmTucsFPQNpRH1hqmXJGjvsjrqtaz_xC8-lBUYh-v-b8ouhKcnmPTX3j69TWStxabmmU5K6CHNaU7YJh48FJckWRhrP03cwmqVy_DyA9rvNBLuQ_l2jxoCwZMrEBgk0zSSd&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=57403")
station58.photo.attach(io: file58, filename: "nes.png", content_type: "image/png")
station58.save
StationCharger.create(charger: c1, charger_count: 1, station: station58)

station59 = Station.create(name: "Novotel Mohammedia Charging Station", user: u, longitude: "-7.395683", latitude: "33.707114")
file59 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3fMU6km7ULtaSD56SIpTfmoQ0z3vzv4Tvo5UluaN2dvFzwp8f4bEsCrBmuhstALLFXM3C52uTKnJCznTzhCxk4BcczQT_c_MK3JjKThvbMaEKKURZqyb83AoeO_6S0D4O4AnuxpiBhLAok8WVYx76IlrjO7btAedS8ViQPx_W53xgz9&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=125918")
station59.photo.attach(io: file59, filename: "nes.png", content_type: "image/png")
station59.save
StationCharger.create(charger: c6, charger_count: 1, station: station59)

station60 = Station.create(name: "Station Total - Relais Chaouia Berrchid", user: u, longitude: "-7.574891099999999", latitude: "33.2233928")
file60 = URI.open("https://doc-0o-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/nabsudsbf2il786r58g95659lo/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vYqq8VzTVLjoZf-YlDAzZ6ssKF46WKUHRTgzyHKBrShwc-CjKI41URQu80vnF6cokyHe9cWgnxnwbisu_L6cDGRLXLqg2TfTCht70RYUz2LyZu950Rv--XVnpBcIy9GWh2yKKbtqlR6Cb91UKn9mp8BLhkWgitnzFn62tvITcDL3oLKRcpanWiRIl-8ifRoPZDg?session=0&fife=s16383")
station60.photo.attach(io: file60, filename: "nes.png", content_type: "image/png")
station60.save
StationCharger.create(charger: c17, charger_count: 1, station: station60)

station61 = Station.create(name: "Hay Al Massar MARRAKECH", user: u, longitude: "-8.03852", latitude: "31.66928099999999")
file61 = URI.open("https://www.voitureelectrique.ma/wp/wp-content/uploads/2018/07/borne-recharge-electrique-total.jpeg")
station61.photo.attach(io: file61, filename: "nes.png", content_type: "image/png")
station61.save
StationCharger.create(charger: c8, charger_count: 1, station: station61)

station62 = Station.create(name: "GTR AGADIR", user: u, longitude: "-9.5292275", latitude: "30.39698609999999")
file62 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3fWCIn6yIC_3Fp3N6LUq2z2PTY13yTK_F0ZNpc1E8d8WO5rs4AHXUWQKlzn4iconX2SSTG5KuCh6cIJCpt-vlsS2hTii-KU37JTDxCuZutzN3tbvuenNQPazAwU5kGH-0jn6q6afw544m826CMKTcbr_jG7f_Gutm99DhiKzi-UR4DT&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=29160")
station62.photo.attach(io: file62, filename: "nes.png", content_type: "image/png")
station62.save
StationCharger.create(charger: c8, charger_count: 1, station: station62)

station63 = Station.create(name: "Star Bobinage", user: u, longitude: "-7.546089299999999", latitude: "33.6132456")
file63 = URI.open("https://chargemap.s3.amazonaws.com/charging_pool_photos/url/840x560/97870/station-service-shell-exit-casa_97871.jpg")
station63.photo.attach(io: file63, filename: "nes.png", content_type: "image/png")
station63.save
StationCharger.create(charger: c1, charger_count: 1, station: station63)

station64 = Station.create(name: "Villa Josephine Charging Station", user: u, longitude: "-5.840486899999999", latitude: "35.7924608")
file64 = URI.open("https://doc-0g-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/najej6mfkcfasn2pr3nm28o320/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vZrkw8g25MrHc2l8rZUx5RSERxfOG7bYHeqVsS6N4QDpqvfQvgPzyYdWRZ2RjCChmItBtgm5-xWemetP8jkwRERVnqHAN8Y0SHIL9J3Cs273Xfsd5RgNRQoy37nlx_u6FWsVHljKu5JOYOwQk-bUIWYOCnMuu3nNl0O1ToCOUfj5RGyBfQcOo35tnMtTzCjMS9_?session=0&fife=s16383")
station64.photo.attach(io: file64, filename: "nes.png", content_type: "image/png")
station64.save
StationCharger.create(charger: c4, charger_count: 1, station: station64)

station65 = Station.create(name: "Kech Boutique Hôtel & Spa Charging Station", user: u, longitude: "-7.988493899999999", latitude: "31.58694")
file65 = URI.open("https://doc-14-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/hs06ciko5qa2cua2903hsqa7n0/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vYriIzdnoaf9PHH11rsFpXT0lle7b5GWpxnsQ_albj2z70ks3ERRR-xF_bYyH43ireSFZQgNzGXxwl1rkY7ugG6i_DaqBQPYyVEwEjdnHvmLvjqbKkErou5RB3TbjCxYmkfsCWc6BNWj2t0HuTmyQG29O0sl7TgLMfIecqMxXN4qFoxizL0w-JC_h6jXroyuQo?session=0&fife=s16383")
station65.photo.attach(io: file65, filename: "nes.png", content_type: "image/png")
station65.save
StationCharger.create(charger: c4, charger_count: 1, station: station65)

station66 = Station.create(name: "Direction Régionale de l'Environnement - Région de Marrakech Safi", user: u, longitude: "-8.005622899999999", latitude: "31.629386")
file66 = URI.open("https://doc-14-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/k0bh2d1840glua932mll5sbte8/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vZ-4eFytpQsAwOf6oQ7qYhLxBs_1RtmiA9PX2jFQdYenhCOvn0XpGFyfMjXECigSUcom3DTb4Oca5EGByaMpVXQKZS5gvX_FbEbGd9dR5kTlheN9KIw6bQL0_sYKa-4X30qbi4UWwPqTjsCCbndM7YbeoQYZAaHd5pkNW5gRVAHbxH4bxTAqjeRftN7wlqITJXn?session=0&fife=s16383")
station66.photo.attach(io: file66, filename: "nes.png", content_type: "image/png")
station66.save
StationCharger.create(charger: c8, charger_count: 2, station: station66)

station67 = Station.create(name: "Station SHELL Saf Saf kenitra", user: u, longitude: "-6.580976799999999", latitude: "34.22873999999999")
file67 = URI.open("https://doc-14-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/emk1jinjggnk9i7ijhahhjuvvc/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vZ_hGSfKIAW3eLUDs7RBVvZaNcfPIVv-RcP5ZaXc7Asfb5RUd214fXZegJgb9LvzbUj4tlsTHq18NNTL3eU03qAc8m8dP6nOqpm-ukqxNZ-YyO1QkkJKApdJ8QGD-j6g5Iqan801oDDgwjDvWr6R4CIsojSToCUj6UxHRY1AT1yXuIsf1GM1aEv5kNvbyl7Mx7S?session=0&fife=s16383")
station67.photo.attach(io: file67, filename: "nes.png", content_type: "image/png")
station67.save
StationCharger.create(charger: c8, charger_count: 2, station: station67)
StationCharger.create(charger: c12, charger_count: 1, station: station67)
StationCharger.create(charger: c9, charger_count: 3, station: station67)

station68 = Station.create(name: "Station Total Relais La palmeraie", user: u, longitude: "-7.9781948", latitude: "31.75600500000001")
file68 = URI.open("https://doc-0k-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/8ptn5p6nlflq4ci976urg287s4/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vYqIqkIIXjT0114bgaZ88A4TZCMNTrWIJAvxAltKPj-PzGOMEyVdwu3xq3STjiJ0bJNmARvK0YCSY9YdZvOh5PxTQqrKcFo618H6Mq0I8_d9N42_vGuffYFvjdC5TbVuPbIllSCx6hgYpw0HQhhPrnNUmgoSljyiG4hExn7flkMjsFg0egSh3Af5ZDhdzL4gNY?session=0&fife=s16383")
station68.photo.attach(io: file68, filename: "nes.png", content_type: "image/png")
station68.save
StationCharger.create(charger: c8, charger_count: 1, station: station68)

station69 = Station.create(name: "EVBOX Charging Station 17 Rue Ibnou Khallikane", user: u, longitude: "-7.625635299999999", latitude: "33.581867")
file69 = URI.open("https://giz-energy.ma/wp-content/uploads/2022/08/AF1QipPIa1quZKGiSrULWyKmur5keAVTxC8DchCV_Aygw1600-h1000-k-no-640x480.jpeg")
station69.photo.attach(io: file69, filename: "nes.png", content_type: "image/png")
station69.save
StationCharger.create(charger: c7, charger_count: 4, station: station69)
StationCharger.create(charger: c16, charger_count: 4, station: station69)

station70 = Station.create(name: "1 Boulevard Hassan I Charging Station", user: u, longitude: "-7.620923599999999", latitude: "33.5944677")
file70 = URI.open("https://c8.alamy.com/compfr/ry7pa8/donnant-sur-avenue-hassan-i-au-coucher-du-soleil-avec-l-ancienne-medina-dans-la-distance-casablanca-maroc-afrique-casablanca-settat-ry7pa8.jpg")
station70.photo.attach(io: file70, filename: "nes.png", content_type: "image/png")
station70.save
StationCharger.create(charger: c8, charger_count: 4, station: station70)

# station71 = Station.create(name: "1 Boulevard Hassan I Charging Station", user: u, longitude: "-7.620923599999999", latitude: "33.5944677")
# file71 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3cGCd1FxOZ0vtu1vfxPuN-EJ1Qz4SMFF29sriwNfZhpWoQr1oyVUmByhbw2jFArtrTQEIQpIVl83maqdS9RQck-RkIkzfW5TnkjytGE2PbyhT9izE-s4M-9OlrZPb5zJx26OaXv5XYVeYHjHO7ysbaLLZ16T79R6E8HTLxUP2BMfG8&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=61934")
# station71.photo.attach(io: file71, filename: "nes.png", content_type: "image/png")
# station71.save
# StationCharger.create(charger: c8, charger_count: 4, station: station71)

station72 = Station.create(name: "Avenue Hassan II Charging Station", user: u, longitude: "-6.873752199999999", latitude: "33.9810772")
file72 = URI.open("http://www.rabat-maroc.net/wp-content/uploads/2019/04/av_hassan2_16-large.jpg")
station72.photo.attach(io: file72, filename: "nes.png", content_type: "image/png")
station72.save
StationCharger.create(charger: c8, charger_count: 2, station: station72)

station73 = Station.create(name: "ev-box Charging Station Mediouna à 800 mètres Station Total Mediouna", user: u, longitude: "-7.521085599999999", latitude: "33.45425869999999")
file73 = URI.open("https://chargemap.s3.amazonaws.com/charging_pool_photos/url/840x560/236795/Total_Mediouna.jpg")
station73.photo.attach(io: file73, filename: "nes.png", content_type: "image/png")
station73.save
StationCharger.create(charger: c8, charger_count: 2, station: station73)

station74 = Station.create(name: "Station Afriquia Sortie de Marrackech", user: u, longitude: "-7.997997299999998", latitude: "31.6793269")
file74 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3e52-ymm12Hbamge7QdamYJRjQqhfZ5s83yp39F5Ge9NiGB3YBEjhosKS9AOEk4sFAQ_u-kRg0zIQ0nz7ecMIBJ7zlflfILqS3g7JFNVdSsKH3cAfIsjb39UPrXTq5BIDhG8puaxEZgXn3RZ8Wy0f8OzRfods1JICPKFktaItJBAcSF&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=75510")
station74.photo.attach(io: file74, filename: "nes.png", content_type: "image/png")
station74.save
StationCharger.create(charger: c8, charger_count: 1, station: station74)

station75 = Station.create(name: "Afriquia SIDI BOU OTHMANE N9", user: u, longitude: "-7.945110799999998", latitude: "31.922936")
file75 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3fmxnid8c-5TWVijo69es-6cJwNB4MX2BQS1GT2rbqR-aNl8lFYFZHZ4jcVy6O_1lFcN9Ri5i5HX_DzqTNg_XgC2YmN36TVCPd77N8AEI1mVKXp-O9GrXIfFxASPHot337323CIIA_njVPz3wPtqqWbcXF01wq-MEdKuKHj-ob8Ahu_&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=60236")
station75.photo.attach(io: file75, filename: "nes.png", content_type: "image/png")
station75.save
StationCharger.create(charger: c8, charger_count: 1, station: station75)

station76 = Station.create(name: "Station Afriquia Imintanoute Agadir vers Marrackech", user: u, longitude: "-9.0238443", latitude: "31.0244103")
file76 = URI.open("https://doc-00-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/bj27rnuu82qlnoa3tpkb6hmimk/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vYxwr2pvQs3-V_pfoGe0tUysuN7LeDJKNwlxklh0b4jJa2rDXza9ovL7EsbyQJ88_2kmjH3tn99kuXlHt5dxbInEqQIyHFnjcooHf0xSPubaQo4gxCyNUz-XDxNJgFPuZ8U3FNiyMTCFKSeSYGeomMwRgIw7V9niZofung358QKfa79HpvIP0NoM3nDkA6SX0s?session=0&fife=s16383")
station76.photo.attach(io: file76, filename: "nes.png", content_type: "image/png")
station76.save
StationCharger.create(charger: c8, charger_count: 2, station: station76)
StationCharger.create(charger: c4, charger_count: 2, station: station76)

station77 = Station.create(name: "Station Winxo Imintanoute sens Agadir vers Marrackech", user: u, longitude: "-9.024592599999998", latitude: "31.0260318")
file77 = URI.open("https://doc-10-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/th39bd0s4l1dc7njg85jj6sfn4/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vZOjQi8lRV1DH8fDIuv0Z68BcV52yUJ1MMpCUc2X0AvavLiyxt5PP_JbrP-8BMAsfja29UPbVWNwS08XYAgyHDe38F_qlUO15yNUFuuAwl7fF__fF5e3wTYTATF1xj3booqgWG8-tDIt3mk0Zvf_59__fgnQS3wEX6wNtIkQcbpEtj-2EFkkv5TAtWku3iTj90?session=0&fife=s16383")
station77.photo.attach(io: file77, filename: "nes.png", content_type: "image/png")
station77.save
StationCharger.create(charger: c8, charger_count: 1, station: station77)

station78 = Station.create(name: "Lixus Golf Resort Larache", user: u, longitude: "-6.1340129", latitude: "35.22754339999999")
file78 = URI.open("https://chargemap.s3.amazonaws.com/charging_pool_photos/url/840x560/212286/1540278992_ios.jpeg")
station78.photo.attach(io: file78, filename: "nes.png", content_type: "image/png")
station78.save
StationCharger.create(charger: c6, charger_count: 1, station: station78)

station79 = Station.create(name: "Hôtel Fairmont Royal Palm Marrackech", user: u, longitude: "-8.0490377", latitude: "31.5139105")
file79 = URI.open("https://www.fairmont.com/assets/0/104/2037/2042/4898/4906/4505370c-fb26-4776-9cf0-07747da2a431.jpg")
station79.photo.attach(io: file79, filename: "nes.png", content_type: "image/png")
station79.save
StationCharger.create(charger: c15, charger_count: 1, station: station79)

station80 = Station.create(name: "Hôtel ibis Casa Voyageurs", user: u, longitude: "-7.5917355", latitude: "33.5891814")
file80 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3eZDzvLrVHTPtuVNd4ObFFRHc7NHtG-ocUnq78PyrPlzCVSBOblj9XUmD7-2tALAOvz4uTde8SBaHWrOGXkPeKrp0xuk-GWMIheiSt24U8twb1Kxos_CPFseWHi_yxqkIclC1WQPQoBpkazOM5alQTfS0OPL7xGg2haSsL_18nwHsSt&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=95859")
station80.photo.attach(io: file80, filename: "nes.png", content_type: "image/png")
station80.save
StationCharger.create(charger: c15, charger_count: 1, station: station80)

station81 = Station.create(name: "Tesla Club Morocco", user: u, longitude: "-6.818808199999999", latitude: "33.9558921")
file81 = URI.open("https://doc-0s-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/g4j57qnas6bft32t5j7qo3pbu8/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vYOpIxBDitmvIhXbYhN76uMgs1_mZLieu-b_mCEfvoF_TxaOUFuBpLprbFXa_jKRdV5Aemmd7Hezi0C1E1tpaMqF_nYp40p54WjCpu-SbLqMGjixyFhCl_I85_32gLCQDKpjwpmucwddThKjC_13fhNuh9DIMvHshi6kAeHyLscUIGhLkRx7Y-F3NEVIzZfpVms?session=0&fife=s16383")
station81.photo.attach(io: file81, filename: "nes.png", content_type: "image/png")
station81.save
StationCharger.create(charger: c5, charger_count: 1, station: station81)

station82 = Station.create(name: "TESLA SUPERCHARGE Tanger", user: u, longitude: "-5.763109", latitude: "35.7850206")
file82 = URI.open("https://doc-14-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/79ogei86khag21f06g80lp7k4g/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vZUPcpUvZKiAAqUODkmMwNbfNUf-Ggj0cMGYRUawjeePtiFejEUdN6kz7EE7C2LrBmg3yjawhqvYUtNqMtEgVjCnAFAtqp5VzOZms3ZNaRwmwQA2ZZxc_1wZQzOAexoJ6gzsyLG3Ed3uculo6NDGt1ncesD2hDdnLb3s3j4aXLmrk-sWfQ-pwh3TzJ5paj8MR8?session=0&fife=s16383")
station82.photo.attach(io: file82, filename: "nes.png", content_type: "image/png")
station82.save
StationCharger.create(charger: c4, charger_count: 2, station: station82)

station83 = Station.create(name: "ZOUGUISOFT", user: u, longitude: "-6.315486", latitude: "33.888211")
file83 = URI.open("https://www.voitureelectrique.ma/wp/wp-content/uploads/2018/07/borne-recharge-electrique-total.jpeg")
station83.photo.attach(io: file83, filename: "nes.png", content_type: "image/png")
station83.save
StationCharger.create(charger: c16, charger_count: 1, station: station83)

station84 = Station.create(name: "EV-Box Charging Station EL JADIDA", user: u, longitude: "-8.4937872", latitude: "33.201678")
file84 = URI.open("https://www.afrik21.africa/wp-content/uploads/2020/12/borne-de-recharge-iSmart-1.jpg")
station84.photo.attach(io: file84, filename: "nes.png", content_type: "image/png")
station84.save
StationCharger.create(charger: c8, charger_count: 2, station: station84)

station85 = Station.create(name: "Station Total Taourirt", user: u, longitude: "-3.1642775", latitude: "34.4111967")
file85 = URI.open("https://doc-0c-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/f5r3boajlgcb3nooj2bbetmp34/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vaEVtA4PwCNCfVvAo4fb1wQAUNldyp_GXQTSnFhT-gNVN6BwK6qVCvYnZpa1d5UqV8CCy5cTB_LSqQfzXC151mjGSfQ9EN315BDwMkXoYZSYNQKUPriAVG0ijpPb5L1NVTRO9twz7MIf4Ua7fOUvoSG4U8GIzco4RhNU-BOTqIEveQGMbiQvT6k9a1_ff414X5z?session=0&fife=s16383")
station85.photo.attach(io: file85, filename: "nes.png", content_type: "image/png")
station85.save
StationCharger.create(charger: c7, charger_count: 1, station: station85)

station86 = Station.create(name: "Station-service Total Atlantis Sens Tanger - Casablanca a 200 mètres Afriquia Larache", user: u, longitude: "-6.122215799999998", latitude: "35.17068229999999")
file86 = URI.open("https://doc-0k-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/2s8hc8i6lkvsu8r4vngjaeiu70/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vY4d85RoWXYDcDVOEympfEeJuvRdDluNW-3VzSOKCVSw-Uc_r6K7IrVbRt88CGLJVWKxIeWmCxbU3pJARV1XaOSxVTQvY6Q-2X8WHz53o6tCM9gO3R3joZr417FpO7raWJ38Z8USajpfGRn2oGFLPiH6INx7yhoG6C2cjmJhtyRDi-Ls4YOtkpowEh9t8TtVA0?session=0&fife=s16383")
station86.photo.attach(io: file86, filename: "nes.png", content_type: "image/png")
station86.save
StationCharger.create(charger: c8, charger_count: 1, station: station86)

station87 = Station.create(name: "Rue Abdelhak Ben Mehyou 1 A 2km Evbox chrging station Ibnou Khalikane,djihâd", user: u, longitude: "-7.626196399999999", latitude: "33.58161499999999")
file87 = URI.open("https://chargemap.s3.amazonaws.com/charging_pool_photos/url/840x560/97869/station-service-shell-exit-casa_97870.jpg")
station87.photo.attach(io: file87, filename: "nes.png", content_type: "image/png")
station87.save
StationCharger.create(charger: c8, charger_count: 2, station: station87)

station88 = Station.create(name: "ONOMO Hotel Casablanca City Center", user: u, longitude: "-7.6390959", latitude: "33.586425")
file88 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3covQgC1SZgYIKgybQnH8ppexbbsap8YeLALVcj3W4fmOC8ZR9xcn7uWzBAnWJzI2bq_fP5BYTA2vYf-SwL_EgGl76-ztRj28xFu10gKEcAH_nsJPoNQCj4zGJp4GVqGcu27P1JyN1nBOka4PL_FFoTN8o4WLgsgSDF13BA8jhzI4iy&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=80559")
station88.photo.attach(io: file88, filename: "nes.png", content_type: "image/png")
station88.save
StationCharger.create(charger: c10, charger_count: 1, station: station88)

station89 = Station.create(name: "Hilton Tangier Al Houara Resort & Spa", user: u, longitude: "-5.965837199999999", latitude: "35.6674645")
file89 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3d8vSY5vhsT1kuQA2LzS5wZ1e_m7fkK0YlahyW4_QpJFS5o6TfqGa9WYsJl3gHJR-k6U3FoTnnIYOHj0ojf5jzfJIIRCOmyKW8F3ly_XS6B_WWpBTqarzBGRykE-RMQedr5rxzDd5WTigEF2R-tOaDyniyNwziHz-N5QxP0_VWsrIYv&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=69025")
station89.photo.attach(io: file89, filename: "nes.png", content_type: "image/png")
station89.save
StationCharger.create(charger: c10, charger_count: 1, station: station89)

station90 = Station.create(name: "WINXO Moulay Bousselham", user: u, longitude: "-6.1424261", latitude: "35.161328")
file90 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3d55dryW-jGzvjaSVxfOtBaQtFO6eFd8LZYdl-b67rA5grqsH0PoStCl5iBS_k_9DMOUsGycFFpJZFgQWwIwUuetFWkKe6nwP9cxq9lfsr0jDf3noyLrWLN5DhCj3iL818mWmznBCz8fxFpNXl1v9bgqRqXNki-wjn3mLyM4fVgt3v4&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=48663")
station90.photo.attach(io: file90, filename: "nes.png", content_type: "image/png")
station90.save
StationCharger.create(charger: c8, charger_count: 1, station: station90)

station91 = Station.create(name: "Station-service Total Relais Mazagan", user: u, longitude: "-8.534850400000002", latitude: "33.0307806")
file91 = URI.open("https://doc-04-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/093qsfv2vjphd90er6jh6db1dc/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vb6ddzmbaknCvus0AyUaIKGopXx_81epPVS8O0Gd-PfGhWdqxIT0J4s3-ljNCnNBbsul8JhFfD2Q9P24OHUw7XuWHYKN9UuDJsQAjpfVIT6LGGtVLbGUJyGWM8xN93QYSqmTOAyniPna4KRywgkPo-AjAHPdDnimWtRK-PIX1EyIRVdvX7BhLfCEyyioDS-1EY?session=0&fife=s16383")
station91.photo.attach(io: file91, filename: "nes.png", content_type: "image/png")
station91.save
StationCharger.create(charger: c8, charger_count: 1, station: station91)

station92 = Station.create(name: "Hôtel El Kasbah Souiri", user: u, longitude: "-9.7646649", latitude: "31.5147207")
file92 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3cBaESElsS9Ocs3ldhRZLw5edpZoL-wnOw6izfSp73GioPgsn28CT0o7wN0vsLb_c_Dw_ZixRK82kuncAsXoWn9wZK7XukB36PFIST_BHomuDqa2fQDVzRCyCOjlj-J0Kunms-1AUsAiB6YUbDTyATWDBTerm32AwaSENn9R_u4bXv7&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=58019")
station92.photo.attach(io: file92, filename: "nes.png", content_type: "image/png")
station92.save
StationCharger.create(charger: c15, charger_count: 1, station: station92)

station93 = Station.create(name: "Universié Euro Méditerranéenne de Fès", user: u, longitude: "-5.0634366", latitude: "34.0435059")
file93 = URI.open("https://doc-0k-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/6h5jnomk3is2ri72g8ts2fs2ko/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vZq3GFns255gnrMQ_HIZchyuBJGVCWRJyFnpg10cP9FcAh6zOkNLNqZR02Zqe7hRTKkk6E6VA7nKB1yUeuuJbpzhH0QdJZmNpMx8JVkv7DHVLiMuEKInGJBEl4nQlQseiu_PqcLF6ykgARn2dhL53RVoHjFrxIu6FPwdToZXGj3dChKyp-Vfw-kMmcLIUYOCPE?session=0&fife=s16383")
station93.photo.attach(io: file93, filename: "nes.png", content_type: "image/png")
station93.save
StationCharger.create(charger: c6, charger_count: 2, station: station93)

station94 = Station.create(name: "Badre Sadiki Ferme P7073", user: u, longitude: "-5.241229399999999", latitude: "34.01782299999999")
file94 = URI.open("https://doc-0s-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/nep8d2m11hq8uerlhvhlat59eg/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vbowHG6Ru0hNZgkM5pmryZRLa7d-MDAUi_abTay9XOSX8Vg8pixZJu6O1HWcEQpVDcqDMXgGBH1ZYxVIqLmypGCM96uN7djvePFWY5i5MmvNUmBuWyXjQHEXwso5JweUQTTpX4ab82pDLZspZ7OWCd2DKJ917a0azjq8_0G3ILL1n-kb2Uk8NuST-LBDddcw5Z4?session=0&fife=s16383")
station94.photo.attach(io: file94, filename: "nes.png", content_type: "image/png")
station94.save
StationCharger.create(charger: c8, charger_count: 1, station: station94)
StationCharger.create(charger: c8, charger_count: 1, station: station94)

station95 = Station.create(name: "Zaki Suites Hôtel & Spa", user: u, longitude: "-5.533233600000001", latitude: "33.881137")
file95 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3efkdAa543wegkICVcktPyo65_yPEYVQSpeN86B_8bJ2kRpjiyP9RjW9AphMy27Dz4tmOmigiLMHlt55nL-4Und6BX8EtJc3oL6W6jzRFAXo-HpcuzXcDMr1IzdlXvoY3kJijw73rXZOa7jXuJG3oQkrU1FbLM7KLTF7xieJkEeatLw&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=97528")
station95.photo.attach(io: file95, filename: "nes.png", content_type: "image/png")
station95.save
StationCharger.create(charger: c8, charger_count: 1, station: station95)
StationCharger.create(charger: c16, charger_count: 1, station: station95)
StationCharger.create(charger: c4, charger_count: 1, station: station95)

station96 = Station.create(name: "Centre Commercial Borj Fes M' Donalds Drive", user: u, longitude: "-4.996024599999999", latitude: "34.04434579999999")
file96 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3eMHjl36xgBaCEhPbJdPcG9MYCUs_nshPUNmsM1kLoUGy5Ffkl2r_JhRLwqgN0aFTGAQZbedAlMpVIH-ToHKsjffLps7FXZmGwyfXU4nkzwTGJsl2Phn_2iCbKXCKbWxVj4OhGOzk03La2Sv3aSqLPZbYfIFMFopJRVw3J3N9qGE0_U&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=62018")
station96.photo.attach(io: file96, filename: "nes.png", content_type: "image/png")
station96.save
StationCharger.create(charger: c15, charger_count: 1, station: station96)

station97 = Station.create(name: "Hôtel Sahrai", user: u, longitude: "-4.9921345", latitude: "34.0435157")
file97 = URI.open("https://doc-00-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/8bq0ip6uc4qvmpr3aeo0d0458c/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vYbXxcJOomKaDu0PanuFQUU1-orUuSmwbEjC1g9Hlyisin2a1RU8szkjXwOsRW9m1x3NVNkhm0soiIR40vMBSEJMFGhGM54c4dx1QtmQpaJ_fRIBl4kLmP-3ZAFLBNKgWuVRkCAJ4-QxMygHzcBTP9wwrHSNpQ907NUYX2b2c9-FjbtI_kRQniURLQC1AiIhGg?session=0&fife=s16383")
station97.photo.attach(io: file97, filename: "nes.png", content_type: "image/png")
station97.save
StationCharger.create(charger: c8, charger_count: 2, station: station97)

station98 = Station.create(name: "Complexe Agora Park Taza", user: u, longitude: "-3.9562858", latitude: "34.2667131")
file98 = URI.open("https://doc-00-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/d3fdrv0oq43osoakra56j49j54/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vZjm00pPAAnsDKrIp94jq12Fdy2MlX_lrwvPwHFViSNOAET4TlUCRWPymVuHcbi9VuS8sAEXLqjULjgBeRwLvtdnxG8oFnhudu73TIkwQEbDHFaRx9lwiAC35ZMWqLcDAUzPtNr9Qz6ClFQdNL96LBGbE_BBRwdsprqoDU9-nbgajxo16vQpIBBhBGlmt6VGNY?session=0&fife=s16383")
station98.photo.attach(io: file98, filename: "nes.png", content_type: "image/png")
station98.save
StationCharger.create(charger: c8, charger_count: 2, station: station98)

station99 = Station.create(name: "Station-service Total Relais Bouregreg", user: u, longitude: "-6.7777144", latitude: "33.9061181")
file99 = URI.open("https://doc-0s-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/dtl71lalq4mlk2je6cehpso7lc/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vbKH8SJrPQXmKKNMhUL94zyPc8oyqXIR-sjvyxP9-fUe15aeYXCr1QRFjY3Z65WhxasoUW7RGsrxP2yvdpN76yeFTUjNsap1o4Jjg2lfoSlKsowgmB1RpxJrRtcGCEDS-zrWtbooGermCAIKq0Btc3jC2MmJeKGxbMnShY-1ErpUrCrjfxVlWq4RwGIXQ_UZj8q?session=0&fife=s16383")
station99.photo.attach(io: file99, filename: "nes.png", content_type: "image/png")
station99.save
StationCharger.create(charger: c17, charger_count: 1, station: station99)
StationCharger.create(charger: c9, charger_count: 2, station: station99)
StationCharger.create(charger: c12, charger_count: 1, station: station99)

station100 = Station.create(name: "Château Roslane", user: u, longitude: "-5.440646399999999", latitude: "33.7597224")
file100 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3fUlZsJ8zEb5RBA-SlmlJcLAeawSd32Ks0mOxmx_lzucDmk0R_A3TpNUdX5xSnpHtGCpR6I9zmBA4BXNIX0TvYtyTRKGp4pNePJSGWVY8W-CJqMyCD-Kb9hhuRXYvEtNKFnXvWHpUF9tRyt3vlRcbWecyKYYPIt51_NzLWcNKSmnA_m&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=93385")
station100.photo.attach(io: file100, filename: "nes.png", content_type: "image/png")
station100.save
StationCharger.create(charger: c8, charger_count: 1, station: station100)

station101 = Station.create(name: "Camping Amazigh", user: u, longitude: "-5.1703548", latitude: "33.44945550000001")
file101 = URI.open("https://doc-0o-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/m7s66qfj5r9pabogb1oev0jc98/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vZXBvagpRAc09SoIkaNjhiu6jtX97Nl886n8CmOs34yqadbbWs86m-6lThUWrk0-xAxxlGcic3oRa2mcBXXaOeJg7YRpwktjePEujJuRU2eICMVrqDGtmm_9XCX04yIkisgm4oNKWzMW_Yb_KqdXd58xbmoSmQxHqtVkhu-87Uc_I5Ygl4x4cv-n4TlC0TlvU5_?session=0&fife=s16383")
station101.photo.attach(io: file101, filename: "nes.png", content_type: "image/png")
station101.save
StationCharger.create(charger: c14, charger_count: 1, station: station101)

station102 = Station.create(name: "Parc Derichebourg", user: u, longitude: "-5.2311441", latitude: "33.43499560000001")
file102 = URI.open("https://doc-04-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/8tf8a4663erod84cqkkes8lmv8/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vb0Iw-DvaPJ_9obKzCVN8VIjI5cALRj7AYkubVlxhewJo03m2VBGBdAOvqhijS5KQ8w6_A_7wi4nX0v9-V4_kWk0a4NC0mxUPxpFZyhiuGdgX26PLssjQwFxBBywVCdahaPJRxkp9XccQCc4jP4Z0tmGf-O8hqtWeLaHJTB2wKVygY1Bs_AqIliX14zckPtzBSq?session=0&fife=s16383")
station102.photo.attach(io: file102, filename: "nes.png", content_type: "image/png")
station102.save
StationCharger.create(charger: c8, charger_count: 2, station: station102)

station103 = Station.create(name: "EV-Box Ifrane Charging Station", user: u, longitude: "-5.2311441", latitude: "33.43499560000001")
file103 = URI.open("https://cdn3.park4night.com/lieu/481801_481900/481851_gd.jpg")
station103.photo.attach(io: file103, filename: "nes.png", content_type: "image/png")
station103.save
StationCharger.create(charger: c16, charger_count: 4, station: station103)
StationCharger.create(charger: c8, charger_count: 2, station: station103)

station104 = Station.create(name: "Bin El Ouidane", user: u, longitude: "-6.455154400000001", latitude: "32.107915")
file104 = URI.open("https://doc-0g-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/1j2ft6qb8896qps9rrjhubldm8/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vaNeVq7buMsttDIvs6T-tU990dLVDuBRWyaJCW8LdinvuqPVR6-4n7sUvZ1nNiwSEDEB_G2NWD9Y_cSb6oxYSDQQBDa3o-BpmLWhTxUImFXT5gazqnon7dE6ahL9ZVxMf7JNMSMtWFT3Wyng43ykpKBAHWNHyuSHBPGKatiO8OHvmhi7tZQ0qIjxzpAJl0_hFc?session=0&fife=s16383")
station104.photo.attach(io: file104, filename: "nes.png", content_type: "image/png")
station104.save
StationCharger.create(charger: c16, charger_count: 2, station: station104)

station105 = Station.create(name: "Kasbah Hotel Camping Jurassique", user: u, longitude: "-4.3753508", latitude: "32.1538493")
file105 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3croVSbzppY8ab9LIbMpq71s5x6WxRzwcTYmu_Dg4krLPpz5NYNyGZjAn2Ypv7YbTiuz3CDTIKT5Gw0WK-rvOmqqBxx1sWlv7sEdwtOfiw03YrleZU2iiwmZZ5lGG1wmV-KGccDnmyKMlSQ9opexo41W5U8I9VZhOR0n6GpJaEgQkSi&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=41689")
station105.photo.attach(io: file105, filename: "nes.png", content_type: "image/png")
station105.save
StationCharger.create(charger: c14, charger_count: 1, station: station105)

station106 = Station.create(name: "Argane Tichka Restaurant", user: u, longitude: "-7.377261999999999", latitude: "31.3286511")
file106 = URI.open("https://doc-0k-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/22q281u34o1er7a28l81q5vttk/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vYGe4fgLSgiMJHqwX1btZipAh1cz87LGrXzR1guodMXGnJsLNDda5JkwcDlIiKb5yxbKouVelVjnq45D9IZbT8hOji9ecZm22cZ_VqyzordTN9_Z275G43zod4qoiZS1849uJolldhVbs9Vhyc5VRR8IvDgrkdwNaCyH0hrsFMIzac_9XGykDYQVP6WYa8oXd2V?session=0&fife=s16383")
station106.photo.attach(io: file106, filename: "nes.png", content_type: "image/png")
station106.save
StationCharger.create(charger: c16, charger_count: 1, station: station106)

station107 = Station.create(name: "hotel le berbere palace", user: u, longitude: "-6.909776", latitude: "30.923062")
file107 = URI.open("https://doc-00-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/jde8o6lhminesdcffvjshicck4/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vbfsDmwDcDZCJ9VY5FrKpVeVAP5a92nh2AXUKW_oAHVXP9uBas5VfaxwMzByKTfLyDduCvPLFCg8C2q1LRJrbb04cug9lhn2fNMk0M3Zpp-y_tcLmpl8-LKvWk_9p2RQqn59hk6PUeait49jVB2Woqz3_9pyCDicjeHKC67ca2V1WrfGpiA4KDr-Vb7OBlSZeg?session=0&fife=s16383")
station107.photo.attach(io: file107, filename: "nes.png", content_type: "image/png")
station107.save
StationCharger.create(charger: c15, charger_count: 1, station: station107)

station108 = Station.create(name: "Hôtel Tamassint", user: u, longitude: "-5.502444399999999", latitude: "31.5149888")
file108 = URI.open("https://doc-10-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/dess0dloqavaj9oq54stjr6dbc/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vaty3bzEvrR9vIJZKSbXDOs25xP2HEoe9gF7jmFY3Rp8VpcJDwFqWqe2Z-Wt_UZJqvegZQxifyRb3kX1nvrXDaSlhDWHTN9sJcEqdkOWGd5CLm1gqZjyQRtS_BTyRzBa5dBIOc8i3pbe0HDjh6rvWS5KcC-9VQujLU_VitW9gYW65SbI-KKWLBalER1UItljasw?session=0&fife=s16383")
station108.photo.attach(io: file108, filename: "nes.png", content_type: "image/png")
station108.save
StationCharger.create(charger: c14, charger_count: 1, station: station108)

station109 = Station.create(name: "Hôtel Oscar N10", user: u, longitude: "-6.903823000000001", latitude: "30.919091")
file109 = URI.open("https://doc-0g-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/u2bq941ht1p2jf47enkbfu46p0/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vYkM0CvIe-UpYMyvpCXvooo11-B40j2nMQoulECljhuQJQz-ZfCviu8jWf6_gu63COreEJsKfgIZu0p7GI8hVetZHrgQireRV86sje3ymt590KN4izUrZ0umCFFGAyFlOE1SinHk8sj1fsFwIzeDMaWWKezaiL1p1plAV-kPnzDsME3_7BaOOHKm2vyO-iDMMg?session=0&fife=s16383")
station109.photo.attach(io: file109, filename: "nes.png", content_type: "image/png")
station109.save
StationCharger.create(charger: c8, charger_count: 10, station: station109)

station110 = Station.create(name: "Hotel La Grande Gare, Rue Ibn Tabir", user: u, longitude: "-13.2166332", latitude: "27.1623867")
file110 = URI.open("https://doc-0c-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/cbvd4v1lrc42blnq8cmc8em9hk/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vYzbOfOfskp33cvw4oWjTeRmNRYRt6bFsJhKXlPIp8KXsyGN8QojaS_Y0nTbJHiW3olMxeyARuEU6L9EMBJYKzuL0PD0NFswKHCAN3OogBZuMjnfFHCtaCiDOw57Lmah-1SMFjhlLqDXaOluEDu6zMlyWhXbOq1tJBCwUM7i9kC-BYrKfDXycNM1oBrn87C6H8?session=0&fife=s16383")
station110.photo.attach(io: file110, filename: "nes.png", content_type: "image/png")
station110.save
StationCharger.create(charger: c14, charger_count: 1, station: station110)

station111 = Station.create(name: "Hôtel Dakhla club", user: u, longitude: "-15.768987", latitude: "23.903502")
file111 = URI.open("https://doc-10-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/gq4rl4bfg9cskt055aps4t9h2g/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vZ53kWP9rnw_Kd8Kuij5VIH8kyW2OIN_rSmo2UsUFmuSaXdDLktvtMDN_uKVZypn0dzmPHOvsfMEhxwh9Tpu-TOIR0sfQFY9HGkHvdXFePRfdXI-A23Xu9uvZkSt9I7RVQVx8iwt89-7vk-VKDpMoRxYvCSje_BL_jlFQVAYEZImqcOpv2bGrsUcftV7G1mqF0?session=0&fife=s16383")
station111.photo.attach(io: file111, filename: "nes.png", content_type: "image/png")
station111.save
StationCharger.create(charger: c15, charger_count: 1, station: station111)

station112 = Station.create(name: "Hotel Manarat Boujdour", user: u, longitude: "-14.480893", latitude: "26.127288")
file112 = URI.open("https://doc-0c-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/vv5i45glgl8gerqi7gi1bi0atk/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vYFLBARYwp6IsCejfEMG_CrutUkjVyDOBqOSByTYoOrvXf0gIo7Lm9sjMu-uugsEwQHoWZ3fORdtLJiyRm0anWy55TOwniqyoO-r29kvzp2cTLW8Zb_VN9_rP90HAWN-cW7yuwgWUrf_qU8vYZ6VPTeoUyWNw76_qqhJnvgMWw9sy2iSySZ1HqBjGU50gYK4LI?session=0&fife=s16383")
station112.photo.attach(io: file112, filename: "nes.png", content_type: "image/png")
station112.save
StationCharger.create(charger: c14, charger_count: 1, station: station112)

station113 = Station.create(name: "Hotel Barbas", user: u, longitude: "-16.7475147", latitude: "22.0547275")
file113 = URI.open("https://doc-0s-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/r0h6b67j6fsc5hmiag60gep0d4/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vbyO77L5STXaKO1m_wStu_3yYS2UCQwLX1gfBvpYBGQemkwJH9YimVWjGF9joRZICdCPUiweo5xrSVIbSJlsour71NUrd6iCq2uC-54wGAzAn2TrHKyp0PxVnxxgjgibaBK6mFwFxrxZUge0L-pNgEixNEf5IQr3sk4YmmsLHyFAkExeky20UUj33i2_rsZ7JM?session=0&fife=s16383")
station113.photo.attach(io: file113, filename: "nes.png", content_type: "image/png")
station113.save
StationCharger.create(charger: c15, charger_count: 1, station: station113)

station114 = Station.create(name: "Ceuta", user: u, longitude: "-5.321345499999999", latitude: "35.8893874")
file114 = URI.open("https://maps.googleapis.com/maps/api/place/js/PhotoService.GetPhoto?1sAeJbb3du2ilKFlnPryYFPQC4J1b8nZu94-APGIvwDAyfn1FHXIFfs0Or56RAE_Ft2Z8B0WUK8ts5L3DHLLK0ypzlCP0vttXkTGGCecUIWLCp20HkrU0X5XzOL9sffYCaHBFskefigiZawCm3xuawEF1IvXhTyBUS0al-hkjqm4Y7VMc6p96y&4u16383&5m1&2e1&callback=none&client=google-maps-pro&token=91985")
station114.photo.attach(io: file114, filename: "nes.png", content_type: "image/png")
station114.save
StationCharger.create(charger: c14, charger_count: 3, station: station114)
StationCharger.create(charger: c16, charger_count: 2, station: station114)

station115 = Station.create(name: "Sofitel Tamuda Bay Beach and Spa", user: u, longitude: "-5.3282445", latitude: "35.6945089")
file115 = URI.open("https://doc-0k-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/2o8qiijsa4u4oamcio60nd0lmk/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vb_e6oSBVj95B5JP--CAHfKuJoviw7RHCAqwA-YD5z7rnvVgHpiIDVcrKeb3hfROWBVvXAfRF_Sk7Qy-uAd35Yp1sehloqHaQVnKn6KoaR0xjYN70IkvefRbr-cWq0OiwJQGX653HKXKxEBYOBb4MX0JHcWH4RATWI4qkyxF5Uk8mqzHir0d_JmGjQg2CA54wQ?session=0&fife=s16383")
station115.photo.attach(io: file115, filename: "nes.png", content_type: "image/png")
station115.save
StationCharger.create(charger: c4, charger_count: 1, station: station115)

station116 = Station.create(name: "Calle García Cabrelles", user: u, longitude: "-2.9437018", latitude: "35.2955516")
file116 = URI.open("https://media-cdn.tripadvisor.com/media/photo-s/1c/79/6c/9c/img-20201230-102218-largejpg.jpg")
station116.photo.attach(io: file116, filename: "nes.png", content_type: "image/png")
station116.save
StationCharger.create(charger: c8, charger_count: 3, station: station116)
StationCharger.create(charger: c4, charger_count: 3, station: station116)

station117 = Station.create(name: "Station-service Total Relais D'Oulmes", user: u, longitude: "-6.1049709", latitude: "33.8170726")
file117 = URI.open("https://doc-0c-90-mymaps.googleusercontent.com/untrusted/hostedimage/qummr26o38mmcdvkjtuup5fpeo/sguefi7kimb2b4b2d1h888cgcg/1663066479750/JHdNRxuCceXe4dzVnCmOKym7Qn5qjH34/15987032679003154619/5AFzc1vbQpNkaeSbF05DnKf-2rFhLQ8HBVcwhgGx2g6IGhkUrTJjUP6n2Br8elUluhI2YHj2wrudKi0SzJ1Z9EvFL59yaIdkNDpB31mhUoB5M0M2pTbc81QwVgT2KuiMhOdH4E-s1HQQJbzIFOU1yZNAgET6MehoiuqySrCKaO44FVUkEzif51zELqfGw988A1aMjwTc?session=0&fife=s16383")
station117.photo.attach(io: file117, filename: "nes.png", content_type: "image/png")
station117.save
StationCharger.create(charger: c8, charger_count: 1, station: station117)

station118 = Station.create(name: "Mcdonald's Dawliz", user: u, longitude: "-7.661720342328685", latitude: "33.60155967298711")
file118 = URI.open("https://photos.plugshare.com/photos/758515.jpg")
station118.photo.attach(io: file118, filename: "nes.png", content_type: "image/png")
station118.save
StationCharger.create(charger: c7, charger_count: 3, station: station118)
