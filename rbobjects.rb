# ===== ===== CALCULATOR ===== =====
# Create a class to model a physical calculator
#
# Class Methods: Each of these methods accept two arguments value1 and value2 and output the result as a return value
#
# add
# subtract
# multiply
# divide
# Create a class to model an elevator

class Calculator
  def addition(value1, value2)
    return "The answer is #{value1 + value2}"
  end

  def subtraction(value1, value2)
    return "The answer is #{value1 - value2}"
  end

  def multiply(value1, value2)
    return "The answer is #{value1 * value2}"
  end

  def division(value1, value2)
    return "The answer is #{value1 / value2}"
  end
end
my_cal = Calculator.new
result_add = my_cal.addition(5, 7)
puts "Addition: #{result_add}"
puts my_cal.subtraction(10, 3)
puts my_cal.multiply(6, 4)
puts my_cal.division(60, 10)

# ===== ===== ELEVATOR ===== =====
# Instance Variables:
# floor - the floor you are currently on

# Instance Methods:
# The following methods will change the floor instance variable:
# go_up - tell the elevator to go up a floor
# go_down - tell the elevator to go down a floor
# floor - set this as a readable attribute to be accessed outside of the class definition
# cheery_greeting - display to the terminal the current floor with a interesting greeting
# Use the cheery_greeting method to display your greeting every time you change floors

class Elevator
  attr_accessor :floor
  def initialize
    puts "\nWhich floor?"
  end
  def go_up
    puts "** Going up"
    @floor = floor + 1
    # puts @floor
    puts cheery_greeting
  end
  def go_down
    puts "** Going down"
    @floor = floor - 1
    # puts @floor
    puts cheery_greeting
  end
  def cheery_greeting
    puts "Your final stop: #{@floor}"
  end
end

new_floor = Elevator.new
new_floor.floor = 5
new_floor.go_up
new_floor.go_down
new_floor.cheery_greeting
