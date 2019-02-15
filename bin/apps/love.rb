require_all 'sounds'
class Love

def initialize
  @arr1 = []
end
  def welcome_love(user)
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

    @arr1 = []

    if answer == 'Short road'
      test = Test.find_by(name: "The Love Path")
      question = Question.find_by(id: 21, test:test)
      Response.find_or_create_by(user: user, question: question, answers:answer)
      @arr1 << answer
    elsif answer == 'Long road'
      test = Test.find_by(name: "The Love Path")
      question = Question.find_by(id: 21, test:test)
      Response.find_or_create_by(user: user, question: question, answers:answer)
      @arr1 << answer
    end
    question_two(user)
  end

  def question_two(user)
    puts "On the way you see two rose bushes. One is full of red roses, the other full of white. You decide to pick 20 roses for your boy/girlfriend, of any color combination."
    prompt = TTY::Prompt.new
    white = prompt.ask("What number of white do you pick?")
    red = prompt.ask("What number of red do you pick?")
    answer = [white, red]
    test = Test.find_by(name: "The Love Path")
    question = Question.find_by(id: 22, test_id: 4)
    Response.find_or_create_by(user: user, question: question, answers:answer)
    @arr1 << answer
  end

  def question_three(user)
    puts "You finally get to their house. A family member answers the door. You can have them get your boy/girlfriend or go get them yourself."
    prompt = TTY::Prompt.new
    answer = prompt.select("Which do you do?") do |menu|
      menu.choice 'Go get them yourself'
      menu.choice 'Ask the maid to get them for you.'
    end

    if answer == 'Go get them yourself'
      test = Test.find_by(name: "The Love Path")
      question = Question.find_by(id: 23, test:test)
      Response.find_or_create_by(user: user, question: question, answers:answer)
      @arr1 << answer
    elsif answer == 'Ask the maid to get them for you.'
      test = Test.find_by(name: "The Love Path")
      question = Question.find_by(id: 23, test:test)
      Response.find_or_create_by(user: user, question: question, answers:answer)
      @arr1 << answer
    end
  end

  def question_four(user)
    puts "You go up to your boy/girlfriend's room, but nobody is there, You decide to leave the roses."
    prompt = TTY::Prompt.new
    answer = prompt.select("Where do you leave them?") do |menu|
      menu.choice 'Windowsill'
      menu.choice 'Bed'
    end

    if answer == 'Windowsill'
      test = Test.find_by(name: "The Love Path")
      question = Question.find_by(id: 24, test:test)
      Response.find_or_create_by(user: user, question: question, answers:answer)
      @arr1 << answer
    elsif answer == 'Bed'
      test = Test.find_by(name: "The Love Path")
      question = Question.find_by(id: 24, test:test)
      Response.find_or_create_by(user: user, question: question, answers:answer)
      @arr1 << answer
    end
  end

  def question_five(user)
    puts "Later, it's time for bed. You and your boy/girlfriend go to sleep in seperate rooms. In the morning when it's time to wake up you go in their room, and check on them."
    prompt = TTY::Prompt.new
    answer = prompt.select("When you arrive, are they") do |menu|
      menu.choice 'Awake'
      menu.choice 'Asleep'
    end
    if answer == 'Awake'
      test = Test.find_by(name: "The Love Path")
      question = Question.find_by(id: 25, test:test)
      Response.find_or_create_by(user: user, question: question, answers:answer)
      @arr1 << answer
    elsif answer == 'Asleep'
      test = Test.find_by(name: "The Love Path")
      question = Question.find_by(id: 25, test:test)
      Response.find_or_create_by(user: user, question: question, answers:answer)
      @arr1 << answer
    end
  end

  def question_six(user)
    puts "Now it's time to go back home."
    prompt = TTY::Prompt.new
    answer = prompt.select('Which road do you take home?') do |menu|
      menu.choice 'Short road'
      menu.choice 'Long road'
    end
    if answer == 'Short road'
      test = Test.find_by(name: "The Love Path")
      question = Question.find_by(id: 26, test_id: 4)
      Response.find_or_create_by(user: user, question: question, answers:answer)
      @arr1 << answer
    elsif answer == 'Long road'
      test = Test.find_by(name: "The Love Path")
      question = Question.find_by(id: 26, test_id: 4)
      Response.find_or_create_by(user: user, question: question, answers:answer)
      @arr1 << answer
    end
  end

  def get_user_results(user)
    system "clear"
    @arr1.last(6)

      system "clear"
    puts "======================================================="
    pid = fork{ exec 'afplay', 'sounds/typewriter.mp3'}
    puts "Question 1: Which one do you take to get your significant other's house?"
    sleep 1
    puts "The answer you chose: #{@arr1[0]}."
    puts "The road represents your attitude towards falling in love."
    puts "If you chose short road, it means you fall in love quickly and easily."
    puts "If you chose long road, it means you take your time and do not fall in love easily."

    puts "========================================================"
    pid = fork{ exec 'afplay', 'sounds/typewriter.mp3'}
    puts "Question 2: What combination of roses did you choose?"
    puts "You chose: #{@arr1[1]}"
    puts "The number of red represents how much you expect to give back in a relationship."
    puts "The number of white represents how much you expect to get back in a relationship."

    puts "========================================================"
    pid = fork{ exec 'afplay', 'sounds/typewriter.mp3'}
    puts "Question 3: Who goes to get your significant other?"
    puts "You chose: #{@arr1[2]}"
    puts "This question shows your attitude in handling relationship problems."

    puts "========================================================="
    pid = fork{ exec 'afplay', 'sounds/typewriter.mp3'}
    puts "Question 4: Where do you place the roses?"
    puts "The placement of roses indicates how often you'd like to see your significant other."
    puts "You chose: #{@arr1[3]}"
    puts "If you chose to place them on the windowsill, it means you don't expect or need to see your loved one too often."
    puts "If you chose to place them on the bed, it means you need lots of reassurance in the relationship."

    puts "=========================================================="
    pid = fork{ exec 'afplay', 'sounds/typewriter.mp3'}
    puts "Question 5: Are they awake or asleep?"
    puts "You chose: #{@arr1[4]}"
    puts "If you find them awake, you expect your love one to change for you."
    puts "If you find them asleep, you accept them for the way they are."

    puts "=========================================================="
    pid = fork{ exec 'afplay', 'sounds/typewriter.mp3'}
    puts "Question 6: Which road do you take back home?"
    puts "You chose: #{@arr1[5]}"
    puts "This road shows how long you stay in love"
    puts "You chose the short road, which means you fall out of love quickly, and easily."
    puts "You chose the long road, which means you tend to stay in love for a long time."

    run
  end

  def love_run(user)
    welcome_love(user)
    question_one(user)
    question_two(user)
    question_three(user)
    question_four(user)
    question_five(user)
    question_six(user)

    get_user_results(user)
  end
end
