require 'csv'

# TODO - let's read/write data from beers.csv
filepath = 'data/beers.csv'

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

CSV.foreach(filepath, csv_options) do |row|
  # Here, row is an array of columns
  puts "#{row['Name']}, a #{row['Appearance']} beer from #{row['Origin']}"
end

csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }

CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  csv << ['Asahi', 'Pale Lager', 'Japan']
  csv << ['Guinness', 'Stout', 'Ireland']
end
