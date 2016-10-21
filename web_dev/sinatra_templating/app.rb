# require gems
require 'sinatra'
require 'sqlite3'
require "sinatra/reloader" if development?

set :public_folder, File.dirname(__FILE__) + '/static' #dont memorize this. for static folder. (/static can be any folder)

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students") # @-sign required for erb template.
  erb :home #this points to home.erb file
end

get '/students/new' do
  erb :new_student #points to the .erb file
end

# create new students via a form
post '/students' do # notice the POST instead of GET
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/' # i guess after you create new student, go to index?
end

# add static resources