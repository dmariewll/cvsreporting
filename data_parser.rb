require 'csv'
require 'json'

# 1. How much money did we make per crate this week?

total_money = 0
money = []

CSV.foreach('/Users/danielle/RubymineProjects/cvsreporting/planet_express_logs.csv', headers: true) do |line|
  money.push line['Money'].to_f
  revenue = line['Crates'].to_f * line['Money'].to_f
  total_money += revenue
end

puts "Total revenue is #{total_money} \n\n"


# 2. How much of a bonus did each employee get?
# (bonuses are paid to employees who pilot the Planet Express - 5% per shipment)


# I need to calculate the cost per shipment for each line (line[money] * line[crates])
# Then I need to take that cost divide it by 5% to define bonus calculation

CSV.foreach('/Users/danielle/RubymineProjects/cvsreporting/planet_express_logs.csv', headers: true) do |line|
  revenue_per_shipment = line['Money'].to_f * line['Crates'].to_f
  bonus = revenue_per_shipment * 0.05.to_f
  puts "Bonus for shipment of #{line['Shipment']} to #{line['Destination']} is #{bonus} \n\n"
end


# 3. How many trips did each employee pilot?
# I keep receiving the error  "uninitialized constant Earth (NameError)" and can't seem to get past it.

CSV.foreach('/Users/danielle/RubymineProjects/cvsreporting/planet_express_logs.csv', headers: true) do |line|

  trips = {Earth => 0, Moon => 0, Mars => 0, Uranus => 0, Jupiter => 0, Pluto => 0, Saturn => 0, Mercury => 0}


  # planet = line['Destination']
  # @current = @trips[planet]
  # @trips[planet] = @current + 1
  # puts @trips[planet]


  end

# 4. How much money did we make broken down by planet? ie.. how much did we make shipping to Earth? Mars? Saturn? etc
