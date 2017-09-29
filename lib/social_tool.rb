module SocialTool
  def self.twitter_search
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "NM9tlwe3whtupNg7GecgYGcCB"
      config.consumer_secret     = "2WkqZ0gcYGW5SYfFjHkv5y417vMKzwHIumBOu8Fr1Lp6hbmFXh"
      config.access_token        = "390614237-ttlbDUlPpKnWVcgNfztvm3jt5eATRWtgrCvvJIf3"
      config.access_token_secret = "57vXOSS7UAsBasYzVxqCmvcf5LacFh9nShpCxgDL5kzNR"
    end

    client.search("#crypto", result_type: 'recent').take(6).collect do |tweet|
      "#{tweet.user.screen_name}: #{tweet.text}"
  end
 end
end
