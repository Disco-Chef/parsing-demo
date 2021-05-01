require 'json'

# TODO - let's read/write data from beers.json
filepath    = 'data/beers.json'

# Step 1. Read the file and store its content as a string/text
serialized_beers = File.read(filepath)
# Serialized json => json encompased by quotes
p serialized_beers

# Step 2. Give this json string to the JSON.parse method
# which will interpret it into a hash for us
beers = JSON.parse(serialized_beers)

p beers

beers = { beers: [
  {
    name:       'Edelweiss',
    appearance: 'White',
    origin:     'Austria'
  },
  {
    name:       'Guinness',
    appearance: 'Stout',
    origin:     'Ireland'
  }
]}

File.open(filepath, 'wb') do |file|
  # Opposite of JSON.parse => Take a hash and convert it to a JSON string
  file.write(JSON.generate(beers))
end
