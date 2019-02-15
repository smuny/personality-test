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
      menu.choice 'See your results'
      menu.choice 'Delete your previous tests' do delete_test(user) end
      menu.choice 'Delete your name' do delete_self(user) end
    end
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

  def delete_self(user)
    user.delete
      puts "User deleted"
      run
  end

  def delete_test(user)
    user.tests.delete
    puts "NO MORE TESTS"
    run
  end

  def forest(user)
    forest = The_Forest.new
    forest.run(user)
  end

  def castle(user)
    castle = Castle.new
    castle.run(user)
  end

  def love(user)
    love = Love.new
    love.welcome(user)
    love.run(user)
  end

  def oasis(user)
    oasis = Oasis.new
    oasis.run(user)
  end

  def run
    prompt = TTY::Prompt.new
    user_name = prompt.ask("What's your name?")
    current_user = player(user_name)
    menu(current_user)
  end
end
