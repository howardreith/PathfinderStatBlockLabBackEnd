require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'public_creatures.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  PublicCreature.create!(row.to_hash)
end
