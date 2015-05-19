require 'dm-core'
require 'dm-migrations'

#DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")

class Student
  include DataMapper::Resource
  property :id, Serial
  property :name, String
  property :department, Text
  property :grad_year, Integer
  property :DOB, Date

  def DOB=date
    super Date.strptime(date, '%m/%d/%Y')
  end
end

#configure do
#  enable :sessions
#  set :username, 'balaji'
#  set :password, 'coen'
#end

DataMapper.finalize

get '/students' do
  @stud = Student.all
  slim :students
end

get '/students/new' do
  halt(401,'Not Authorized') unless session[:admin]
  @stud = Student.new
  slim :new_student
end

get '/students/:id' do
  @stud = Student.get(params[:id])
  slim :show_student
end

get '/students/:id/edit' do
  @stud = Student.get(params[:id])
  slim :edit_student
end

post '/students' do
  stud = Student.create(params[:stud])
  redirect to("/students/#{stud.id}")
end

put '/students/:id' do
  stud = Student.get(params[:id])
  stud.update(params[:stud])
  redirect to("/students/#{stud.id}")
end

delete '/students/:id' do
  Student.get(params[:id]).destroy
  redirect to('/students')
end
