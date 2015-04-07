module HomeHelper
  def twitter_share_url
    share_url = "http://#{ENV['PRODUCTION_DOMAIN']}"
    tweet = "Reddit Ad Alerts - Monitor Subreddit Advertising Inventory"
    tweet_params = {
      hashtags: '', 
      text: tweet, 
      related: "brianpetro_", 
      tw_p: "tweetbutton", 
      url: share_url 
    }.to_query
    return "https://twitter.com/intent/tweet?#{tweet_params}"
  end
  def facebook_share_url
    facebook_app_id = "1447383955545444"
    share_url = "http://#{ENV['PRODUCTION_DOMAIN']}"
    post_params = {
      app_id: facebook_app_id, 
      display: "popup", 
      href: share_url, 
      redirect_uri: share_url 
    }.to_query
    return "https://www.facebook.com/dialog/share?#{post_params}"
  end
  def linkedin_share_url
    share_url = "http://#{ENV['PRODUCTION_DOMAIN']}"
    share_title = "Reddit Ad Alerts - Monitor Subreddit Advertising Inventory"
    share_summary = "Monitor subreddit ad opportunities with weekly reports and unclaimed inventory alerts."
    post_params = {
      mini: 'true', 
      url: share_url, 
      title: share_title, 
      source: "", 
      summary: share_summary
    }.to_query
    return "http://www.linkedin.com/shareArticle?#{post_params}"
  end
  def reddit_share_url
    share_url = "http://#{ENV['PRODUCTION_DOMAIN']}"
    share_title = "Reddit Ad Alerts - Monitor Subreddit Advertising Inventory"
    tb_params = {
      url: share_url, 
      title: share_title 
    }.to_query
    return "http://www.reddit.com/submit?#{tb_params}"
  end
  def google_share_url
    share_url = "http://#{ENV['PRODUCTION_DOMAIN']}"
    tb_params = {
      url: share_url 
    }.to_query
    return "https://plus.google.com/share?#{tb_params}"
  end
end
