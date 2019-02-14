
  # system "clear"
  def welcome_oasis(user)

    question_one(user)
  end

  def question_one(user)
  puts "Think of a field."
  que_1 = "How big is the field?"
  prompt = TTY::Prompt.new
  quest = prompt.select("How big is the field?") do |menu|
      sleep 2
    menu.choice 'Big'
    menu.choice 'Medium'
    menu.choice 'Small'
  end

  if quest == 'Big'
    ques = Question.find_or_create_by(desc: que_1)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Medium'
    ques = Question.find_or_create_by(desc: que_1)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Small'
    ques = Question.find_or_create_by(desc: que_1)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  else
    ques = Question.find_or_create_by(desc: que_1)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  end
  question_two(user)
end

def question_two(user)
  system "clear"
  puts "Think of a cube."
  que = "How big is the cube?"
  prompt = TTY::Prompt.new
  quest = prompt.select("How big is the cube?") do |menu|
    sleep 2
    menu.choice 'Big'
    menu.choice 'Medium'
    menu.choice 'Small'
  end
  if quest == 'Big'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Medium'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  else
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  end
  question_three(user)
end

def question_three(user)
  system "clear"
  puts "Color of the cube."
  que = "What is the color of the cube?"
  prompt = TTY::Prompt.new
  quest = prompt.select("What is the color of the cube?") do |menu|
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
  if quest == 'Red'
    ques = Question.find_or_create_by(desc:que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Yellow'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Blue'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Violet'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Grey'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Black'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'White'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Transparent'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  else
    nil
  end
  question_four(user)
end

def question_four(user)
  system "clear"
  prompt = TTY::Prompt.new
  que = "What is the texture of the cube?"
  quest = prompt.select("What is the texture of the cube?") do |menu|
    sleep 2
    menu.choice 'Smooth'
    menu.choice 'Rough'
    menu.choice 'Bumpy or Spiky'
  end
  if quest == 'Smooth'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Rough'
      ques = Question.find_or_create_by(desc: que)
      Response.find_or_create_by(user: user, question: ques, answers: quest)
  else
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  end
  question_five(user)
end

def question_five(user)
  system "clear"
  puts "Imagine a Ladder."
  que = "Is the ladder short or long? Near or Far from the cube?"
  prompt = TTY::Prompt.new
  quest = prompt.select("Is the ladder short or long? Near or Far from you?") do |menu|
    sleep 4
    menu.choice 'Short, near'
    menu.choice 'Short, far'
    menu.choice 'Long, near'
    menu.choice 'Long, far'
  end
  if quest == 'Short, near'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Short, far'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Long, near'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  else
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  end
  question_six(user)
end


def question_six(user)
  system "clear"
  puts "Imagine the ladder and it's distance to the cube."
  que = "Is it near or far from the cube? Is it strong or weak?"
  prompt = TTY::Prompt.new
  quest = prompt.select("Is it near or far from the cube? Is it strong or weak?") do |menu|
    sleep 2
    menu.choice 'Near, Strong'
    menu.choice 'Near, Weak'
    menu.choice 'Far, Strong'
    menu.choice 'Far, Weak'
  end
  if quest == 'Near, Strong'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Near, Weak'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Far, Strong'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Far, Weak'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  else
    nil
  end
  question_seven(user)
end

def question_seven(user)
  system "clear"
  puts "Imagine a horse."
  que = "What is the horse doing?"
  prompt = TTY::Prompt.new
  quest = prompt.select(" What is the horse doing?") do |menu|
    sleep 2
    menu.choice 'Playing'
    menu.choice 'Running'
    menu.choice 'Sleeping or Grazing'
  end
  if quest == 'Playing'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Running'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Sleeping or Grazing'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  else
    nil
  end
  question_eight(user)
end

def question_eight(user)
  system "clear"
  puts "Now imagine the horse's color."
  prompt = TTY::Prompt.new
  que = "What color is the horse?"
  quest = prompt.select("What color is the horse?") do |menu|
    sleep 2
    menu.choice 'Brown'
    menu.choice 'Black'
    menu.choice 'White'
  end
  if quest == 'Brown'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Black'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'White'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  else
    nil
  end
  question_nine(user)
end

def question_nine(user)
  system "clear"
  puts "Imagine flowers."
  que = "How many flowers do you see?"
  prompt = TTY::Prompt.new
  quest = prompt.select("How many flowers do you see?") do |menu|
    sleep 2
    menu.choice 'Just a few'
    menu.choice 'They are everywhere!'
  end
  if quest == 'Just a few'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'They are everywhere!'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  else
    nil
  end
  question_ten(user)
end

def question_ten(user)
  system "clear"
  puts "Imagine the weather."
  que = "Is it raining, foggy, windy or sunny?"
  prompt = TTY::Prompt.new
  quest = prompt.select("Is it raining, foggy, windy or sunny?") do |menu|
    sleep 2
    menu.choice 'Rain'
    menu.choice 'Fog'
    menu.choice 'Windy'
    menu.choice 'Sunny'
  end
  if quest == 'Rain'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Fog'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Windy'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Sunny'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  else
    nil
  end
  question_eleven(user)
end

def question_eleven(user)
  system "clear"
  puts "Imagine a storm in relations to the cube."
  que = "Is it mild or strong? Is it in the background or right above the cube?"
  prompt = TTY::Prompt.new
  quest = prompt.select("Is it mild or strong? Is it in the background or right above the cube?") do |menu|
    sleep 2
    menu.choice 'Mild, in the background'
    menu.choice 'Mild, right above the cube'
    menu.choice 'Strong, in the background'
    menu.choice 'Strong, right above the cube'
  end
  if quest == 'Mild, in the background'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Mild, right above the cube'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Strong, in the background'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
  elsif quest == 'Strong, right above the cube'
    ques = Question.find_or_create_by(desc: que)
    Response.find_or_create_by(user: user, question: ques, answers: quest)
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
  results = count.first(9)
  puts "Question 1: How big is the field?"
  sleep 2
  puts "The answer you chose: #{results[0]}."
  sleep 2
  puts "The field represents your mind. Its size is the representation of your knowledge of the world, and how vast your personality is. The condition of the field (dry, grassy, or well-trimmed) is what your personality looks like at first glance."
    prompt.keypress("Press space to continue", keys: [:space, :return])
  puts "========================================================================"
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
      prompt.keypress("Press space to continue", keys: [:space, :return])
  puts "========================================================================"
  puts "Question 4: What is the texture of the cube?"
  sleep 2
  puts "The answer you chose: #{results[3]}."
  sleep 2
  puts "The texture of the cube represents your nature."
  puts "Smooth: You are a gentle person. You take the time to not hurt others or make them uncomfortable."
  puts "Rough: You are more straightforward. You try to be honest in everything that you do even if might affect the person you're talking to."
  puts "You tend to critize others and make others inferior to you."
    prompt.keypress("Press space to continue", keys: [:space, :return])
  puts "========================================================================"
  puts "Question 5: What kind of house do you see and do you see a fence?"
  sleep 2
  puts "The answer you chose: #{results[4]}."
  sleep 2
  puts "The size of the house is the size of your ambitions. The fence represents how open or guarded you are with others."
    prompt.keypress("Press space to continue", keys: [:space, :return])
  puts "========================================================================"
  puts "Question 6: Describe what's on the table."
  sleep 2
  puts "The answer you chose: #{results[5]}."
  sleep 2
  puts "If what you saw on the table wasn't food, people, or flowers, it indicates some unhappiness."
    prompt.keypress("Press space to continue", keys: [:space, :return])
  puts "========================================================================"
  puts "Question 7: What is the cup made out of? What do you do with the cup?"
  sleep 2
  puts "The answer you chose: #{results[6]}."
  sleep 2
  puts "How durable the cup you found was is representative of how strong your relationship is with the person in the first part of the story. What you do with it is representative of your attitude toward them."
    prompt.keypress("Press space to continue", keys: [:space, :return])
  puts "========================================================================"
  puts "Question 8: What kind of body of water it is?"
  sleep 2
  puts "The answer you chose: #{results[7]}."
  sleep 2
  puts "The size of the body of water is related to the size of your sexual drive."
    prompt.keypress("Press space to continue", keys: [:space, :return])
  puts "========================================================================"
  puts "Question 9: How wet do you get?"
  sleep 2
  puts "The answer you chose: #{results[8]}."
  sleep 2
  puts "If you became very wet, it indicates that sex is important to you. If not very wet, it may mean it's less important."
end

def oasis_run(user)
    welcome_oasis(user)
   get_user_results(user)
end
