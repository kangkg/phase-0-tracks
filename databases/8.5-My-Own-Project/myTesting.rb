# run this program with ruby, depending on use, can activate the actual .db file

require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("toDoList.db") # creates the .db file we want.
db.results_as_hash = true # converts to a readable hash, instead of as nested-array.

########## My Fancy string delimiters. make SQL commands here, then integrate into ruby methods! not quite required... ###############
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS toDoList(
    id INTEGER PRIMARY KEY,
    comment VARCHAR(255),
    dueDate VARCHAR(255)
  )
SQL

# delete_entry_cmd = <<-SQL
#   DELETE FROM toDoList WHERE id=  ?
# SQL

######################### RUBY METHODS ##########################
# create inserts (do i need this when i can just use db.execute instead?)
# def insert_into_toDoList(db, comment, dueDate)
#   db.execute("INSERT INTO toDoList (comment, dueDate) VALUES (?, ?)", [comment, dueDate])
# end

# delete from
# def delete_from_toDoList(db, id)
#   db.execute(delete_entry_cmd, [id])
# end

# print list
def print_toDoList(db)
  puts '','##################################','Your To-Do List: {Your Note || The Due-Date} '
  myList = db.execute("SELECT * FROM toDoList")
  myList.each do |list_item|
    puts "#{list_item['id']}.  #{list_item['comment']} ||  #{list_item['dueDate']}"
  end
  puts '##################################'
end

# method to ask user (for readability)
def ask_user
  puts '',"Ken's To-Do List!
  Please input a number as your choice:
  1: Add a note, and it's due-date.
  2: Delete a note.
  3: Print all notes.
  4: Exit program.
  404: Reset table!"
  print '> '
  user_answer = gets.chomp
end


############# driver code ##################

# Initialize my table (if it's not there already)
db.execute(create_table_cmd)

############### USER INTERFACE + basically all the code lol. decided not to use methods #########
user_answer = ask_user

until (user_answer == '4')
  if user_answer == '1' #1: Add a note, and it's due-date.
    puts "What is the note you want to add?" ;print '> '
    comment = gets.chomp
    puts "What due-date is this note for?";print '> '
    date = gets.chomp
    db.execute("INSERT INTO toDoList (comment, dueDate) VALUES (?, ?)", [comment, date])

  elsif user_answer == '2' #2: Delete a note.
    print_toDoList(db)
    puts "What note (ID) do you want to delete?";print '> '
    userID = gets.chomp
    db.execute("DELETE FROM toDoList WHERE id = ?", [userID])
    db.execute("UPDATE toDoList SET id = id - 1 WHERE id > ?", [userID]) # shifts all the notes to replace the ID.
    print_toDoList(db)

  elsif user_answer == '3' #3: Print all notes.
    print_toDoList(db)

  elsif user_answer == '404'
    puts "YOU DELETED THE TABLE!!"
    db.execute("DROP TABLE toDoList")
    break
  end
  user_answer = ask_user
end
# END