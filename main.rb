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
