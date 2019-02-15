class Oasis
  def initialize
    @arr = []
  end

def welcome_oasis
  puts "welcome to oasis"
end

def question_one(user)
  puts "Think of a field."
  prompt = TTY::Prompt.new
  answer = prompt.select("How big is the field?") do |menu|
    menu.choice 'Big'
    menu.choice 'Medium'
    menu.choice 'Small'
  end

if answer == 'Big'
    test = Test.find_by(name: "The Oasis")
    question = Question.find_by(id: 1, test:test)
    Response.find_or_create_by(user: user, question: question, answers: answer)
    @arr << answer
elsif answer == 'Medium'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 1, test:test)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
elsif answer == 'Small'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 1, test:test)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
else
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 1, test:test)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
end
end


def question_two(user)
system "clear"
puts "Think of a cube."
prompt = TTY::Prompt.new
answer = prompt.select("How big is the cube?") do |menu|
  menu.choice 'Big'
  menu.choice 'Medium'
  menu.choice 'Small'
end



if answer == 'Big'
    test = Test.find_by(name: "The Oasis")
    question = Question.find_by(id: 2, test_id: 3)
    Response.find_or_create_by(user: user, question: question, answers: answer)
    @arr << answer
elsif answer == 'Medium'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 2, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
elsif answer == 'Small'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 2, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
else
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 2, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
end
end

def question_three(user)
system "clear"
puts "Color of the cube."
prompt = TTY::Prompt.new
answer = prompt.select("What is the color of the cube?") do |menu|
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
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 12, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
elsif answer == 'Yellow'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 12, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
elsif answer == 'Blue'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 12, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
elsif answer == 'Violet'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 12, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
elsif answer == 'Grey'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 12, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
elsif answer == 'Black'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 12, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
elsif answer == 'White'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 12, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
else answer == 'Transparent'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 12, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
end
end

def question_four(user)
system "clear"
prompt = TTY::Prompt.new
answer = prompt.select("What is the texture of the cube?") do |menu|

  menu.choice 'Smooth'
  menu.choice 'Rough'
  menu.choice 'Bumpy or Spiky'
end
if answer == 'Smooth'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 13, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
elsif answer == 'Rough'
  test = Test.find_by(name: "The Oasis")
    question = Question.find_by(id: 13, test_id: 3)
    Response.find_or_create_by(user: user, question: question, answers: answer)
    @arr << answer
else
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 13, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
end
end

def question_five(user)
system "clear"
puts "Imagine a Ladder."
prompt = TTY::Prompt.new
answer = prompt.select("Is the ladder short or long? Near or Far from you?") do |menu|

  menu.choice 'Short, near'
  menu.choice 'Short, far'
  menu.choice 'Long, near'
  menu.choice 'Long, far'
end
if answer == 'Short, near'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 14, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
elsif answer == 'Short, far'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 14, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
elsif answer == 'Long, near'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 14, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
else
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 14, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
end
end


def question_six(user)
system "clear"
puts "Imagine the ladder and it's distance to the cube."

prompt = TTY::Prompt.new
answer = prompt.select("Is it near or far from the cube? Is it strong or weak?") do |menu|

  menu.choice 'Near, Strong'
  menu.choice 'Near, Weak'
  menu.choice 'Far, Strong'
  menu.choice 'Far, Weak'
end
if answer == 'Near, Strong'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 15, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
elsif answer == 'Near, Weak'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 15, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
elsif answer == 'Far, Strong'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 15, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
else answer == 'Far, Weak'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 15, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
end
end

def question_seven(user)
system "clear"
puts "Imagine a horse."
prompt = TTY::Prompt.new
answer = prompt.select(" What is the horse doing?") do |menu|

  menu.choice 'Playing'
  menu.choice 'Running'
  menu.choice 'Sleeping or Grazing'
end
if answer == 'Playing'
  test = Test.find_by(name: "The Oasis")
  quesion = Question.find_by(id: 16, test_id: 3)
  Response.find_or_create_by(user: user, question: quesion, answers: answer)
  @arr << answer
elsif answer == 'Running'
  test = Test.find_by(name: "The Oasis")
  quesion = Question.find_by(id: 16, test_id: 3)
  Response.find_or_create_by(user: user, question: quesion, answers: answer)
  @arr << answer
else answer == 'Sleeping or Grazing'
  test = Test.find_by(name: "The Oasis")
  quesion = Question.find_by(id: 16, test_id: 3)
  Response.find_or_create_by(user: user, question: quesion, answers: answer)
  @arr << answer
end
end

def question_eight(user)
system "clear"
puts "Now imagine the horse's color."
prompt = TTY::Prompt.new
answer = prompt.select("What color is the horse?") do |menu|

  menu.choice 'Brown'
  menu.choice 'Black'
  menu.choice 'White'
end
if answer == 'Brown'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 17, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
elsif answer == 'Black'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 17, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
else answer == 'White'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 17, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
end
end

def question_nine(user)
system "clear"
puts "Imagine flowers."
prompt = TTY::Prompt.new
answer = prompt.select("How many flowers do you see?") do |menu|

  menu.choice 'Just a few'
  menu.choice 'They are everywhere!'
end
if answer == 'Just a few'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 18, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
else answer == 'They are everywhere!'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 18, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
end
end

def question_ten(user)
system "clear"
puts "Imagine the weather."
prompt = TTY::Prompt.new
answer = prompt.select("Is it raining, foggy, windy or sunny?") do |menu|

  menu.choice 'Rain'
  menu.choice 'Fog'
  menu.choice 'Windy'
  menu.choice 'Sunny'
end
if answer == 'Rain'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 19, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
elsif answer == 'Fog'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 19, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
elsif answer == 'Windy'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 19, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
else answer == 'Sunny'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 19, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
end
end

def question_eleven(user)
system "clear"
puts "Imagine a storm in relations to the cube."

prompt = TTY::Prompt.new
answer = prompt.select("Is it mild or strong? Is it in the background or right above the cube?") do |menu|

  menu.choice 'Mild, in the background'
  menu.choice 'Mild, right above the cube'
  menu.choice 'Strong, in the background'
  menu.choice 'Strong, right above the cube'
end
if answer == 'Mild, in the background'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 20, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
elsif answer == 'Mild, right above the cube'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 20, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
elsif answer == 'Strong, in the background'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 20, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
else answer == 'Strong, right above the cube'
  test = Test.find_by(name: "The Oasis")
  question = Question.find_by(id: 20, test_id: 3)
  Response.find_or_create_by(user: user, question: question, answers: answer)
  @arr << answer
end
end

def get_user_results(user)
system "clear"
prompt = TTY::Prompt.new
@arr.last(11)

system "clear"
puts "Question 1: How big is the field?"
puts "The answer you chose: #{@arr[0]}."
puts "The field represents your mind. Its size is the representation of your knowledge of the world, and how vast your personality is. The condition of the field (dry, grassy, or well-trimmed) is what your personality looks like at first glance."
  prompt.keypress("Press space to continue", keys: [:space, :return])
puts "========================================================================"
system "clear"
puts "Question 2: How big is the cube?"
puts "The answer you chose: #{@arr[1]}."
puts "The cube represents you. The size of the cube is your ego. The surface of the cube represents what is visibly observable about your personality, or maybe it is what you want others to think about you."
  prompt.keypress("Press space to continue", keys: [:space, :return])
puts "========================================================================"
system "clear"
puts "Question 3: What is the color of the cube?"
puts "The answer you chose: #{@arr[2]}."
puts "The color of the cube is a more in-depth analysis of yourself. Each color can represent an emotion, or an entire personality altogether"
puts "Red: You are physically active and enjoy rich sensory experiences."
puts "=============="
puts "Yellow: You are sociable and cherish your individuality."
puts "=============="
puts "Blue: You are intelligent and respect others' ideals."
puts "=============="
puts "Violet: You are intelligent and a bit of a perfectionist. You are also mysterious."
puts "=============="
puts "Grey: You are self-confident, independent, and not easily rattled."
puts "=============="
puts "Black: You have a strong sense of individuality and independence, and you put a high value on alone time."
puts "=============="
puts "White: You are kind, independent, and self-reliant."
puts "=============="
puts "Transparent: A cube with a transparent surface means you tend to let others know how you feel on the inside. You are confident enough to show your inner thoughts, and you are deeply sincere."
puts "=============="
    prompt.keypress("Press space to continue", keys: [:space, :return])
puts "========================================================================"
system "clear"
puts "Question 4: What is the texture of the cube?"
puts "The answer you chose: #{@arr[3]}."
puts "The texture of the cube represents your nature."
puts "Smooth: You are a gentle person. You take the time to not hurt others or make them uncomfortable."
puts "Rough: You are more straightforward. You try to be honest in everything that you do even if might affect the person you're talking to."
puts "Bumpy or Spiky: You tend to critize others and make others inferior to you."
  prompt.keypress("Press space to continue", keys: [:space, :return])
puts "========================================================================"
system "clear"
puts "Question 5: Is the ladder short or long? Near or Far from you?"
puts "The answer you chose: #{@arr[4]}."
puts "The ladder represents two different aspects of your life—your goals and your friendships."
puts "Short ladder: Your goals are realistic and simple."
puts "Long ladder: Your goals are more far fetched and difficult to attain."
puts "Ladder is near: You are putting maximum effort and focus into achieving your goals."
puts "Ladder is far: Your aren't putting much thought or effort into achieving your goals."
  prompt.keypress("Press space to continue", keys: [:space, :return])
puts "========================================================================"
system "clear"
puts "Question 6: Is it near or far from the cube? Is it strong or weak?"
puts "The answer you chose: #{@arr[5]}."
puts "The location and material of your ladder can also tell you how close you are with your friends."
puts "Near: If your ladder is near the cube, you are very close with your friends. If it's actually leaning on the cube, it means your friends can lean on you for support."
puts "Far: You have a hard time opening up to people and letting them get close to you."
puts "Strong ladder: The stronger the material (e.g. stone, metal, etc.), the stronger the bond."
puts "Weak ladder: A weak ladder indicates a weak bond between you and those around you."
  prompt.keypress("Press space to continue", keys: [:space, :return])
puts "========================================================================"
system "clear"
puts "Question 7: What is the horse doing?"
puts "The answer you chose: #{@arr[6]}."
puts "The horse represents your ideal partner."
puts "Playing: Your ideal partner doesn't take life too seriously and or get bogged down by the little stuff."
puts "Running: Your ideal partner will respect your space and give you the alone time that you crave."
puts "Sleeping or Grazing: Your ideal partner is calm and fully committed to you."
  prompt.keypress("Press space to continue", keys: [:space, :return])
puts "========================================================================"
system "clear"
puts "Question 8: What color is the horse?"
puts "The answer you chose: #{@arr[7]}."
puts "Brown: You prize comfort and reliability above all else. Otherwise, you don't have a specific set of expectations for your partner."
puts "Black: Your idea partner is dominant, seductive, and sophisticated."
puts "White: You value loyalty and trust more than anything else in a relationship."
prompt.keypress("Press space to continue", keys: [:space, :return])
puts "========================================================================"
system "clear"
puts "Question 9: How many flowers do you see?"
puts "The answer you chose: #{@arr[8]}."
puts "The flowers represent your family and friends. The number of flowers reflects your popularity, and their location indicates how close you are with your social groups."
puts "Just a few: You are close with your family and have a small, tight-knit group of friends."
puts "They're everywhere: You're a social butterfly! With family and friends too numerous to count, you'll never be lonely."
prompt.keypress("Press space to continue", keys: [:space, :return])
puts "========================================================================"
system "clear"
puts "Question 10: Is it raining, foggy, windy or sunny?"
puts "The answer you chose: #{@arr[9]}."
puts "The weather in your field reflects your general outlook on life."
puts "Rain: Rain symbolizes the problems in your life; the harder the rain, the bigger the problems."
puts "Fog: You feel uncertainty in life and may be struggling with your identity."
puts "Windy: Though you tend to worry about future issues, you generally don't let them get you down for long."
puts "Sunny: You are optimistic and carefree!"
prompt.keypress("Press space to continue", keys: [:space, :return])
puts "========================================================================"
system "clear"
puts "Question 11: Is it mild or strong? Is it in the background or right above the cube?"
puts "The answer you chose: #{@arr[10]}."
puts "The strength and position of the storm reflect the stress you're feeling in life."
puts "Mild (just passing through): While you aren't immune to stress, you know that all things must pass."
puts "Strong: When you stress, you go all in and have a very hard time pulling yourself out again."
puts "In the background: Any obstacles that might be causing you grief are not at the forefront of your mind. You are good at managing your anxiety."
puts "Right above the cube: You are deeply affected by stress and have a hard time seeing past it to get back to the bigger picture."
prompt.keypress("Press space to continue", keys: [:space, :return])
puts "========================================================================"
end
def go_back_to_menu(user)
  command = Command.new
  command.run
end

def run(user)
  welcome_oasis
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
 
end
end