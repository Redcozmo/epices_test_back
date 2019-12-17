# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'csv'
#
# csv_text = File.read('db/hourly_production_170410.csv')
# csv = CSV.parse(csv_text, :headers => true)
#
# line = 1
# csv.each do |row|
#   Csv.create! row.to_hash
#   hourly = row.to_hash
#
#   unless hourly["identifier"] == nil
#
#     unless Inverter.where(num: hourly["identifier"]).count != 0
#       inv = Inverter.create(num: hourly["identifier"])
#       time = DateTime.strptime(hourly["datetime"], "%d/%m/%y %H:%M")
#       daily_prod = DailyDatum.new(datetime: time)
#
#       daily_prod.inverter = inv
#       daily_prod.save
#     else
#       daily_prod = Inverter.find_by(num: hourly["identifier"]).daily_data.first
#     end
#
#     time = DateTime.strptime(hourly["datetime"], "%d/%m/%y %H:%M")
#     hourly_prod = HourlyDatum.new(datetime: time, hourly_energy: hourly["energy"])
#     hourly_prod.daily_datum = daily_prod
#     hourly_prod.save
#
#     line += 1
#
#   else
#     puts "hourly['identifier'] == nil"
#   end
# end
#
# puts "*" * 100
# puts ".........calcul de la prod journalière :"
# Inverter.all.each do |inv|
#   sum = 0
#   inv.daily_data.first.hourly_data.each do |prod|
#     sum += prod.hourly_energy
#   end
#   puts "sum = #{sum}"
#   inv.daily_data.first.update(daily_energy: sum)
# end
