class Castle
  def welcome
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
      prompt = TTY::Prompt.new
      answer = prompt.select("You are in front of the door of the castle. How exactly do you imagine it?") do |menu|
        menu.choice "It is a simple door"
        menu.choice "It is covered by plants and is somewhat hard to find"
        menu.choice "It is a huge wooden door with metal details and it looks a little frightening"
      end

      ans = Answer.create(content: answer)
      Response.create(user: user, answer: ans)
  end
  #FIX THE GRAMMAER From QUESTION TWO AND BEYOND

  def question_two(user)
    prompt = TTY::Prompt.new
    answer = prompt.select("You pass the door of the castle and realize that there is no soul. It is desert. What is the first thing you see?") do |menu|
      menu.choice "A huge library, wall to wall full of books"
      menu.choice "A huge fireplace and a hot fire burning"
      menu.choice "A large banquet hall with huge chandeliers and red carpets"
      menu.choice "A long corridor with many closed doors"
    end

    ans = Answer.create(content: answer)
    Response.create(user: user, answer: ans)
  end

  def question_three(user)
    prompt = TTY::Prompt.new
    answer = prompt.select("You look around and find a staircase. You decide to climb the stairs. What does the staircase look like?") do |menu|
      menu.choice "It looks sharp and massive like not leading anywhere"
      menu.choice "It is an impressive spiral, grand staircase"
    end
    ans = Answer.create(content: answer)
    Response.create(user: user, answer: ans)
  end
  
  def question_four(user)
    prompt = TTY::Prompt.new
    answer = prompt.select("After you climb the stairs, you reach a small room in which there is only one window. How big is it?") do |menu|
      menu.choice "It is a normal window"
      menu.choice "It’s too small, almost skylight"
      menu.choice "The window is huge, so that it takes almost the entire surface of the wall"
    end
    ans = Answer.create(content: answer)
    Response.create(user: user, answer: ans)
  end
  
  def question_five(user)
    prompt = TTY::Prompt.new
    answer = prompt.select("You look out the window. What do you see?") do |menu|
      menu.choice "Large waves crashing furiously on rocks"
      menu.choice "A snowy forest"
      menu.choice "A green valley"
      menu.choice "A small, vibrant city"
    end
    ans = Answer.create(content: answer)
    Response.create(user: user, answer: ans)
  end
  
  def question_six(user)
    prompt = TTY::Prompt.new
    answer = prompt.select("You go down the stairs and you’re back in the area where you were when you first entered the castle. You go ahead and find a door at the rear of the building. You open it and go out in a yard. What exactly does it look like?") do |menu|
      menu.choice "It is full of hypertrophic plants, grasses, broken wood and fallen barbed wire"
      menu.choice "It is impeccably maintained with countless colorful flowers"
      menu.choice "It’s a little jungle, but you can imagine how beautiful it would be if someone cleaned and put it in order"
    end
    ans = Answer.create(content: answer)
    Response.create(user: user, answer: ans)
  end

  def run(user)
    welcome
    question_one(user)
    question_two(user)
    question_three(user)
    question_four(user)
    question_five(user)
    question_six(user)
  end
end