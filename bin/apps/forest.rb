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
            (__)   (
              __)     (__)  (_)         (__)(__)                            "
  end

  def question_one(user)
    puts "Picture yourself walking through a beautiful forest. The sun is out, there's a perfect breeze. It's just beautiful."
    prompt = TTY::Prompt.new
<<<<<<< HEAD
    quest = prompt.select("Who do you see walking with you?") do |menu|
        sleep 2
      menu.choice 'Family member'
      menu.choice 'Friend'
      menu.choice 'Pet'
      menu.choice 'No one'
    end

    if quest == 'Family member'
      ques = Question.create(answer_one: quest)
      Response.find_or_create_by(user: user, question: ques)
    elsif quest == 'Friend'
      ques = Question.create(answer_two: quest)
      Response.find_or_create_by(user: user, question: ques)
    elsif quest == 'Pet'
      ques = Question.create(answer_three: quest)
      Response.find_or_create_by(user: user, question: ques)
    else
      ques = Question.create(answer_four: quest)
      Response.find_or_create_by(user: user, question: ques)
    end
=======
    answer = prompt.ask("Who are you walking with?")
    que_1 = Question.find_or_create_by(desc: que)
    Response.create(user: user, question: que_1, answers: answer)
>>>>>>> heello
  end

  def question_two(user)
    que = "As you continue on in your walk through the forest, you come across an animal."
    puts que
    prompt = TTY::Prompt.new
<<<<<<< HEAD
    quest = prompt.select("What kind of animal is it?") do |menu|
      sleep 2
      menu.choice 'Big', 1
      menu.choice 'Medium', 2
      menu.choice 'Small', 3
    end
=======
    answer = prompt.ask("What kind of animal is it?")
    que_2 = Question.find_or_create_by(desc: que)
    Response.create(user: user, question: que_2, answers: answer)
    
>>>>>>> heello
  end

  def question_three(user)
    que = "You come up to the animal."
    puts que
    prompt = TTY::Prompt.new
<<<<<<< HEAD
    quest = prompt.select("What does the animal do?") do |menu|
      sleep 2
      menu.choice 'Stand still and stares at you', 1
      menu.choice 'Ignores you', 2
      menu.choice 'Threatens and chases you', 3
    end
=======
    answer = prompt.ask("What does the animal do?")
    que_3 = Question.find_or_create_by(desc: que)
    Response.create(user: user, question: que_3, answers: answer)
>>>>>>> heello
  end

  def question_four(user)
    que = "You're walking deeper into the woods yet, and you come to a clearing. There's a house in the middle of the clearing."
    puts que
    prompt = TTY::Prompt.new
<<<<<<< HEAD
    quest = prompt.select("What do you do?") do |menu|
      sleep 2
      menu.choice 'Run away', 1
      menu.choice 'Engage with it', 2
    end
  end

=======
    answer = prompt.ask("How big is it? Is it fenced in or no?")
    que_4 = Question.find_or_create_by(desc: que)
    Response.create(user: user, question: que_4, answers: answer)
  end
>>>>>>> heello

  def question_five(user)
    que = "You walk up to the door of the home and it's open a bit. You enter and see a table."
    puts que
    prompt = TTY::Prompt.new
<<<<<<< HEAD
    quest = prompt.select(" Describe what's on the table.") do |menu|
      sleep 2
      menu.choice 'Food', 1
      menu.choice 'People', 2
      menu.choice 'Flowers', 3
    end
=======
    answer = prompt.ask("Describe what's on the table.")
    que_5 = Question.find_or_create_by(desc: que)
    Response.create(user: user, question: que_5, answers: answer)
>>>>>>> heello
  end

  def question_six(user)
    que = "You finish looking around the house and leave out the back door. There's a huge lawn and in the center is a garden. In the garden, you find a cup."
    puts que
    prompt = TTY::Prompt.new
<<<<<<< HEAD
    quest = prompt.select(" What is the cup made out of? What do you do with the cup?") do |menu|
      sleep 2
      menu.choice 'Metal', 1
      menu.choice 'Plastic', 2
      menu.choice 'Glass', 3
      menu.choice 'Paper', 4
    end
=======
    answer = prompt.ask("What is the cup made out of? What do you do with the cup?")
    que_6 = Question.find_or_create_by(desc: que)
    Response.create(user: user, question: que_6, answers: answer)
>>>>>>> heello
  end

  def question_seven(user)
    que = "As you walk to the end of the garden, you find yourself at a body of water."
    puts que
    prompt = TTY::Prompt.new
<<<<<<< HEAD
    quest = prompt.select("What kind of body of water is it? A lake? River? Pond?") do |menu|
      sleep 2
      menu.choice 'Lake', 1
      menu.choice 'Pond', 2
      menu.choice 'Stream', 3
      menu.choice 'Ocean', 4
    end
=======
    answer = prompt.ask("What kind of body of water is it? A lake? River? Pond?")
    que_7 = Question.find_or_create_by(desc: que)
    Response.create(user: user, question: que_7, answers: answer)
>>>>>>> heello
  end

  def question_eight(user)
    que = "You must cross this water in order to get home."
    puts que
    prompt = TTY::Prompt.new
<<<<<<< HEAD
    quest = prompt.select("How wet do you get?") do |menu|
      sleep 2
      menu.choice 'Not wet at all', 1
      menu.choice 'Moderately wet', 2
      menu.choice 'Super soaked', 3
    end
=======
    answer = prompt.ask("How wet do you get?")   
    que_8 = Question.find_or_create_by(desc: que)
    Response.create(user: user, question: que_8, answers: answer)
>>>>>>> heello
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
