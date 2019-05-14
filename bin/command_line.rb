require_relative '../config/environment.rb'
require_relative '../bin/apps/forest.rb'
require_relative '../bin/apps/castle.rb'
require_relative '../bin/apps/oasis.rb'
require_relative '../bin/apps/love.rb'
require_relative '../bin/apps/oasis.rb'
require_all 'sounds'

class Command

  def player(name)
    user = User.find_or_create_by(name:name)
    user
  end

  def menu(user)
    system "clear"
    prompt = TTY::Prompt.new
    prompt.select("Choose an option") do |menu|
      menu.choice 'Take a test' do test_menu(user) end
      menu.choice 'See your results' do results_menu(user) end
      menu.choice 'Delete your previous tests' do delete_tests(user) end
      menu.choice 'Delete your name' do delete_self(user) end
    end
  end

  def delete_self(user)
    user.delete
    puts "User deleted"
    run
  end

  def delete_tests(user)
    user.tests.delete
    puts "NO MORE TESTS"
    run
  end
#########################################################################################################
#  Test Options                                                                                         #
#########################################################################################################

  def test_menu(user = nil)
    pid = fork{ exec 'afplay', 'sounds/mm_title.mp3'}
    prompt = TTY::Prompt.new
    prompt.select("Which of the tests would you like to do?") do |menu|
      menu.choice 'The Forest Test.'.colorize(:color => :green, :background => :black) do forest(user) end
      menu.choice 'The Castle Test'.colorize(:color => :black, :background => :white) do castle(user) end
      menu.choice 'The Love Path'.colorize(:color => :red, :background => :black) do love(user) end
      menu.choice 'The Oasis Test'.colorize(:color => :light_blue, :background => :dark_blue) do oasis(user) end
      menu.choice 'Exit' do exit end
    end
  end

  def forest(user)
    forest = The_Forest.new
    forest.welcome
    forest.run(user)
  end

  def castle(user)
    castle = Castle.new
    castle.welcome
    castle.run(user)
  end

  def love(user)
    love = Love.new
    love.welcome
    love.run(user)
  end

  def oasis(user)
    oasis = Oasis.new
    oasis.welcome
    oasis.run(user)
  end
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  def results_menu(user)
    prompt = TTY::Prompt.new
    prompt.select('Which of the tests would you like results for?') do |menu|
      menu.choice 'The Forest test'.colorize(:color => :green, :background => :black) do get_forest_results(user) end
      menu.choice 'The Castle test'.colorize(:color => :black, :background => :white) do get_castle_results(user) end
      menu.choice 'The Love path'.colorize(:color => :red, :background => :black) do get_love_results(user) end
      menu.choice 'The Oasis test'.colorize(:color => :light_blue, :background => :dark_blue) do get_oasis_results(user) end
    end
  end
  def get_forest_results(user)
    forest = The_Forest.new
    forest.get_user_results(user)
  end

  def get_castle_results(user)
    castle = Castle.new
    castle.get_user_results(user)
  end

  def get_love_results(user)
    love = Love.new
    love.get_user_results(user)
  end

  def get_oasis_results(user)
    oasis = Oasis.new
    oasis.get_user_results(user)
  end

  def run
    prompt = TTY::Prompt.new
    user_name = prompt.ask("What's your name?")
    current_user = player(user_name)
    menu(current_user)
  end
end