
  # system "clear"
  def welcome_oasis(user)

    question_one(user)
  end

  def question_one(user)
  puts "Think of a field."
  prompt = TTY::Prompt.new
  answer = prompt.select("How big is the field?") do |menu|
      sleep 2
    menu.choice 'Big'
    menu.choice 'Medium'
    menu.choice 'Small'
  end

  if answer == 'Big'
      test = Test.find_by(id: 3)
      question = Question.find_by(id: 16, test_id: 3)
      Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Medium'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 16, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Small'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 16, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  else
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 16, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  end
  question_two(user)
end

def question_two(user)
  system "clear"
  puts "Think of a cube."
  prompt = TTY::Prompt.new
  answer = prompt.select("How big is the cube?") do |menu|
    sleep 2
    menu.choice 'Big'
    menu.choice 'Medium'
    menu.choice 'Small'
  end
  if answer == 'Big'
      test = Test.find_by(id: 3)
      question = Question.find_by(id: 17, test_id: 3)
      Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Medium'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 17, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Small'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 17, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  else
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 17, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  end
  question_three(user)
end

def question_three(user)
  system "clear"
  puts "Color of the cube."
  prompt = TTY::Prompt.new
  answer = prompt.select("What is the color of the cube?") do |menu|
    sleep 2
    menu.choice 'Red'
    menu.choice 'Yellow'
    menu.choice 'Blue'
    menu.choice 'Violet'
    menu.choice 'Grey'
    menu.choice 'Black'
    menu.choice 'White'
    menu.choice 'Transparent'
  end
  if answer == 'Red'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 18, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Yellow'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 18, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Blue'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 18, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Violet'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 18, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Grey'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 18, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Black'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 18, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'White'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 18, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Transparent'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 18, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  else
    nil
  end
  question_four(user)
end

def question_four(user)
  system "clear"
  prompt = TTY::Prompt.new
  answer = prompt.select("What is the texture of the cube?") do |menu|
    sleep 2
    menu.choice 'Smooth'
    menu.choice 'Rough'
    menu.choice 'Bumpy or Spiky'
  end
  if answer == 'Smooth'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 19, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Rough'
    test = Test.find_by(id: 3)
      question = Question.find_by(id: 19, test_id: 3)
      Response.find_or_create_by(user: user, question: question)
  else
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 19, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  end
  question_five(user)
end

def question_five(user)
  system "clear"
  puts "Imagine a Ladder."
  prompt = TTY::Prompt.new
  answer = prompt.select("Is the ladder short or long? Near or Far from you?") do |menu|
    sleep 2
    menu.choice 'Short, near'
    menu.choice 'Short, far'
    menu.choice 'Long, near'
    menu.choice 'Long, far'
  end
  if answer == 'Short, near'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 20, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Short, far'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 20, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Long, near'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 20, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  else
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 20, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  end
  question_six(user)
end


def question_six(user)
  system "clear"
  puts "Imagine the ladder and it's distance to the cube."

  prompt = TTY::Prompt.new
  answer = prompt.select("Is it near or far from the cube? Is it strong or weak?") do |menu|
    sleep 2
    menu.choice 'Near, Strong'
    menu.choice 'Near, Weak'
    menu.choice 'Far, Strong'
    menu.choice 'Far, Weak'
  end
  if answer == 'Near, Strong'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 21, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Near, Weak'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 21, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Far, Strong'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 21, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Far, Weak'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 21, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  else
    nil
  end
  question_seven(user)
end

def question_seven(user)
  system "clear"
  puts "Imagine a horse."
  prompt = TTY::Prompt.new
  answer = prompt.select(" What is the horse doing?") do |menu|
    sleep 2
    menu.choice 'Playing'
    menu.choice 'Running'
    menu.choice 'Sleeping or Grazing'
  end
  if answer == 'Playing'
    test = Test.find_by(id: 3)
    quesion = Question.find_by(id: 22, test_id: 3)
    Response.find_or_create_by(user: user, question: quesion)
  elsif answer == 'Running'
    test = Test.find_by(id: 3)
    quesion = Question.find_by(id: 22, test_id: 3)
    Response.find_or_create_by(user: user, question: quesion)
  elsif answer == 'Sleeping or Grazing'
    test = Test.find_by(id: 3)
    quesion = Question.find_by(id: 22, test_id: 3)
    Response.find_or_create_by(user: user, question: quesion)
  else
    nil
  end
  question_eight(user)
end

def question_eight(user)
  system "clear"
  puts "Now imagine the horse's color."
  prompt = TTY::Prompt.new
  answer = prompt.select("What color is the horse?") do |menu|
    sleep 2
    menu.choice 'Brown'
    menu.choice 'Black'
    menu.choice 'White'
  end
  if answer == 'Brown'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 23, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Black'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 23, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'White'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 23, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  else
    nil
  end
  question_nine(user)
end

def question_nine(user)
  system "clear"
  puts "Imagine flowers."
  prompt = TTY::Prompt.new
  answer = prompt.select("How many flowers do you see?") do |menu|
    sleep 2
    menu.choice 'Just a few'
    menu.choice 'They are everywhere!'
  end
  if answer == 'Just a few'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 23, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'They are everywhere!'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 23, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  else
    nil
  end
  question_ten(user)
end

def question_ten(user)
  system "clear"
  puts "Imagine the weather."
  prompt = TTY::Prompt.new
  answer = prompt.select("Is it raining, foggy, windy or sunny?") do |menu|
    sleep 2
    menu.choice 'Rain'
    menu.choice 'Fog'
    menu.choice 'Windy'
    menu.choice 'Sunny'
  end
  if answer == 'Rain'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 24, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Fog'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 24, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Windy'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 24, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Sunny'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 24, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  else
    nil
  end
  question_eleven(user)
end

def question_eleven(user)
  system "clear"
  puts "Imagine a storm in relations to the cube."

  prompt = TTY::Prompt.new
  answer = prompt.select("Is it mild or strong? Is it in the background or right above the cube?") do |menu|
    sleep 2
    menu.choice 'Mild, in the background'
    menu.choice 'Mild, right above the cube'
    menu.choice 'Strong, in the background'
    menu.choice 'Strong, right above the cube'
  end
  if answer == 'Mild, in the background'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 25, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Mild, right above the cube'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 25, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Strong, in the background'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 25, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  elsif answer == 'Strong, right above the cube'
    test = Test.find_by(id: 3)
    question = Question.find_by(id: 25, test_id: 3)
    Response.find_or_create_by(user: user, question: question)
  else
    nil
  end
end

def get_user_results(user)
  system "clear"
  prompt = TTY::Prompt.new
  count = []
  user.responses.each do |x|
    count << x.answers
  end
  results = count.last(11)

  puts "Question 1: How big is the field?"
  sleep 1
  puts "The answer you chose: #{question[0]}."
  sleep 1
  puts "The field represents your mind. Its size is the representation of your knowledge of the world, and how vast your personality is. The condition of the field (dry, grassy, or well-trimmed) is what your personality looks like at first glance."
    prompt.keypress("Press space to continue", keys: [:space, :return])
  puts "========================================================================"
  system "clear"
  puts "Question 2: How big is the cube?"
  sleep 2
  puts "The answer you chose: #{results[1]}."
  sleep 2
  puts "The cube represents you. The size of the cube is your ego. The surface of the cube represents what is visibly observable about your personality, or maybe it is what you want others to think about you."
    prompt.keypress("Press space to continue", keys: [:space, :return])
  puts "========================================================================"
  puts "Question 3: What is the color of the cube?"
  sleep 2
  puts "The answer you chose: #{results[2]}."
  sleep 2
  puts "The color of the cube is a more in-depth analysis of yourself. Each color can represent an emotion, or an entire personality altogether"
  sleep 1
  puts "Red: You are physically active and enjoy rich sensory experiences."
  puts "Yellow: You are sociable and cherish your individuality."
  puts "Blue: You are intelligent and respect others' ideals."
  puts "Violet: You are intelligent and a bit of a perfectionist. You are also mysterious."
  puts "Grey: You are self-confident, independent, and not easily rattled."
  puts "Black: You have a strong sense of individuality and independence, and you put a high value on alone time."
  puts "White: You are kind, independent, and self-reliant."
  puts "Transparent: A cube with a transparent surface means you tend to let others know how you feel on the inside. You are confident enough to show your inner thoughts, and you are deeply sincere."
      prompt.keypress("Press space to continue", keys: [:space, :return])
  puts "========================================================================"
  puts "Question 4: What is the texture of the cube?"
  sleep 2
  puts "The answer you chose: #{results[3]}."
  sleep 2
  puts "The texture of the cube represents your nature."
  sleep 1
  puts "Smooth: You are a gentle person. You take the time to not hurt others or make them uncomfortable."
  puts "Rough: You are more straightforward. You try to be honest in everything that you do even if might affect the person you're talking to."
  puts "You tend to critize others and make others inferior to you."
    prompt.keypress("Press space to continue", keys: [:space, :return])
  puts "========================================================================"
  puts "Question 5: Is the ladder short or long? Near or Far from you?"
  sleep 2
  puts "The answer you chose: #{results[4]}."
  sleep 1
  puts "The ladder represents two different aspects of your life—your goals and your friendships."
  sleep 1
  puts "Short ladder: Your goals are realistic and simple."
  sleep 1
  puts "Long ladder: Your goals are more far fetched and difficult to attain."
  sleep 1
  puts "Ladder is near: You are putting maximum effort and focus into achieving your goals."
  sleep 1
  puts "Ladder is far: Your aren't putting much thought or effort into achieving your goals."
    prompt.keypress("Press space to continue", keys: [:space, :return])
  puts "========================================================================"
  puts "Question 6: Is it near or far from the cube? Is it strong or weak?"
  sleep 2
  puts "The answer you chose: #{results[5]}."
  sleep 1
  puts " The location and material of your ladder can also tell you how close you are with your friends."
  sleep 1
  puts "Near: If your ladder is near the cube, you are very close with your friends. If it's actually leaning on the cube, it means your friends can lean on you for support."
  sleep 1
  puts "Far: You have a hard time opening up to people and letting them get close to you."
  sleep 1
  puts "Strong ladder: The stronger the material (e.g. stone, metal, etc.), the stronger the bond."
  sleep 1
  puts "Weak ladder: A weak ladder indicates a weak bond between you and those around you."
    prompt.keypress("Press space to continue", keys: [:space, :return])
  puts "========================================================================"
  puts "Question 7: What is the cup made out of? What do you do with the cup?"
  sleep 2
  puts "The answer you chose: #{results[6]}."
  sleep 2
  puts "How durable the cup you found was is representative of how strong your relationship is with the person in the first part of the story. What you do with it is representative of your attitude toward them."
    prompt.keypress("Press space to continue", keys: [:space, :return])
  puts "========================================================================"
  puts "Question 8: What is the horse doing?"
  sleep 2
  puts "The answer you chose: #{results[7]}."
  sleep 1
  puts "The horse represents your ideal partner."
  sleep 1
  puts "Playing: Your ideal partner doesn't take life too seriously and or get bogged down by the little stuff."
  sleep 1
  puts "Running: Your ideal partner will respect your space and give you the alone time that you crave."
  sleep 1
  puts "Sleeping or Grazing: Your ideal partner is calm and fully committed to you."
    prompt.keypress("Press space to continue", keys: [:space, :return])
  puts "========================================================================"
  puts "Question 9: What color is the horse?"
  sleep 2
  puts "The answer you chose: #{results[8]}."
  sleep 2
  puts "Brown: You prize comfort and reliability above all else. Otherwise, you don't have a specific set of expectations for your partner."
  sleep 1
  puts "Black: Your idea partner is dominant, seductive, and sophisticated."
  sleep 1
  puts "White: You value loyalty and trust more than anything else in a relationship."
  prompt.keypress("Press space to continue", keys: [:space, :return])
  puts "========================================================================"
  puts "Question 9: How many flowers do you see?"
  sleep 1
  puts "The answer you chose: #{results[8]}."
  sleep 1
  puts "The flowers represent your family and friends. The number of flowers reflects your popularity, and their location indicates how close you are with your social groups."
  sleep 1
  puts "Just a few: You are close with your family and have a small, tight-knit group of friends."
  sleep 1
  puts " They're everywhere: You're a social butterfly! With family and friends too numerous to count, you'll never be lonely."
  prompt.keypress("Press space to continue", keys: [:space, :return])
  puts "========================================================================"
  puts "Question 9: Is it raining, foggy, windy or sunny?"
  sleep 1
  puts "The answer you chose: #{results[8]}."
  sleep 1
  puts "The weather in your field reflects your general outlook on life."
  sleep 1
  puts "Rain: Rain symbolizes the problems in your life; the harder the rain, the bigger the problems."
  sleep 1
  puts "Fog: You feel uncertainty in life and may be struggling with your identity."
  sleep 1
  puts "Windy: Though you tend to worry about future issues, you generally don't let them get you down for long."
  sleep 1
  puts "Sunny: You are optimistic and carefree!"
  prompt.keypress("Press space to continue", keys: [:space, :return])
  puts "========================================================================"
  puts "Question 9: Is it mild or strong? Is it in the background or right above the cube?"
  sleep 2
  puts "The answer you chose: #{results[8]}."
  sleep 1
  puts "The strength and position of the storm reflect the stress you're feeling in life."
  sleep 1
  puts "Mild (just passing through): While you aren't immune to stress, you know that all things must pass."
  sleep 1
  puts "Strong: When you stress, you go all in and have a very hard time pulling yourself out again."
  sleep 1
  puts "In the background: Any obstacles that might be causing you grief are not at the forefront of your mind. You are good at managing your anxiety."
  sleep 1
  puts "Right above the cube: You are deeply affected by stress and have a hard time seeing past it to get back to the bigger picture."
  prompt.keypress("Press space to continue", keys: [:space, :return])
  puts "========================================================================"
end

def oasis_run(user)
    welcome_oasis(user)
   get_user_results(user)
end
