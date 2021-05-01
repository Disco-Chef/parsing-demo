require 'json'
require 'open-uri'

# TODO - Let's fetch name and bio from a given GitHub username
url = 'https://api.github.com/users/ssaunier'

# Step 1. Visit the url and store its content as a string/text
user_serialized = URI.open(url).read


# Step 2. Give this json string to the JSON.parse method
# which will interpret it into a hash for us
user_hash = JSON.parse(user_serialized)

puts "#{user_hash['name']} - #{user_hash['bio']}"
