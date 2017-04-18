class TwitterAdapter

  def twitter_login
  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "W3zilQu633o77oezuSwi5D6m8"
    config.consumer_secret     = "J2gvkPupioUbhIXqFXLsAzrROdlLdozFZwukkLgGvOxPnCAs4i"
    config.access_token        = "854334169522024448-qNV9YdJzI0B3YshEMCjdb7mB8CMXDEA"
    config.access_token_secret = "rT0kBstReKuP5Zefz3fiTLeHYXtajJSOzvzxVcw9NjGEo"
  end
end

def initialize
  puts "please enter a search"
  @answer = gets.chomp
end

  # binding.pry
  # Result.new(:search => "#{answer}")
def call_twitter
    results = twitter_login.search("#{answer} -RT", {language: "av", include_rts: false}).take(2)
      tweet_result = results.map do |x|
        x.attrs[:text]
        end
        # binding.pry
    puts tweet_result
  end
end
