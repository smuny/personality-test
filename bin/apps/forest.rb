require_all 'sounds'
class The_Forest
    def initialize
      @all = []
    end
  
    def welcome
      system 'clear'
      puts " 
      ▄▄▄▄▀ ▄  █ ▄███▄       ▄████  ████▄ █▄▄▄▄ ▄███▄     ▄▄▄▄▄      ▄▄▄▄▀ 
   ▀▀▀ █   █   █ █▀   ▀      █▀   ▀ █   █ █  ▄▀ █▀   ▀   █     ▀▄ ▀▀▀ █    
       █   ██▀▀█ ██▄▄        █▀▀    █   █ █▀▀▌  ██▄▄   ▄  ▀▀▀▀▄       █    
      █    █   █ █▄   ▄▀     █      ▀████ █  █  █▄   ▄▀ ▀▄▄▄▄▀       █     
     ▀        █  ▀███▀        █             █   ▀███▀               ▀      
             ▀                 ▀           ▀                               
                                                                           
    "
      fork{ exec 'killall afplay'}
    end
    
    def question_one(user)
      system "clear"
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
        @all << answer
      elsif answer == 'Friend'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 1, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      elsif answer == 'Pet'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 1, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      elsif 
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 1, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      end
    end
  
    def question_two(user)
      system "clear"
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
        @all << answer
      elsif answer == 'Medium'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 2, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      else
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 2, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      end
    end
  
    def question_three(user)
      system "clear"
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
        @all << answer
      elsif answer == 'Ignores you'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 3, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      else
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 3, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      end
    end
  
    def question_four(user)
      system "clear"
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
        @all << answer
      else
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 4, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      end
    end
  
    def question_five(user)
      system "clear"
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
        @all << answer
      elsif answer == 'Big, no fence'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 5, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      elsif answer == 'Small, fence'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 5, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      else
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 5, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      end
    end
  
  
    def question_six(user)
      system "clear"
      pid = fork{ exec 'afplay', 'sounds/door.mp3'}
      puts "You walk up to the door of the home and it's open a bit. You enter and see a table."
      prompt = TTY::Prompt.new
      # killall 'afplay'
      answer = prompt.select("Describe what's on the table.") do |menu|
        sleep 2
        menu.choice 'Food'
        menu.choice 'People'
        menu.choice 'Flowers'
        menu.choice 'None/Other'
      end

      fork{ exec 'killall afplay'}
      if answer == 'Food'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 6, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      elsif answer == 'People'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 6, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      elsif answer == 'Flowers'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 6, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      else
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 6, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      end
    end
  
    def question_seven(user)
      system "clear"
      pid = fork{ exec 'afplay', 'sounds/door.mp3'}
      puts "You finish looking around the house and leave out the back door. There's a huge lawn and in the center is a garden. In the garden, you find a cup."
      prompt = TTY::Prompt.new
      pid = fork{ exec 'afplay', 'sounds/nature_sounds.mp3'}
      answer = prompt.select(" What is the cup made out of? What do you do with the cup?") do |menu|
        sleep 2
        menu.choice 'Metal'
        menu.choice 'Plastic'
        menu.choice 'Glass'
        menu.choice 'Paper'
      end
      sleep (2)
      fork{ exec 'killall afplay'}
      if answer == 'Metal'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 7, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      elsif answer == 'Plastic'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 7, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      elsif answer == 'Glass'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 7, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      else
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 7, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      end
    end
  
    def question_eight(user)
      system "clear"
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
        @all << answer
      elsif answer == 'Pond'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 8, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      elsif answer == 'Stream'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 8, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      else
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 8, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      end
    end
  
    def question_nine(user)
      system "clear"
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
      sleep(1)
      fork{ exec 'killall afplay'}
      if answer == 'Not wet at all'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 9, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      elsif answer == 'Moderately wet'
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 9, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      else
        test = Test.find_by(id: 1)
        question = Question.find_by(id: 9, test: test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
        @all << answer
      end
    end

  def get_user_results(user)
    prompt = TTY::Prompt.new
    system "clear"
      results = @all
      results.last(9)
      
      pid = fork{ exec 'afplay', 'sounds/typewriter.mp3' }
      puts "Question 1: Who do you see walking with you?"
      sleep 2
      puts "The answer you chose: #{results[0]}."
      sleep 2
      puts "Who you saw is currently the most important person in your life."
           prompt.keypress("Press space to continue", keys: [:space, :return])
      puts "========================================================================"
      pid = fork{ exec 'afplay', 'sounds/typewriter.mp3' }
      puts "Question 2: What kind of animal is it?"
      sleep 2
      puts "The answer you chose: #{results[1]}."
      sleep 2
      puts "The size of the animal is the size of your current problems."
           prompt.keypress("Press space to continue", keys: [:space, :return])
      puts "========================================================================"
      pid = fork{ exec 'afplay', 'sounds/typewriter.mp3' }
      puts "Question 3: What does the animal do?"
      sleep 2
      puts "The answer you chose: #{results[2]}."
      sleep 2
      puts "What the animal does is how you perceive the problem."
           prompt.keypress("Press space to continue", keys: [:space, :return])
      puts "========================================================================"
      pid = fork{ exec 'afplay', 'sounds/typewriter.mp3' }
      puts "Question 4: What do YOU do?"
      sleep 2
      puts "The answer you chose: #{results[3]}."
      sleep 2
      puts "What you do determines how you handle the problem."
           prompt.keypress("Press space to continue", keys: [:space, :return])
      puts "========================================================================"
      pid = fork{ exec 'afplay', 'sounds/typewriter.mp3' }
      puts "Question 5: What kind of house do you see and do you see a fence?"
      sleep 2
      puts "The answer you chose: #{results[4]}."
      sleep 2
      puts "The size of the house is the size of your ambitions. The fence represents how open or guarded you are with others."
           prompt.keypress("Press space to continue", keys: [:space, :return])
      puts "========================================================================"
      pid = fork{ exec 'afplay', 'sounds/typewriter.mp3' }
      puts "Question 6: Describe what's on the table."
      sleep 2
      puts "The answer you chose: #{results[5]}."
      sleep 2
      puts "If what you saw on the table wasn't food, people, or flowers, it indicates some unhappiness."
           prompt.keypress("Press space to continue", keys: [:space, :return])
      puts "========================================================================"
      pid = fork{ exec 'afplay', 'sounds/typewriter.mp3' }
      puts "Question 7: What is the cup made out of? What do you do with the cup?"
      sleep 2
      puts "The answer you chose: #{results[6]}."
      sleep 2
      puts "How durable the cup you found was is representative of how strong your relationship is with the person in the first part of the story. What you do with it is representative of your attitude toward them."
           prompt.keypress("Press space to continue", keys: [:space, :return])
      puts "========================================================================"
      pid = fork{ exec 'afplay', 'sounds/typewriter.mp3' }
      puts "Question 8: What kind of body of water it is?"
      sleep 2
      puts "The answer you chose: #{results[7]}."
      sleep 2
      puts "The size of the body of water is related to the size of your sexual drive."
         prompt.keypress("Press space to continue", keys: [:space, :return])
      puts "========================================================================"
      pid = fork{ exec 'afplay', 'sounds/typewriter.mp3' }
      puts "Question 9: How wet do you get?"
      sleep 2
      puts "The answer you chose: #{results[8]}."
      sleep 2
      puts "If you became very wet, it indicates that sex is important to you. If not very wet, it may mean it's less important."      
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
    get_user_results(user)
    command.run
  end

end
