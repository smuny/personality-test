require_all 'sounds'
class Love
  def welcome
    pid = fork{ exec 'afplay', "sounds/love_to_love_you.mp3" }
    puts "
    _______________                        |*\_/*|________
    |  ___________  |     .-.     .-.      ||_/-\_|______  |
    | |           | |    .****. .****.     | |           | |
    | |   0   0   | |    .*****.*****.     | |   0   0   | |
    | |     -     | |     .*********.      | |     -     | |
    | |   \___/   | |      .*******.       | |   \___/   | |
    | |___     ___| |       .*****.        | |___________| |
    |_____|\_/|_____|        .***.         |_______________|
    _|__|/ \|_|_.............*.............._|________|_
    / ********** \                          / ********** \
    /  ************  \                      /  ************  \
    --------------------                    --------------------"
  end
  
  def question_one(user)
    fork{ exec 'killall afplay'}
    puts "You are walking to your boy/girlfriend's house. There are two roads to get there. One is a straight path to take you there quickly, but is very plain and boring. The other is significantly longer, but is full of wonderful sights and interesting things."
    prompt = TTY::Prompt.new
    answer = prompt.select("Which one do you take to get your significant other's house?") do |menu|
      menu.choice 'Short road'
      menu.choice 'Long road'
    end

    if answer == 'Short road'
      test = Test.find_by(id: 4)
      question = Question.find_by(id: 21, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    elsif answer == 'Long road'
      test = Test.find_by(id: 4)
      question = Question.find_by(id: 21, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    end
    binding.pry
  end

  def question_two(user)
    puts "On the way you see two rose bushes. One is full of red roses, the other full of white. You decide to pick 20 roses for your boy/girlfriend, of any color combination."
    prompt = TTY::Prompt.new
    white = prompt.ask("What number of white do you pick?")
    red = prompt.ask("What number of red do you pick?")
    answer = [white.to_i, red.to_i]
    #~~~~~~~~~~~~~~~~~~~~~~~~~~~
    test = Test.find_by(id: 4)
    question = Question.find_by(id: 22, test: test)
    Response.find_or_create_by(user: user, question: question, answers: answer)
    binding.pry
  end

  def question_three(user)
    puts "You finally get to their house. A family member answers the door. You can have them get your boy/girlfriend or go get them yourself."
    prompt = TTY::Prompt.new
    answer = prompt.select("Which do you do?") do |menu|
      menu.choice 'Go get them yourself'
      menu.choice 'Ask the maid to get them for you.'
    end

    if answer == 'Go get them yourself'
      test = Test.find_by(id: 4)
      question = Question.find_by(id: 23, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    elsif answer == 'Ask the maid to get them for you.'
      test = Test.find_by(id: 4)
      question = Question.find_by(id: 23, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    end
    binding.pry
  end

  def question_four(user)
    puts "You go up to your boy/girlfriend's room, but nobody is there, You decide to leave the roses."
    prompt = TTY::Prompt.new
    answer = prompt.select("Where do you leave them?") do |menu|
      menu.choice 'Windowsill'
      menu.choice 'Bed'
    end

    if answer == 'Windowsill'
      test = Test.find_by(id: 4)
      question = Question.find_by(id: 24, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    elsif answer == 'Bed'
      test = Test.find_by(id: 4)
      question = Question.find_by(id: 24, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    end
    binding.pry
  end

  def question_five(user)
    puts "Later, it's time for bed. You and your boy/girlfriend go to sleep in seperate rooms. In the morning when it's time to wake up you go in their room, and check on them."
    prompt = TTY::Prompt.new
    answer = prompt.select("When you arrive, are they") do |menu|
      menu.choice 'Awake'
      menu.choice 'Asleep'
    end
    if answer == 'Awake'
      test = Test.find_by(id: 4)
      question = Question.find_by(id: 25, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    elsif answer == 'Asleep'
      test = Test.find_by(id: 4)
      question = Question.find_by(id: 25, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    end
    binding.pry
  end

  def question_six(user)
    puts "Now it's time to go back home."
    prompt = TTY::Prompt.new
    answer = prompt.select('Which road do you take home?') do |menu|
      menu.choice 'Short road'
      menu.choice 'Long road'
    end
    if answer == 'Short road'
      test = Test.find_by(id: 4)
      question = Question.find_by(id: 26, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    elsif answer == 'Long road'
      test = Test.find_by(id: 4)
      question = Question.find_by(id: 26, test: test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    end
    binding.pry
  end

  def get_user_results(user)
    count = []
    test = Test.find_by(id: 4)
    test.responses.each do |x|
      if x.user == user
        count << x.answers
      end
    end
    results = count.first(6)
    binding.pry

    puts "======================================================="
    pid = fork{ exec 'afplay', 'sounds/typewriter.mp3'}
    puts "Question 1: Which one do you take to get your significant other's house?"
    sleep 2
    puts "The road represents your attitude towards falling in love."
    if results[0] == 'Short road'
      puts "You chose short road, which means you fall in love quickly and easily."
    else
      puts "You chose long road, which means you take your time and do not fall in love easily."
    end
    puts "========================================================"
    pid = fork{ exec 'afplay', 'sounds/typewriter.mp3'}
    puts "Question 2: What combination of roses did you choose?"
    puts "The number of red represents how much you expect to give back in a relationship."
    puts "The number of white represents how much you expect to get back in a relationship."
    puts "You chose #{results[1]} white, and #{results[1]}"
    puts "========================================================"
    pid = fork{ exec 'afplay', 'sounds/typewriter.mp3'}
    puts "Question 3: Who goes to get your significant other?"
    puts "This question shows your attitude in handling relationship problems."
    if results[2] == 'Go get them yourself'
      puts "You chose to get them yourself, which means you are a pretty direct person, and have no issues confronting your significant other about a problem."
    else
      puts "You chose to let the maid get them, which means you may be a beat around the bush type of person."
    end
    puts "========================================================="
    pid = fork{ exec 'afplay', 'sounds/typewriter.mp3'}
    puts "Question 4: Where do you place the roses?"
    puts "The placement of roses indicates how often you'd like to see your significant other."
    if results[3] == 'Windowsill'
      puts "You chose to place them on the windowsill, which means you don't expect or need to see your loved one too often."
    else
      puts "You chose to place them on the bed, which means you need lots of reassurance in the relationship."
    end
    puts "=========================================================="
    pid = fork{ exec 'afplay', 'sounds/typewriter.mp3'}
    puts "Question 5: Are they awake or asleep?"
    if results[4] == 'Awake'
      puts "If you find them awake, you expect your love one to change for you."
    else
      puts "If you find them asleep, you accept them for the way they are."
    end
    puts "=========================================================="
    pid = fork{ exec 'afplay', 'sounds/typewriter.mp3'}
    puts "Question 6: Which road do you take back home?"
    puts "This road shows how long you stay in love"
    if results[5] == 'Short road'
      puts "You chose the short road, which means you fall out of love quickly, and easily."
    else
      puts "You chose the long road, which means you tend to stay in love for a long time."
    end
    puts "THANKS FOR PLAYING"
  end

  def run(user)
    question_one(user)
    question_two(user)
    question_three(user)
    question_four(user)
    question_five(user)
    question_six(user)
    get_user_results(user)
  end

end
