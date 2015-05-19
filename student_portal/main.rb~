require 'sinatra'
require 'slim'
require 'sass'
require './student.rb'

configure do
  enable :sessions
  set :username, 'balaji'
  set :password, 'coen'
end

configure :development do
  DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")
end

configure :production do
  DataMapper.setup(:default, ENV['DATABASE_URL'])
end

get('/styles.css'){ scss :styles }

get '/' do
  slim :login
end

get '/about' do
  @title = "All About This Website"
  slim :about
end

get '/contact' do
  slim :contact
end

not_found do
  slim :not_found
end

get '/login' do
  slim :login
end

post '/login' do
#  raise params.inspect
  if params[:username] == settings.username && params[:password] == settings.password
    session[:admin] = true
    redirect to('/students')
  else
    slim :login
  end
end

get '/logout' do
  session.clear
  redirect to('/login')
end

get '/set/:name' do
  session[:name] = params[:name]
end

get '/get/hello' do
  "Hello #{session[:name]}"
end
