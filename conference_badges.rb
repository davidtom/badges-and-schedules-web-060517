def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)

  badge_messages = []

  name_array.each do |name|
    badge_messages.push(badge_maker(name))
  end

  badge_messages

end

def assign_rooms(name_array)
  room_assignments = []

  name_array.each_with_index { |name, i|
    room_assignments.push("Hello, #{name}! You'll be assigned to room #{i+1}!")
  }

  room_assignments

end

def printer(name_array)
  batch_badge_creator(name_array).each { |item|
    puts item
  }

  assign_rooms(name_array).each { |item|
    puts item
  }

end
