require_relative '../config/environment.rb'
require_relative '../bin/apps/forest.rb'
require_relative '../bin/apps/castle.rb'

#WE need to seperare the answers to questions and tests. As of now in the console its creating a bunch of content answers. The user can determine its answers that was but i'd like it to be by question or by test. A user specifc question shows its answer.
class Command

  def player(name)
    user = User.find_or_create_by(name:name)
    user
  end

  def menu
    prompt = TTY::Prompt.new
    prompt.select("Choose an option") do |menu|
      menu.choice 'Take a test' do test_menu end
      menu.choice 'See your previous tests'
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
      # menu.choice 'The Love Path' do end
      # menu.choice 'The Oasis Test' do end
      menu.choice 'Exit' do exit end
    end
  end

  def forest(user)
    forest = The_Forest.new
    forest.run(user)
  end

  def castle(user)
    castle = Castle.new
    castle.run(user)
  end

  def run
    system 'clear'
    prompt = TTY::Prompt.new
    user_name = prompt.ask("What's your name?")
    current_user = player(user_name)
    test_menu(current_user)
  end

end
