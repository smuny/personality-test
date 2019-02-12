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
    end
  
    def question_two(user)
      puts "As you continue on in your walk through the forest, you come across an animal."
      prompt = TTY::Prompt.new
      quest = prompt.select("What kind of animal is it?") do |menu|
        sleep 2
        menu.choice 'Big'
        menu.choice 'Medium'
        menu.choice 'Small'
      end
      if quest == 'Big'
        ques = Question.create(answer_one: quest)
        Response.find_or_create_by(user: user, question: ques)
      elsif quest == 'Medium'
        ques = Question.create(answer_two: quest)
        Response.find_or_create_by(user: user, question: ques)
      else
        ques = Question.create(answer_three: quest)
        Response.find_or_create_by(user: user, question: ques)
      end
    end
  
    def question_three(user)
      puts "You come up to the animal."
      prompt = TTY::Prompt.new
      quest = prompt.select("What does the animal do?") do |menu|
        sleep 2
        menu.choice 'Stand still and stares at you'
        menu.choice 'Ignores you'
        menu.choice 'Threatens and chases you'
      end
      if quest == 'Stand still and stares at you'
        ques = Question.create(answer_one: quest)
        Response.find_or_create_by(user: user, question: ques)
      elsif quest == 'Ignores you'
        ques = Question.create(answer_two: quest)
        Response.find_or_create_by(user: user, question: ques)
      else
        ques = Question.create(answer_three: quest)
        Response.find_or_create_by(user: user, question: ques)
      end
    end
  
    def question_four(user)
      prompt = TTY::Prompt.new
      quest = prompt.select("What do you do?") do |menu|
        sleep 2
        menu.choice 'Run away'
        menu.choice 'Engage with it'
      end
      if quest == 'Run away'
        ques = Question.create(answer_one: quest)
        Response.find_or_create_by(user: user, question: ques)
      else
        ques = Question.create(answer_two: quest)
        Response.find_or_create_by(user: user, question: ques)
      end
    end
  
    def question_five(user)
      puts "You're walking deeper into the woods yet, and you come to a clearing. There's a house in the middle of the clearing."
      prompt = TTY::Prompt.new
      quest = prompt.select("What kind of house do you see and do you see a fence?") do |menu|
        sleep 4
        menu.choice 'Big, fence'
        menu.choice 'Big, no fence'
        menu.choice 'Small, fence'
        menu.choice 'Small, no fence'
      end
      if quest == 'Big, fence'
        ques = Question.create(answer_one: quest)
        Response.find_or_create_by(user: user, question: ques)
      elsif quest == 'Big, no fence'
        ques = Question.create(answer_two: quest)
        Response.find_or_create_by(user: user, question: ques)
      elsif quest == 'Small, fence'
        ques = Question.create(answer_three: quest)
        Response.find_or_create_by(user: user, question: ques)
      else
        ques = Question.create(answer_four: quest)
        Response.find_or_create_by(user: user, question: ques)
      end
    end
  
  
    def question_six(user)
      puts "You walk up to the door of the home and it's open a bit. You enter and see a table."
      prompt = TTY::Prompt.new
      quest = prompt.select(" Describe what's on the table.") do |menu|
        sleep 2
        menu.choice 'Food'
        menu.choice 'People'
        menu.choice 'Flowers'
      end
      if quest == 'Food'
        ques = Question.create(answer_one: quest)
        Response.find_or_create_by(user: user, question: ques)
      elsif quest == 'People'
        ques = Question.create(answer_two: quest)
        Response.find_or_create_by(user: user, question: ques)
      else
        ques = Question.create(answer_three: quest)
        Response.find_or_create_by(user: user, question: ques)
      end
    end
  
    def question_seven(user)
      puts "You finish looking around the house and leave out the back door. There's a huge lawn and in the center is a garden. In the garden, you find a cup."
      prompt = TTY::Prompt.new
      quest = prompt.select(" What is the cup made out of? What do you do with the cup?") do |menu|
        sleep 2
        menu.choice 'Metal'
        menu.choice 'Plastic'
        menu.choice 'Glass'
        menu.choice 'Paper'
      end
      if quest == 'Metal'
        ques = Question.create(answer_one: quest)
        Response.find_or_create_by(user: user, question: ques)
      elsif quest == 'Plastic'
        ques = Question.create(answer_two: quest)
        Response.find_or_create_by(user: user, question: ques)
      elsif quest == 'Glass'
        ques = Question.create(answer_three: quest)
        Response.find_or_create_by(user: user, question: ques)
      else
        ques = Question.create(answer_four: quest)
        Response.find_or_create_by(user: user, question: ques)
      end
    end
  
    def question_eight(user)
      puts "As you walk to the end of the garden, you find yourself at a body of water."
      prompt = TTY::Prompt.new
      quest = prompt.select("What kind of body of water is it? A lake? River? Pond?") do |menu|
        sleep 2
        menu.choice 'Lake'
        menu.choice 'Pond'
        menu.choice 'Stream'
        menu.choice 'Ocean'
      end
      if quest == 'Lake'
        ques = Question.create(answer_one: quest)
        Response.find_or_create_by(user: user, question: ques)
      elsif quest == 'Pond'
        ques = Question.create(answer_two: quest)
        Response.find_or_create_by(user: user, question: ques)
      elsif quest == 'Stream'
        ques = Question.create(answer_three: quest)
        Response.find_or_create_by(user: user, question: ques)
      else
        ques = Question.create(answer_four: quest)
        Response.find_or_create_by(user: user, question: ques)
      end
    end
  
    def question_nine(user)
      puts "You must cross this water in order to get home."
      prompt = TTY::Prompt.new
      quest = prompt.select("How wet do you get?") do |menu|
        sleep 2
        menu.choice 'Not wet at all'
        menu.choice 'Moderately wet'
        menu.choice 'Super soaked'
      end
      if quest == 'Not wet at all'
        ques = Question.create(answer_one: quest)
        Response.find_or_create_by(user: user, question: ques)
      elsif quest == 'Moderately wet'
        ques = Question.create(answer_two: quest)
        Response.find_or_create_by(user: user, question: ques)
      else
        ques = Question.create(answer_three: quest)
        Response.find_or_create_by(user: user, question: ques)
      end
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
      question_nine(user)
    end
end
