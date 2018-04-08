# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Answer.destroy_all

require 'csv'

csv_file = File.join('lib', 'seeds', "modelAns.csv")
csv_options = { headers: :first_row, header_converters: :symbol }
CSV.foreach(csv_file, csv_options) do |row|
  Answer.create(row.to_hash)
end



# csv_text = File.read(Rails.root.join('lib', 'seeds', 'modelAns.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

# csv.each do |row|
#   r = row.to_hash
#   a = Answer.new
#   a.model = r['model']

# end

# require 'csv'
