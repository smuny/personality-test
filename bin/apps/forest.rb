class The_Forest
# There's going to be a given question
# There will be given multiple choices
# User chooses a choice and the selected choice will be saved
# The next question will be asked.

# At the end of all questions, the results of all the of choices will be presented along with the intepretation of them.
  def welcome
    puts " 
    
      _______ .-. .-.,---.    ,---. .---.  ,---.    ,---.     .---.  _______ 
    |__   __|| | | || .-'    | .-'/ .-. ) | .-.\   | .-'    ( .-._)|__   __|
      )| |   | `-' || `-.    | `-.| | |(_)| `-'/   | `-.   (_) \     )| |   
     (_) |   | .-. || .-'    | .-'| | | | |   (    | .-'   _  \ \   (_) |   
       | |   | | |)||  `--.  | |  \ `-' / | |\ \   |  `--.( `-'  )    | |   
       `-'   /(  (_)/( __.'  )\|   )---'  |_| \)\  /( __.' `----'     `-'   
            (__)   (__)     (__)  (_)         (__)(__)                            "
  end

  def question_one(user)
    puts "Picture yourself walking through a beautiful forest. The sun is out, there's a perfect breeze. It's just beautiful."
    prompt = TTY::Prompt.new
    answer = prompt.ask("Who are you walking with?")
    ans = Answer.create(content: answer)
    Response.create(user: user, answer: ans)
  end

  def question_two(user)
    puts "As you continue on in your walk through the forest, you come across an animal."
    prompt = TTY::Prompt.new
    answer = prompt.ask("What kind of animal is it?")
    ans = Answer.create(content: answer)
    Response.create(user: user, answer: ans)
  end

  def question_three(user)
    puts "You come up to the animal."
    prompt = TTY::Prompt.new
    answer = prompt.ask("What does the animal do?")
    ans = Answer.create(content: answer)
    Response.create(user: user, answer: ans)
  end

  def question_four(user)
    puts "You're walking deeper into the woods yet, and you come to a clearing. There's a house in the middle of the clearing."
    prompt = TTY::Prompt.new
    answer = prompt.ask("How big is it? Is it fenced in or no?")
    ans = Answer.create(content: answer)
    Response.create(user: user, answer: ans)
  end

  def question_five(user)
    puts "You walk up to the door of the home and it's open a bit. You enter and see a table."
    prompt = TTY::Prompt.new
    answer = prompt.ask("Describe what's on the table.")
    ans = Answer.create(content: answer)
    Response.create(user: user, answer: ans)
  end

  def question_six(user)
    puts "You finish looking around the house and leave out the back door. There's a huge lawn and in the center is a garden. In the garden, you find a cup."
    prompt = TTY::Prompt.new
    answer = prompt.ask("What is the cup made out of? What do you do with the cup?")
    ans = Answer.create(content: answer)
    Response.create(user: user, answer: ans)
  end

  def question_seven(user)
    puts "As you walk to the end of the garden, you find yourself at a body of water."
    prompt = TTY::Prompt.new
    answer = prompt.ask("What kind of body of water is it? A lake? River? Pond?")
    ans = Answer.create(content: answer)
    Response.create(user: user, answer: ans)
  end

  def question_eight(user)
    puts "You must cross this water in order to get home."
    prompt = TTY::Prompt.new
    answer = prompt.ask("How wet do you get?")   
    ans = Answer.create(content: answer)
    Response.create(user: user, answer: ans)
  end

  def run(user)
    welcome
    question_one(user)
    question_two(user)
    question_three(user)
    question_four(user)
    question_five(user)
    question_six(user)
    question_seven(user)
    question_eight(user)
  end
end
