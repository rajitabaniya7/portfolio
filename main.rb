require 'sinatra'
require 'sinatra/reloader' if development?

get "/" do
    @title = "Tim Regan-Porter's Portfolio"
    @description = "This site showcases all of the awesome things that Tim Regan-Porter has done."
    @home = "active"
    erb :home
end

get '/about' do
    @title = "About Me"
    @description = "This page provides a short bio for Tim Regan-Porter"
    @about = "active"
    erb :about
end

get '/works' do
    @title = "My Clips"
    @description = "This page provides links to Tim Regan-Porter's published clips"
    @works = "active"
    erb :work
end

get '/tweets' do
    require 'twitter'
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "8hh8vv83o8u7B6vXbkJrg"
      config.consumer_secret     = "QayalDKY8bLHmriNLQU3zXcSLEZjevbLp92U7rp6k4"
      config.access_token        = "14104554-EpLlL8UZxhu0un6fWoBMyaXRvW6OQEH2Ab9q6hMhw"
      config.access_token_secret = "v2H26pi6a2Qk8rsjd9G4GICPdsydwuWLUC3G0huMEw"
    end

    @search_results = client.search("@mercerfootball", result_type: "recent").take(30).collect do |tweet|
      #"#{tweet.user.screen_name}: #{tweet.text}"
        tweet
    end
    
    @title = "My ____ Tweets"
    @description = "This page contains my tweets that _____"
    @tweets = "active"
    erb :tweets
end

get '/news' do
    require 'google-search'
    query = "Mercer football"
    #@results = "test"
    @results = Array.new
    Google::Search::News.new do |search|
        search.query = query
        search.size = :large
    end.each { |item| @results.push item }
    erb :news
end








