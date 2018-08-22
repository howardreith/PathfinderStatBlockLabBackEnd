# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'revised.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = PublicCreature.new
  t.name = row['name']
  t.cr = row['cr']
  t.alignment = row['alignment']
  t.creature_category = row['creature_category']
  t.subcategory = row['subcategory']
  t.size = row['size']
  t.initiative = row['initiative']
  t.senses = row['senses']
  t.perception = row['perception']
  t.languages = row['languages']
  t.skills = row['skills']
  t.str = row['str']
  t.dex = row['dex']
  t.con = row['con']
  t.int = row['int']
  t.wis = row['wis']
  t.cha = row['cha']
  t.items = row['items']
  t.appearance = row['appearance']
  t.description = row['description']
  t.environment = row['environment']
  t.organization = row['organization']
  t.treasure = row['treasure']
  t.source = row['source']
  t.ac = row['ac']
  t.dodgeac = row['dodgeac']
  t.flat_footed = row['flat_footed']
  t.ac_notes = row['ac_notes']
  t.cmd = row['cmd']
  t.saves = row['saves']
  t.hp = row['hp']
  t.hd = row['hd']
  t.dr = row['dr']
  t.fast_healing_regen = row['fast_healing_regen']
  t.immunities = row['immunities']
  t.resistances = row['resistances']
  t.sr = row['sr']
  t.weaknesses = row['weaknesses']
  t.defensive_abilities = row['defensive_abilities']
  t.speed = row['speed']
  t.speed_note = row['speed_note']
  t.melee = row['melee']
  t.cmb = row['cmb']
  t.reach = row['reach']
  t.ranged = row['ranged']
  t.offense_note = row['offense_note']
  t.special_abilities = row['special_abilities']
  t.spell_like_abilities = row['spell_like_abilities']
  t.spells_known = row['spells_known']
  t.spells_prepared = row['spells_prepared']
  t.feats = row['feats']
  t.additional_special_qualities = row['additional_special_qualities']
  t.save
  puts "#{t.name} saved"
end

puts "There are now #{PublicCreature.count} rows in the public creatures table"
