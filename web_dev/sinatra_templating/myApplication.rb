# require gems
require 'sinatra'
require 'sqlite3'
require "sinatra/reloader" if development?

set :public_folder, File.dirname(__FILE__) + '/static' #dont memorize this. for static folder. (/static can be any folder)

db = SQLite3::Database.new("favorite_colors.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS favorite_colors (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  color VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)


get '/' do
  @favorite_colors = db.execute("SELECT * FROM favorite_colors") # @-sign required for erb template.
  erb :myApplication 
end

get '/people/new' do
  erb :myApplicationForm #points to the .erb file
end

# create new students via a form
post '/people' do # notice the POST instead of GET
  db.execute("INSERT INTO favorite_colors (name, color) VALUES (?,?)", params['name'], params['color'])
  redirect '/' # not entirely sure what's this for... i guess after you create new student, go to index?
end

# add static resources

# Add an ERB template to the application in phase-0-tracks/web_dev/sinatra_templating. It can be relevant to the other pages or something totally different, but it should use at least one dynamic piece of data (which you'll populate in the next release).