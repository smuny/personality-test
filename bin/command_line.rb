require_relative '../config/environment.rb'
require_relative '../bin/apps/forest.rb'
require_relative '../bin/apps/castle.rb'


class Command

  def player(name)
    user = User.find_or_create_by(name:name)
    user
  end

  def test_menu(user)
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
    #similiar to blackjace run file
    #the run file will call in current_user because current_user is only creating and finding a name. user will be able to input a name so that the user can later find their data through this method
    prompt = TTY::Prompt.new
    user_name = prompt.ask("What's your name?")
    current_user = player(user_name)
    test_menu(current_user)
  end

end
