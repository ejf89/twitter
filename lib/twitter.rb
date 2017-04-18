require 'addressable/uri'
require 'twitter/configuration'
require 'twitter/cursor'
require 'twitter/direct_message'
require 'twitter/entity'
require 'twitter/entity/hashtag'
require 'twitter/entity/symbol'
require 'twitter/entity/uri'
require 'twitter/entity/user_mention'
require 'twitter/geo_factory'
require 'twitter/language'
require 'twitter/list'
require 'twitter/media_factory'
require 'twitter/metadata'
require 'twitter/oembed'
require 'twitter/place'
require 'twitter/profile_banner'
require 'twitter/rate_limit'
require 'twitter/relationship'
require 'twitter/rest/client'
require 'twitter/saved_search'
require 'twitter/search_results'
require 'twitter/settings'
require 'twitter/size'
require 'twitter/source_user'
require 'twitter/streaming/client'
require 'twitter/suggestion'
require 'twitter/target_user'
require 'twitter/trend'
require 'twitter/tweet'
require 'twitter/user'
require 'pry'
require 'json'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "W3zilQu633o77oezuSwi5D6m8"
  config.consumer_secret     = "J2gvkPupioUbhIXqFXLsAzrROdlLdozFZwukkLgGvOxPnCAs4i"
  config.access_token        = "854334169522024448-qNV9YdJzI0B3YshEMCjdb7mB8CMXDEA"
  config.access_token_secret = "rT0kBstReKuP5Zefz3fiTLeHYXtajJSOzvzxVcw9NjGEo"
end

puts "please enter a search"
answer = gets.chomp


results = client.search("#{answer} -RT", {language: "av", include_rts: false}).take(2)
  tweet_result = results.map do |x|
    x.attrs[:text]
    end
    binding.pry
tweet_result




# def client.get_all_tweets(user)
#   collect_with_max_id do |max_id|
#     options = {count: 20, include_rts: true}
#     options[:max_id] = max_id unless max_id.nil?
#     user_timeline(user, options)
#   end
# end




binding.pry
