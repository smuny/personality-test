require_relative '../config/environment'
require_relative '../bin/apps/The_Forest.rb'


class Command

  def player(name)
    user = User.find_or_create_by(name:name)
    user
  end

  def question_one
    prompt = TTY::Prompt.new
    prompt.select("Which of the tests would you like to do?") do |menu|
        menu.enum '.'

        menu.choice 'The Forest Test.', 1
        menu.choice 'The Castle Test.', 2
        menu.choice 'The Oasis Test.', 3
        menu.choice 'The Love Path.', 4
    end
  end

  def run
    #similiar to blackjace run file
    #the run file will call in current_user because current_user is only creating and finding a name. user will be able to input a name so that the user can later find their data through this method
    prompt = TTY::Prompt.new
    user_name = prompt.ask("What's your name?")
    current_user = player(user_name)
  end

end
