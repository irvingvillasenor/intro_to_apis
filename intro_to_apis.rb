# make your program below
require "http"

system "clear"

puts "Enter a name for a subreddit:"
subreddit = gets.chomp

response = HTTP.get("https://www.reddit.com/r/#{subreddit}.json")
posts = response.parse["data"]["children"]


posts.each do |post|
  puts "#{post["data"]["title"]}"
end