require_all 'sounds'
class Love
  def welcome
    pid = fork{ exec 'afplay', "love_to_love_you.mp3" }
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
  killall afplay
  end

  def question_one(user)
    puts "You are walking to your boy/girlfriend's house. There are two roads to get there. One is a straight path to take you there quickly, but is very plain and boring. The other is significantly longer, but is full of wonderful sights and interesting things."
    prompt = TTY::Prompt.new
    answer = prompt.select("Which one do you take to get your significant other's house?") do |menu|
      menu.choice 'Short road'
      menu.choice 'Long road'
    end

    if answer == 'Short road'
      question = Question.find_by(id: 10, test_id: 4)
      test = Test.find_by(id: 4).create(answers: answer)
      Response.find_or_create_by(user: user, question: question)
    elsif answer == 'Long road'
      question = Question.find_by(id: 10, test_id: 4)
      Test.find_by(id: 4).create(answers: answer)
      Response.find_or_create_by(user: user, question: question)
    end

  end

  def question_two(user)
    puts "On the way you see two rose bushes. One is full of red roses, the other full of white. You decide to pick 20 roses for your boy/girlfriend, of any color combination."
    prompt = TTY::Prompt.new
    white = prompt.ask("What number of white do you pick?")
    red = prompt.ask("What number of red do you pick?")
    answer = [white, red]
    question = Question.find_by(id: 11, test_id: 4)
    Test.find_by(id: 4).create(answers: answer)
    Response.find_or_create_by(user: user, question: question)
  end

  def question_three(user)
    puts "You finally get to their house. A family member answers the door. You can have them get your boy/girlfriend or go get them yourself."
    prompt = TTY::Prompt.new
    answer = prompt.select("Which do you do?") do |menu|
      menu.choice 'Go get them yourself'
      menu.choice 'Ask the maid to get them for you.'
    end

    if answer == 'Go get them yourself'
      question = Question.find_by(id: 12, test_id: 4)
      Test.find_by(id: 4).create(answers: answer)
      Response.find_or_create_by(user: user, question: question)
    elsif answer == 'Ask the maid to get them for you.'
      question = Question.find_by(id: 12, test_id: 4)
      Test.find_by(id: 4).create(answers: answer)
      Response.find_or_create_by(user: user, question: question)
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
      question = Question.find_by(id: 13, test_id: 4)
      Test.find_by(id: 4).create(answers: answer)
      Response.find_or_create_by(user: user, question: question)
    elsif answer == 'Bed'
      question = Question.find_by(id: 13, test_id: 4)
      Test.find_by(id: 4).create(answers: answer)
      Response.find_or_create_by(user: user, question: question)
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
      question = Question.find_by(id: 14, test_id: 4)
      Test.find_by(id: 4).create(answers: answer)
      Response.find_or_create_by(user: user, question: question)
    elsif answer == 'Asleep'
      question = Question.find_by(id: 14, test_id: 4)
      Test.find_by(id: 4).create(answers: answer)
      Response.find_or_create_by(user: user, question: question)
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
      question = Question.find_by(id: 15, test_id: 4)
      Test.find_by(id: 4).create(answers: answer)
      Response.find_or_create_by(user: user, question: question)
    elsif answer == 'Long road'
      question = Question.find_by(id: 15, test_id: 4)
      Test.find_by(id: 4).create(answers: answer)
      Response.find_or_create_by(user: user, question: question)
    end
  end

  def get_user_results(user)
    count = []
    user.responses.each do |x|
      count << x.answers
    end
    results = count.last(6)
    puts results
  end

  def run(user)
    # question_one(user)
    # question_two(user)
    # question_three(user)
    # question_four(user)
    # question_five(user)
    # question_six(user)
    get_user_results(user)
  end

end
