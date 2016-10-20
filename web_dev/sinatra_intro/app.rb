# Week 9.4
# require gems
require 'sinatra'
require "sinatra/reloader" if development? # will automatically reload sinatra for us (windows OS)!
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true #makes code much more readable

# write a basic GET route (11:10? - 16:00)
#  add a query parameter
#  GET /
get '/' do #video says this is a simplified ruby method
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with (16:10). ('this is the modern query parameter way. instead of key-value pair, just value. the about/ is in the url...')
#  route parameters, instead of query parameters.
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves (21:25)
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves (25:00)
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0] # '0 is for the 'first' student. list of one student.' (not entire sure the point of it still.)
  student.to_s
end

########################## MY WORK #########################

# A /contact route that displays an address (you can make up the address).
get '/contact' do
  "You can contact me at NoneOfYourBeeswax@gmail.com!"
end

# A /great_job route that can take a person's name as a query parameter (not a route parameter) and say "Good job, [person's name]!". If the query parameter is not present, the route simply says "Good job!"
get '/great_job/' do #http://localhost:4567/great_job/?name=
  name = params[:name]
  if name != ''
    "Good job, #{name}!"
  else
    "GOOD JOB NO-NAMER!"
  end
end

# A route that uses route parameters to add two numbers and respond with the result. The data types are tricky here -- when will the data need to be (or arrive as) a string?
get '/:number_1/plus/:number_2' do #http://localhost:4567/1/plus/2
  "#{params[:number_1]} + #{params[:number_2]} = #{params[:number_1].to_i + params[:number_2].to_i}"
end

# Optional bonus: Make a route that allows the user to search the database in some way -- maybe for students who have a certain first name, or some other attribute. If you like, you can simply modify the home page to take a query parameter, and filter the students displayed if a query parameter is present.
get '/search_students_by_campus/' do
  campus = params[:campus]
  if campus == ''
    "No campus parameter!"
  else
    students = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]]) 
    students.to_s
    response = ""
    students.each do |student|
      response << "ID: #{student['id']}<br>"
      response << "Name: #{student['name']}<br>"
      response << "Age: #{student['age']}<br>"
      response << "Campus: #{student['campus']}<br><br>"
    end
    "<h2>Students from the #{campus} campus:</h2> #{response}" # this is required to be returned properly.
  end
end

# note to self: the methods need a return value, which is what's printed.

########################## RESEARCH: #########################
# Is Sinatra the only web app library in Ruby? What are some others?
#     There's a ton! Rack 'n' Alternatives • Ruby on Rails • Sinatra • Volt • and many others. 

# Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
#     You could use "Sinatra ActiveRecord Extension" along with something called "Rake" (but this still utilizes SQL). 
#     'Datamapper' is another database.

# What is meant by the term web stack?
#     A Web stack is the collection of software required for Web development. At a minimum, a Web stack contains an operating system (OS), a programming language, database software and a Web server.

#     It refers to the components or technologies/languages/operating sytems/etc used to build a web site. For instance the "LAMP" stack is: Linux, Apache, MySQL, PHP