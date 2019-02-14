require_all 'sounds'
class Castle
  def welcome_castle
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
    puts "You are in front of the door of the castle."
      prompt = TTY::Prompt.new
      answer = prompt.select("How exactly do you imagine it?") do |menu|
        menu.choice "It is a simple door"
        menu.choice "It is covered by plants and is somewhat hard to find"
        menu.choice "It is a huge wooden door with metal details and it looks a little frightening"
      end

      if answer == "It is a simple door"
        test = Test.find_by(id:2)
        question = Question.find_by(id: 1, test:test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      elsif answer == "It is covered by plants and is somewhat hard to find"
        test = Test.find_by(id:2)
        question = Question.find_by(id: 1, test:test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      else
        test = Test.find_by(id:2)
        question = Question.find_by(id: 1, test:test)
        Response.find_or_create_by(user: user, question: question, answers: answer)
      end
      question_two(user)
  end
  #FIX THE GRAMMAER From QUESTION TWO AND BEYOND

  def question_two(user)
    puts "You pass the door of the castle and realize that there is no soul. It is desert."
    prompt = TTY::Prompt.new
    answer = prompt.select("What is the first thing you see?") do |menu|
      menu.choice "A huge library, wall to wall full of books"
      menu.choice "A huge fireplace and a hot fire burning"
      menu.choice "A large banquet hall with huge chandeliers and red carpets"
      menu.choice "A long corridor with many closed doors"
    end
    if answer == "A huge library, wall to wall full of books"
      test = Test.find_by(id:2)
      question = Question.find_by(id: 2, test:test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    elsif answer == "A huge fireplace and a hot fire burning"
      test = Test.find_by(id:2)
      question = Question.find_by(id: 2, test:test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    elsif answer == "A large banquet hall with huge chandeliers and red carpets"
      test = Test.find_by(id:2)
      question = Question.find_by(id: 2, test:test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    else
      test = Test.find_by(id:2)
      question = Question.find_by(id: 2, test:test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    end
    question_three(user)
  end

  def question_three(user)
    puts "You look around and find a staircase. You decide to climb the stairs."
    prompt = TTY::Prompt.new
    answer = prompt.select("What does the staircase look like?") do |menu|
      menu.choice "It looks sharp and massive like not leading anywhere"
      menu.choice "It is an impressive spiral, grand staircase"
    end
    if answer == "What does the staircase look like?"
      test = Test.find_by(id:2)
      question = Question.find_by(id: 3, test:test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    elsif answer == "It looks sharp and massive like not leading anywhere"
      test = Test.find_by(id:2)
      question = Question.find_by(id: 3, test:test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    else
      test = Test.find_by(id:2)
      question = Question.find_by(id: 3, test:test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    end
    question_four(user)
  end

  def question_four(user)
    puts "After you climb the stairs, you reach a small room in which there is only one window."
    prompt = TTY::Prompt.new
    answer = prompt.select("How big is it?") do |menu|
      menu.choice "It is a normal window"
      menu.choice "It’s too small, almost skylight"
      menu.choice "The window is huge, so that it takes almost the entire surface of the wall"
    end
    if answer == "It is a normal window"
      test = Test.find_by(id:2)
      question = Question.find_by(id: 4, test:test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    elsif answer == "It’s too small, almost skylight"
      test = Test.find_by(id:2)
      question = Question.find_by(id: 4, test:test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    else
      test = Test.find_by(id:2)
      question = Question.find_by(id: 4, test:test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    end
    question_five(user)
  end

  def question_five(user)
    puts "You look out the window."
    prompt = TTY::Prompt.new
    answer = prompt.select("What do you see?") do |menu|
      menu.choice "Large waves crashing furiously on rocks"
      menu.choice "A snowy forest"
      menu.choice "A green valley"
      menu.choice "A small, vibrant city"
    end
    if answer == "Large waves crashing furiously on rocks"
      test = Test.find_by(id:2)
      question = Question.find_by(id: 5, test:test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    elsif answer == "A snowy forest"
      test = Test.find_by(id:2)
      question = Question.find_by(id: 5, test:test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    elsif answer == "A green valley"
      test = Test.find_by(id:2)
      question = Question.find_by(id: 5, test:test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    else
      test = Test.find_by(id:2)
      question = Question.find_by(id: 5, test:test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    end
    question_six(user)
  end

  def question_six(user)
    puts "You go down the stairs and you’re back in the area where you were when you first entered the castle. You go ahead and find a door at the rear of the building. You open it and go out in a yard."
    prompt = TTY::Prompt.new
    answer = prompt.select("What exactly does it look like?") do |menu|
      menu.choice "It is full of hypertrophic plants, grasses, broken wood and fallen barbed wire"
      menu.choice "It is impeccably maintained with countless colorful flowers"
      menu.choice "It’s a little jungle, but you can imagine how beautiful it would be if someone cleaned and put it in order"
    end
    if answer == "It is full of hypertrophic plants, grasses, broken wood and fallen barbed wire"
      test = Test.find_by(id:2)
      question = Question.find_by(id: 6, test:test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    elsif answer == "It is impeccably maintained with countless colorful flowers"
      test = Test.find_by(id:2)
      question = Question.find_by(id: 6, test:test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    else
      test = Test.find_by(id:2)
      question = Question.find_by(id: 6, test:test)
      Response.find_or_create_by(user: user, question: question, answers: answer)
    end
  end

  def get_user_results(user)
    system "clear"
    prompt = TTY::Prompt.new
    count = []
    test = Test.find_by(id:2)
    test.responses.each do |response|
     if response.user == user
      count << response.answers
     end
    end
    results = count.last(11)

  end

  def run(user)
    welcome_castle
    get_user_results(user)
  end
end
