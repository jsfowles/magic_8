
#ablity to exit at any time

@answers = ["Yes", "No", "Maybe", "Try again later"]

def magic
  puts "Welcome to the Magic 8 Ball"
  puts "Type a question to receive an answer, type 'q' to Exit"
  question = gets.strip
  exit if question == 'q'
  puts @answers.sample
  magic
end

magic
