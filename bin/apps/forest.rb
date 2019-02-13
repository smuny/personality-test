require 'pry'

 class ForestTest
  system "clear"
  # There's going to be a given question
  # There will be given multiple choices
  # User chooses a choice and the selected choice will be saved
  # The next question will be asked.

  # At the end of all questions, the results of all the of choices will be presented along with the intepretation of them.
    def welcome_forest(user)
      system "clear"
      puts "
        _______ .-. .-.,---.    ,---. .---.  ,---.    ,---.     .---.  _______
      |__   __|| | | || .-'    | .-'/ .-. ) | .-.\   | .-'    ( .-._)|__   __|
        )| |   | `-' || `-.    | `-.| | |(_)| `-'/   | `-.   (_) \     )| |
       (_) |   | .-. || .-'    | .-'| | | | |   (    | .-'   _  \ \   (_) |
         | |   | | |)||  `--.  | |  \ `-' / | |\ \   |  `--.( `-'  )    | |
         `-'   /(  (_)/( __.'  )\|   )---'  |_| \)\  /( __.' `----'     `-'
              (__)   (__)     (__)  (_)         (__)(__)                            "

    question_one(user)
    end

    def question_one(user)
      # system "clear"

      puts "Picture yourself walking through a beautiful forest. The sun is out, there's a perfect breeze. It's just beautiful."
      que_1 = "Who do you see walking with you?"
      prompt = TTY::Prompt.new
      quest = prompt.select("Who do you see walking with you?") do |menu|
          sleep 2
        menu.choice 'Family member'
        menu.choice 'Friend'
        menu.choice 'Pet'
        menu.choice 'No one'
      end

      if quest == 'Family member'
        ques = Question.find_or_create_by(desc: que_1, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      elsif quest == 'Friend'
        ques = Question.find_or_create_by(desc: que_1 , answer_two: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      elsif quest == 'Pet'
        ques = Question.find_or_create_by(desc: que_1, answer_three: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      else
        ques = Question.find_or_create_by(desc: que_1, answer_four: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      end
      question_two(user)
    end 

    def question_two(user)
      system "clear"
      puts "As you continue on in your walk through the forest, you come across an animal."
      que = "What kind of animal is it?"
      prompt = TTY::Prompt.new
      quest = prompt.select("What kind of animal is it?") do |menu|
        sleep 2
        menu.choice 'Big'
        menu.choice 'Medium'
        menu.choice 'Small'
      end
      if quest == 'Big'
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      elsif quest == 'Medium'
        ques = Question.find_or_create_by(desc: que, answer_two: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      else
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      end
      question_three(user)
    end

    def question_three(user)
      system "clear"
      puts "You come up to the animal."
      que = "What does the animal do?"
      prompt = TTY::Prompt.new
      quest = prompt.select("What does the animal do?") do |menu|
        sleep 2
        menu.choice 'Stand still and stares at you'
        menu.choice 'Ignores you'
        menu.choice 'Threatens and chases you'
      end
      if quest == 'Stand still and stares at you'
        ques = Question.find_or_create_by(desc:que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      elsif quest == 'Ignores you'
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      else
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      end
      question_four(user)
    end

    def question_four(user)
      system "clear"
      prompt = TTY::Prompt.new
      que = "What do you do?"
      quest = prompt.select("What do you do?") do |menu|
        sleep 2
        menu.choice 'Run away'
        menu.choice 'Engage with it'
      end
      if quest == 'Run away'
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      else
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      end
      question_five(user)
    end

    def question_five(user)
      system "clear"
      puts "You're walking deeper into the woods yet, and you come to a clearing. There's a house in the middle of the clearing."
      que = "What kind of house do you see and do you see a fence?"
      prompt = TTY::Prompt.new
      quest = prompt.select("What kind of house do you see and do you see a fence?") do |menu|
        sleep 4
        menu.choice 'Big, fence'
        menu.choice 'Big, no fence'
        menu.choice 'Small, fence'
        menu.choice 'Small, no fence'
      end
      if quest == 'Big, fence'
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      elsif quest == 'Big, no fence'
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      elsif quest == 'Small, fence'
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      else
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      end
      question_six(user)
    end


    def question_six(user)
      system "clear"
      puts "You walk up to the door of the home and it's open a bit. You enter and see a table."
      que = "Describe what's on the table."
      prompt = TTY::Prompt.new
      quest = prompt.select("Describe what's on the table.") do |menu|
        sleep 2
        menu.choice 'Food'
        menu.choice 'People'
        menu.choice 'Flowers'
      end
      if quest == 'Food'
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      elsif quest == 'People'
        ques = Question.find_or_create_by(desc: que, answer_two: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      else
        ques = Question.find_or_create_by(desc: que, answer_three: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      end
      question_seven(user)
    end

    def question_seven(user)
      system "clear"
      puts "You finish looking around the house and leave out the back door. There's a huge lawn and in the center is a garden. In the garden, you find a cup."
      que = "What is the cup made out of? What do you do with the cup?"
      prompt = TTY::Prompt.new
      quest = prompt.select(" What is the cup made out of? What do you do with the cup?") do |menu|
        sleep 2
        menu.choice 'Metal'
        menu.choice 'Plastic'
        menu.choice 'Glass'
        menu.choice 'Paper'
      end
      if quest == 'Metal'
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      elsif quest == 'Plastic'
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      elsif quest == 'Glass'
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      else
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      end
      question_eight(user)
    end

    def question_eight(user)
      system "clear"
      puts "As you walk to the end of the garden, you find yourself at a body of water."
      prompt = TTY::Prompt.new
      que = "What kind of body of water is it? A lake? River? Pond?"
      quest = prompt.select("What kind of body of water is it? A lake? River? Pond?") do |menu|
        sleep 2
        menu.choice 'Lake'
        menu.choice 'Pond'
        menu.choice 'Stream'
        menu.choice 'Ocean'
      end
      if quest == 'Lake'
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      elsif quest == 'Pond'
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      elsif quest == 'Stream'
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      else
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      end
      question_nine(user)
    end

    def question_nine(user)
      system "clear"
      puts "You must cross this water in order to get home."
      que = "How wet do you get?"
      prompt = TTY::Prompt.new
      quest = prompt.select("How wet do you get?") do |menu|
        sleep 2
        menu.choice 'Not wet at all'
        menu.choice 'Moderately wet'
        menu.choice 'Super soaked'
      end
      if quest == 'Not wet at all'
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      elsif quest == 'Moderately wet'
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      else
        ques = Question.find_or_create_by(desc: que, answer_one: quest)
        Response.find_or_create_by(user: user, question: ques, answers: quest)
      end
      # all_user_response(user)
    end

    def all_user_response(user)
      user.responses.each do |x|
       puts x.answers
      end
    end

    def forest_run(user)
      # welcome
      # question_one(user)
      # question_two(user)
      # question_three(user)
      # question_four(user)
      # question_five(user)
      # question_six(user)
      # question_seven(user)
      # question_eight(user)
      # question_nine(user)
      all_user_response(user)
    end
   end
