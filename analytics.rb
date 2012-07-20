require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/jsonp'
set :database, 'sqlite:///todo_sinatra.db'

class Event < ActiveRecord::Base
  validates_presence_of :action
end

get '/' do
  erb :home
end

post "/" do
  e = Event.new
  e.event_type = params[:event_type]
  e.save
  redirect "/"
end

get "/test" do
  "test page"
end