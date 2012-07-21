require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/jsonp'
set :database, 'sqlite:///todo_sinatra.db'

class Event < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :uid
end

get '/' do
  erb :home
end

get "/event" do
  e = Event.new
  e.name = params[:name]
  e.uid = params[:uid]
  e.save
  redirect "/event"
end

get "/test" do
  "test page"
end