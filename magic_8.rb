
#TODO ablity to exit at any time

# create a menu to give option for adding new answers
@answers = ["Yes", "No", "Maybe", "Try again later", "Your mom"]
@answers_clone = @answers.clone
@curse = ['damn', 'bitch', 'hell', 'fuck']

def main
  puts "--- Welcome to the Magic 8 Ball ---"
  puts "1) Start the game"
  puts "2) Add new answer"
  puts "3) See all answers"
  puts "4) Clear answers"
  puts "5) Exit"
  puts "Enter selection"
  menu_selection = gets.chomp.to_i

  case menu_selection
    when 1
      magic
    when 2
      add_answer
    when 3
      puts @answers_clone
      main
    when 4
      @answers_clone = @answers
      puts "Answers have been cleared"
      main
    when 5
      puts "Goodbye"
      exit
  end
end

def magic
  puts "Type a question to receive an answer, type 'q' to Exit"
  question = gets.strip
  main if question == 'q'
  puts `open http://www.google.com` if question == "search"
  explicit = false
  @curse.each do |swear|
      explicit = true if question.include? swear
  end
  puts explicit ? "Watch your mouth" : @answers_clone.sample
  magic
end

def add_answer
  puts "Add answer you'd like Magic 8 Ball to give."
    user_input = gets.strip
    if @answers_clone.include? (user_input)
      puts "That has previously been added"
      add_answer
    else
      @answers_clone << user_input
      puts "#{@answers_clone.last}, has been added to Magic 8 Ball."

    end
  main
end
main
