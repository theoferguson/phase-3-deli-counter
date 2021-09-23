# Write your code here.
katz_deli = []

def line(line)
    if line.length == 0
        puts "The line is currently empty."
    else 
        line_order = line.collect do |cust|
            "#{line.index(cust)+1}. #{cust}"
        end
        puts "The line is currently: #{line_order.join(" ")}"
    end
end

def take_a_number(line, person)
    line << person
    puts "Welcome, #{person}. You are number #{line.index(person)+1} in line."
end

def now_serving(line)
    if line.length == 0
        puts "There is nobody waiting to be served!"
    else
        next_up = line.shift()
        puts "Currently serving #{next_up}."
    end
end
