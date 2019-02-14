require_relative '../config/environment.rb'
require_relative '../bin/apps/forest.rb'
require_relative '../bin/apps/castle.rb'
require_relative '../bin/apps/love.rb'

#WE need to seperare the answers to questions and tests. As of now in the console its creating a bunch of content answers. The user can determine its answers that was but i'd like it to be by question or by test. A user specifc question shows its answer.
class Command

  def player(name)
    user = User.find_or_create_by(name:name)
    user
  end

  def menu(user)
    prompt = TTY::Prompt.new
    prompt.select("Choose an option") do |menu|
      menu.choice 'Take a test' do test_menu(user) end
      menu.choice 'See your results'
      menu.choice 'Delete your previous tests'
    end
  end
#########################################################################################################
#  Test Options                                                                                         #
#########################################################################################################

  def test_menu(user = nil)
    prompt = TTY::Prompt.new
    prompt.select("Which of the tests would you like to do?") do |menu|
      menu.choice 'The Forest Test.' do forest(user) end
      menu.choice 'The Castle Test' do castle(user) end
      menu.choice 'The Love Path' do love(user) end
      # menu.choice 'The Oasis Test' do end
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
    castle.run(user)
  end

  def love(user)
    love = Love.new
    # love.welcome
    love.run(user)
  end

  def run
    system 'clear'
    #similiar to blackjack run file
    #the run file will call in current_user because current_user is only creating and finding a name. user will be able to input a name so that the user can later find their data through this method
    prompt = TTY::Prompt.new
    user_name = prompt.ask("What's your name?")
    current_user = player(user_name)
    menu(current_user)
  end

end
