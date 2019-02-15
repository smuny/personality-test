require_all 'sounds'
class Castle
  def initialize
    @all = []
  end
  def welcome
    fork{ exec 'killall afplay'}
    puts "

    d888888P dP                    a88888b.                     dP   dP         
       88    88                   d8'   `88                     88   88         
       88    88d888b. .d8888b.    88        .d8888b. .d8888b. d8888P 88 .d8888b.
       88    88'  `88 88ooood8    88        88'  `88 Y8ooooo.   88   88 88ooood8
       88    88    88 88.  ...    Y8.   .88 88.  .88       88   88   88 88.  ...
       dP    dP    dP `88888P'     Y88888P' `88888P8 `88888P'   dP   dP `88888P'
                                                                                
                                                                                    "
  end

  def question_one(user)
    system "clear"
    prompt = TTY::Prompt.new
    answer = prompt.select("You are in front of the door of the castle. How exactly do you imagine it?") do |menu|
      menu.choice "It is a simple door"
      menu.choice "It is covered by plants, and is somewhat hard to find"
      menu.choice "It is a huge wooden door with metal details, and it looks a little frightening"
    end
    if answer == "It is a simple door"
      test = Test.find_by(id: 2)
      question = Question.find_by(id: 10, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
      @all << answer
    elsif answer == "It is covered by plants, and is somewhat hard to find"
      test = Test.find_by(id: 2)
      question = Question.find_by(id: 10, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
      @all << answer
    elsif answer == "It is a huge wooden door with metal details, and it looks a little frightening"
      test = Test.find_by(id: 2)
      question = Question.find_by(id: 10, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
      @all << answer
    else
      puts "Answer not found"
    end
  end
  

  def question_two(user)
    system "clear"
    prompt = TTY::Prompt.new
    answer = prompt.select("You pass the door of the castle and realize that there is no soul. It is desert. What is the first thing you see?") do |menu|
      menu.choice "A huge library, wall to wall full of books"
      menu.choice "A huge fireplace and a hot fire burning"
      menu.choice "A large banquet hall with huge chandeliers and red carpets"
      menu.choice "A long corridor with many closed doors"
    end
    if answer == "A huge library, wall to wall full of books"
      test = Test.find_by(id: 2)
      question = Question.find_by(id: 11, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
      @all << answer
    elsif answer == "A huge fireplace and a hot fire burning" 
      test = Test.find_by(id: 2)
      question = Question.find_by(id: 11, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
      @all << answer
    elsif answer == "A large banquet hall with huge chandeliers and red carpets"
      test = Test.find_by(id: 2)
      question = Question.find_by(id: 11, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
      @all << answer
    elsif answer == "A long corridor with many closed doors"
      test = Test.find_by(id: 2)
      question = Question.find_by(id: 11, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
      @all << answer
    else
      puts "Not an answer"
    end
  end

  def question_three(user)
    system "clear"
    prompt = TTY::Prompt.new
    answer = prompt.select("You look around and find a staircase. You decide to climb the stairs. What does the staircase look like?") do |menu|
      menu.choice "It looks sharp and massive like not leading anywhere"
      menu.choice "It is an impressive spiral, grand staircase"
    end
    if answer == "It looks sharp and massive like not leading anywhere"
      test = Test.find_by(id: 2)
      question = Question.find_by(id: 12, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
      @all << answer
    elsif answer == "It is an impressive spiral, grand staircase"
      test = Test.find_by(id: 2)
      question = Question.find_by(id: 12, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
      @all << answer
    else
      puts "Not an answer"
    end
  end
  
  def question_four(user)
    system "clear"
    prompt = TTY::Prompt.new
    answer = prompt.select("After you climb the stairs, you reach a small room in which there is only one window. How big is it?") do |menu|
      menu.choice "It is a normal window"
      menu.choice "It’s too small, almost skylight"
      menu.choice "The window is huge, so that it takes almost the entire surface of the wall"
    end
    if answer == "It is a normal window"
      test = Test.find_by(id: 2)
      question = Question.find_by(id: 13, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
      @all << answer
    elsif answer == "It's too small, almost skylight"
      test = Test.find_by(id: 2)
      question = Question.find_by(id: 13, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
      @all << answer
    elsif answer == "The window is huge, so that it takes almost the entire surface of the wall"
      test = Test.find_by(id: 2)
      question = Question.find_by(id: 13, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
      @all << answer
    else
      puts "Not an answer"
    end
  end
  
  def question_five(user)
    system "clear"
    prompt = TTY::Prompt.new
    answer = prompt.select("You look out the window. What do you see?") do |menu|
      menu.choice "Large waves crashing furiously on rocks"
      menu.choice "A snowy forest"
      menu.choice "A green valley"
      menu.choice "A small, vibrant city"
    end
    if answer == "Large waves crashing furiously on rocks"
      test = Test.find_by(id: 2)
      question = Question.find_by(id: 14, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
      @all << answer
    elsif answer == "A snowy forest"
      test = Test.find_by(id: 2)
      question = Question.find_by(id: 14, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
      @all << answer
    elsif answer == "A green valley"
      test = Test.find_by(id: 2)
      question = Question.find_by(id: 14, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
      @all << answer
    elsif answer == "A small, vibrant city"
      test = Test.find_by(id: 2)
      question = Question.find_by(id: 14, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
      @all << answer
    else
      puts "Not an answer"
    end
  end
  
  def question_six(user)
    system "clear"
    prompt = TTY::Prompt.new
    answer = prompt.select("You go down the stairs and you’re back in the area where you were when you first entered the castle. You go ahead and find a door at the rear of the building. You open it and go out in a yard. What exactly does it look like?") do |menu|
      menu.choice "It is full of hypertrophic plants, grasses, broken wood and fallen barbed wire"
      menu.choice "It is impeccably maintained with countless colorful flowers"
      menu.choice "It’s a little jungle, but you can imagine how beautiful it would be if someone cleaned and put it in order"
    end
    if answer == "It is full of hypertrophic plants, grasses, broken wood and fallen barbed wire"
      test = Test.find_by(id: 2)
      question = Question.find_by(id: 15, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer) 
      @all << answer
    elsif answer == "It is impeccably maintained with countless colorful flowers"
      test = Test.find_by(id: 2)
      question = Question.find_by(id: 15, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
      @all << answer
    elsif answer == "It’s a little jungle, but you can imagine how beautiful it would be if someone cleaned and put it in order"
      test = Test.find_by(id: 2)
      question = Question.find_by(id: 15, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
      @all << answer
    else
      puts "Not an answer"
    end
  end

  def get_results(user)
    prompt = TTY::Prompt.new
    system "clear"
    results = @all
    results.last(6)
    
    pid = fork{ exec 'afplay', 'sounds/typewriter.mp3'}
    puts "Question 1: How exactly did you imagine the castle?"
    puts "The door represents your attitude to a new experience."
    if results[0] == 'It is a simple door'
      puts "You chose a simple door. You probably aren't afraid of any new challenge, and will test your luck in new situations without second thought."
      
    elsif results[0] == 'It is covered by plants, and is somewhat hard to find'
      puts "You chose a hidden door. You're probably do not know what you need to do in the future. It looks blurry and undefined"
    elsif results[0] == 'It is a huge wooden door with metal details, and it looks a little frightening'
      puts "You have chosen the big scary door. You're probably afraid of the unknown and find it difficult to get out of your comfort zone to try new experiences."
    else
      puts "Yikes it broke again!!"
    end
    prompt.keypress("Press space to continue", keys: [:space, :return])
    puts "=================================================================="
    pid = fork{ exec 'afplay', 'sounds/typewriter.mp3'}
    puts "Question 2: You pass the door of the castle and realize that there is no soul. It is desert. What is the first thing you see?"
    puts "The space inside the castle is the idea that you believe others to have of you"
    if results[1] == "A huge library, wall to wall full of books"
      puts "You chose a library. You probably think that you are the person who supports others, and helps them find answers to their problems."
    elsif results[1] == 'A huge fireplace and a hot fire burning'
      puts "You chose a large fireplace. A large fireplace gives a feeling of warmth and passion that you think you cause in people."
    elsif results[1] == 'A large banquet hall with huge chandeliers and red carpets'
      puts "You chose a fancy banquet hall. It suggests that you feel that you can dazzle people around you, and that you have a lot to give."
    elsif results[1] == 'A long corridor with many closed doors'
      puts "You chose a long corridor with closed doors, you feel that you are difficult to understand, and others will have to try much to 'penetrate'(lol) more within you."
    else
      puts "Yikes it broke again"
    end
    prompt.keypress("Press space to continue", keys: [:space, :return])
    puts "===================================================================="
    pid = fork{ exec 'afplay', 'sounds/typewriter.mp3'}
    puts "Question 3: What does the staircase you climb look like?"
    puts "The stairway shows the image that you have of life."
    if results[2] == 'It looks sharp and massive like not leading anywhere'
      puts "You chose the sharp and massive staircase. This staircase shows a person who sees life as suffering, with many difficulties"
    elsif results[2] == 'It is an impressive spiral, grand staircase'
      puts "You chose the beautiful staircase. This type shows how romantic a person can be."
    else
      puts "Yikes it broke again"
    end
    prompt.keypress("Press space to continue", keys: [:space, :return])
    puts "======================================================================"
    pid = fork{ exec 'afplay', 'sounds/typewriter.mp3'}
    puts "Question 4: How big is the window?"
    puts "The window is the way you feel right now"
    if results[3] == 'It is a normal window'
      puts "You chose a normal window. This shows a person with realistic demands and expectations of life at this stage."  
    elsif results[3] == "It's too small, almost skylight"
      puts "You chose a small window. This shows that you feel depressed and trapped in your life. It may feel like there's no way out."
    elsif results[3] == "The window is huge, so that it takes almost the entire surface of the wall"
      puts "You chose a huge window. You probably feel invincible, free, and able to achieve what you want."
    else
      puts "Yikes it broke again"
    end
    prompt.keypress("Press space to continue", keys: [:space, :return])
    puts "======================================================================="
    pid = fork{ exec 'afplay', 'sounds/typewriter.mp3'}
    puts "Question 5: What do you see outside the window?"
    puts "The view from the window is the overview of your whole life!"
    if results[4] == "Large waves crashing furiously on rocks"
      puts "You chose large waves crashing. This shows a hectic and erratic life"
    elsif results[4] == "A snowy forest"
      puts "You chose a snowy forest. This shows a person who lives isolated and detached from the crowds"
    elsif results[4] == "A green valley"
      puts "You chose a green valley. This shows that your life is calm and steady, without much stress and anxiety"
    elsif results[4] == 'A small, vibrant city'
      puts "You chose a small, vibrant city. The vibrant city is related to someone who generally lives full life. Socializing with lots of people"
    else
      puts "Yikes it broke again"
    end
    prompt.keypress("Press space to continue", keys: [:space, :return])
    puts "======================================================================="
    pid = fork{ exec 'afplay', 'sounds/typewriter.mp3'}
    puts "Question 6: What does the courtyard look like?"
    puts "The image of the courtyard is the image that you have in mind of your future!"
    if results[5] == "It is full of hypertrophic plants, grasses, broken wood and fallen barbed wire"
      puts "You chose a messy garden! It means you are pessimistic, and you do not have a nice picture for the future "
    elsif results[5] == "It is impeccably maintained with countless colorful flowers"
      puts "You chose a neat garden. Shows that you feel your future will be heavenly"
    elsif results[5] == "It’s a little jungle, but you can imagine how beautiful it would be if someone cleaned and put it in order"
      puts "You chose a promising garden. Shows you're optimitic, but worried about how to find the energy to take control of his/her life to make his future more beautiful."
    else
      puts "Yikes it broke again"
    end
    puts "Thanks for playing"
  end

  def run(user)
    welcome
    question_one(user)
    question_two(user)
    question_three(user)
    question_four(user)
    question_five(user)
    question_six(user)
    get_results(user)
    command.run
  end
end