# data
school = {
    math_class: {
        real_name: 'Mathematics Class',
        amount_of_seats: #Hash
        {
            total_seats: 20,
            seats_available: 3
        },
        books: #Array
        [
            'Calculus II', 
            'The Art Of Arithmetic for Dummies'
        ]
    },
    long_hallway: {
        real_name: 'Super Long Hallway',
        amount_of_seats: 
        {
            total_seats: 0,
            seats_available: 0
        },
        :length_of_hallway_in_meters => 20 #single symbol dedicated to an INT
    },
    cafeteria: {
        real_name: 'Cafeteria',
        amount_of_seats: {
            total_seats: 500,
            seats_available: 8
        },
        meals: 
        [
            'Mystery Stew',
            'Something Special',
            'Edible Pizza'
        ]
    }
}


########################### Driver Code ######################### 
puts "","----------------------------------------------------------------","Welcome to school! :D"
puts "","Here is some information on our #{school[:math_class][:real_name]}."
puts "This is the amount of seats in math class: #{school[:math_class][:amount_of_seats] } "
puts "This is the amount of FREE seats in math class: #{school[:math_class][:amount_of_seats][:seats_available] } "
puts "These are the books you require for math class: #{school[:math_class][:books] } ",""

puts "Here is some information on our #{school[:long_hallway][:real_name]}."
puts "This is the amount of seats in our long hallway: #{school[:long_hallway][:amount_of_seats] } "
puts "This is the amount of FREE seats in our long hallway: #{school[:long_hallway][:amount_of_seats][:seats_available] } "
puts "This is how long our hallway is: #{school[:long_hallway][:length_of_hallway_in_meters]} meters."
puts "These are the books you require for hallway (you don't need any!): #{school[:long_hallway][:books] } ","" #returns nothing

puts "Here is some information on our #{school[:cafeteria][:real_name]}."
puts "This is the amount of seats in our cafeteria: #{school[:cafeteria][:amount_of_seats] } "
puts "This is the amount of FREE seats in our cafeteria: #{school[:cafeteria][:amount_of_seats][:seats_available] } "
puts "These our some of the delicious foods that we serve: #{school[:cafeteria][:meals] } ","" #returns nothing

puts "I hope you enjoyed the tour!",'### END ###'

########################## END #########################