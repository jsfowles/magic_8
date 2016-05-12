
#TODO ablity to exit at any time

# create a menu to give option for adding new answers
@answers = ["Yes", "No", "Maybe", "Try again later", "Your mom"]
@curse = ['damn', 'bitch', 'hell', 'fuck']

def main
  puts "--- Welcome to the Magic 8 Ball ---"
  puts "1) Start the game"
  puts "2) Add new answer"
  puts "3) Exit"
  puts "Enter selection"
  menu_selection = gets.chomp.to_i

  case menu_selection
    when 1
      magic
    when 2
      add_answer
    when 3
     exit
    end
end

def magic
  puts "Type a question to receive an answer, type 'q' to Exit"
  question = gets.strip
  main if question == 'q'
  explicit = false
  @curse.each do |swear|
      explicit = true if question.include? swear
  end
  puts explicit ? "Watch your fucking mouth" : @answers.sample
  magic
end

def add_answer
  puts "Add answer you'd like Magic 8 Ball to give."
  @answers << gets.strip
  puts "#{@answers.last}, has been added to Magic 8 Ball, would you like to add another?"
end



main
