require_all 'sounds'
class The_Forest
  # There's going to be a given question
  # There will be given multiple choices
  # User chooses a choice and the selected choice will be saved
  # The next question will be asked.
  
  # At the end of all questions, the results of all the of choices will be presented along with the intepretation of them.
    def welcome
      puts "Hello"
      
    end
  
    def question_one(user)
      pid = fork{ exec 'afplay', "sounds/nature_sounds.mp3" }
      puts "Picture yourself walking through a beautiful forest. The sun is out, there's a perfect breeze. It's just beautiful."
      prompt = TTY::Prompt.new
      answer = prompt.select("Who do you see walking with you?") do |menu|
        sleep 2
        menu.choice 'Family member'
        menu.choice 'Friend'
        menu.choice 'Pet'
        menu.choice 'No one'
      end
      fork{ exec 'killall afplay'}
      
      if answer == 'Family member'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 1, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      elsif answer == 'Friend'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 1, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      elsif answer == 'Pet'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 1, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      elsif 
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 1, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      end
    end
  
    def question_two(user)
      pid = fork { exec 'afplay', 'sounds/walking_on_gravel.mp3'}
      puts "As you continue on in your walk through the forest, you come across an animal."
      prompt = TTY::Prompt.new
      answer = prompt.select("What kind of animal is it?") do |menu|
        sleep 2
        menu.choice 'Big'
        menu.choice 'Medium'
        menu.choice 'Small'
      end
      fork{ exec 'killall afplay'}
      if answer == 'Big'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 2, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      elsif answer == 'Medium'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 2, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      else
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 2, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      end
    end
  
    def question_three(user)
      puts "You come up to the animal."
      prompt = TTY::Prompt.new
      answer = prompt.select("What does the animal do?") do |menu|
        sleep 2
        menu.choice 'Stand still and stares at you'
        menu.choice 'Ignores you'
        menu.choice 'Threatens and chases you'
      end
      if answer == 'Stand still and stares at you'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 3, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      elsif answer == 'Ignores you'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 3, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      else
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 3, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      end
    end
  
    def question_four(user)
      prompt = TTY::Prompt.new
      answer = prompt.select("What do you do?") do |menu|
        sleep 2
        menu.choice 'Run away'
        menu.choice 'Engage with it'
      end
      if answer == 'Run away'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 4, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      else
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 4, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      end
    end
  
    def question_five(user)
      pid = fork{ exec 'afplay', 'sounds/walking_on_gravel.mp3'}
      puts "You're walking deeper into the woods yet, and you come to a clearing. There's a house in the middle of the clearing."
      prompt = TTY::Prompt.new
      # killall 'afplay'
      answer = prompt.select("What kind of house do you see and do you see a fence?") do |menu|
        sleep 4
        menu.choice 'Big, fence'
        menu.choice 'Big, no fence'
        menu.choice 'Small, fence'
        menu.choice 'Small, no fence'
      end
      fork{ exec 'killall afplay'}
      if answer == 'Big, fence'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 5, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      elsif answer == 'Big, no fence'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 5, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      elsif answer == 'Small, fence'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 5, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      else
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 5, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      end
    end
  
  
    def question_six(user)
      pid = fork{ exec 'afplay', 'sounds/door.mp3'}
      puts "You walk up to the door of the home and it's open a bit. You enter and see a table."
      prompt = TTY::Prompt.new
      # killall 'afplay'
      answer = prompt.select("Describe what's on the table.") do |menu|
        sleep 2
        menu.choice 'Food'
        menu.choice 'People'
        menu.choice 'Flowers'
      end

      fork{ exec 'killall afplay'}
      if answer == 'Food'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 6, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      elsif answer == 'People'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 6, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      else
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 6, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      end
    end
  
    def question_seven(user)
      pid = fork{ exec 'afplay', 'sounds/door.mp3'}
      sleep (2)
      fork{ exec 'killall afplay'}
      puts "You finish looking around the house and leave out the back door. There's a huge lawn and in the center is a garden. In the garden, you find a cup."
      prompt = TTY::Prompt.new
      pid = fork{ exec 'afplay', 'sounds/nature_sounds.mp3'}
      sleep (2)
      answer = prompt.select(" What is the cup made out of? What do you do with the cup?") do |menu|
        sleep 2
        menu.choice 'Metal'
        menu.choice 'Plastic'
        menu.choice 'Glass'
        menu.choice 'Paper'
      end
      fork{ exec 'killall afplay'}
      if answer == 'Metal'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 7, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      elsif answer == 'Plastic'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 7, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      elsif answer == 'Glass'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 7, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      else
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 7, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      end
    end
  
    def question_eight(user)
      puts "As you walk to the end of the garden, you find yourself at a body of water."
      sleep(1)
      pid = fork{ exec 'afplay', 'sounds/nature_water.mp3'}
      prompt = TTY::Prompt.new
      answer = prompt.select("What kind of body of water is it? A lake? River? Pond?") do |menu|
        sleep 2
        menu.choice 'Lake'
        menu.choice 'Pond'
        menu.choice 'Stream'
        menu.choice 'Ocean'
      end

      fork{ exec 'killall afplay'}
      if answer == 'Lake'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 8, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      elsif answer == 'Pond'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 8, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      elsif answer == 'Stream'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 8, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      else
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 8, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      end
    end
  
    def question_nine(user)
      # killall 'afplay'
      pid = fork{ exec 'afplay' , 'sounds/crossing_bridge.mp3'}
      puts "You must cross this water in order to get home."
      prompt = TTY::Prompt.new
      answer = prompt.select("How wet do you get?") do |menu|
        sleep 2
        menu.choice 'Not wet at all'
        menu.choice 'Moderately wet'
        menu.choice 'Super soaked'
      end
      fork{ exec 'killall afplay'}
      if answer == 'Not wet at all'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 9, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      elsif answer == 'Moderately wet'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 9, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      else
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 9, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      end
    end

    def get_user_results(user)
      # killall 'afplay'
      count = []
      user.responses.each do |x|
        count << x.answers
      end
      results = count.last(9)
      puts "Question 1: Who do you see walking with you?"
      sleep(2)
      puts "Your answer was #{results[0]}"
      sleep(2)

    end 
  
    def run(user)
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
