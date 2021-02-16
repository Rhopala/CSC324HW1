# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'HW6data_madeup.csv'))

csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

 csv.each do |row|

   c = Creature.new

   c.birds = row['Birds']

   c.mammals = row['Mammals']

   c.insects = row['Insects']

   c.others = row['Others']

   c.save

   puts "#{c.birds} saved, #{c.mammals} saved, #{c.insects} saved, #{c.others} saved."

end

puts "There are now #{Creature.count} rows in the Maindishes table."
