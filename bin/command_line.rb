require_relative '../config/environment'
require_relative '../bin/apps/The_Forest.rb'


class Command

  def current_user
    prompt = TTY::Prompt.new
    name =  prompt.ask('What is your name?')
      user = User.new
      user.name = name
      user.save
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

  # def question_two
  #   prompt = TTY::Prompt.new
  #   prompt.select("You're in front of the door of a castle, how exactly do you imagine it?") do |menu|
  #       menu.enum '.'
  #
  #       menu.choice 'It is a simpile door.', 1
  #       menu.choice 'It is covered by plants and somewhat hard to find.', 2
  #       menu.choice 'It is a huge wooden door.', 3
  #   end
  # end

end
