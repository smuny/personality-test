require_relative '../config/environment.rb'
require_relative '../bin/apps/forest.rb'
require_relative '../bin/apps/castle.rb'

#WE need to seperare the answers to questions and tests. As of now in the console its creating a bunch of content answers. The user can determine its answers that was but i'd like it to be by question or by test. A user specifc question shows its answer.
class Command

  def player(name)
    user = User.find_or_create_by(name:name)
    user
    menu(user)
  end

  def menu(user)
    system "clear"
    prompt = TTY::Prompt.new
    prompt.select("Choose an option") do |menu|
      menu.choice 'Take a test' do test_menu(user) end
      menu.choice 'See your previous tests' # do previous_tests end
      menu.choice 'Delete your previous tests'
    end
    # test_menu(user)
    #if else statement needs to go in here for the options
  end
#########################################################################################################
#  Test Options                                                                                         #
#########################################################################################################

  def test_menu(user)
    system "clear"
    prompt = TTY::Prompt.new
    test_answer = prompt.select('Pick a test ninja', ["Forest", "Castle", "Exit"])
    test_menu_method(user)
    # test_question = prompt.select("Which of the tests would you like to do?") do |menu|
    #   menu.choice 'The Forest Test.' # do forest(user) end
    #   menu.choice 'The Castle Test' do castle(user) end
    #   # menu.choice 'The Love Path' do end
    #   # menu.choice 'The Oasis Test' do end
    #   menu.choice 'Exit' do exit end
    # end
  end

  def test_menu_method(user)
    welcome_forest(user)
  end
######################################
  # def welcome_forest(user)
  #   system "clear"
  #   puts "
  #     _______ .-. .-.,---.    ,---. .---.  ,---.    ,---.     .---.  _______
  #   |__   __|| | | || .-'    | .-'/ .-. ) | .-.\   | .-'    ( .-._)|__   __|
  #     )| |   | `-' || `-.    | `-.| | |(_)| `-'/   | `-.   (_) \     )| |
  #    (_) |   | .-. || .-'    | .-'| | | | |   (    | .-'   _  \ \   (_) |
  #      | |   | | |)||  `--.  | |  \ `-' / | |\ \   |  `--.( `-'  )    | |
  #      `-'   /(  (_)/( __.'  )\|   )---'  |_| \)\  /( __.' `----'     `-'
  #           (__)   (__)     (__)  (_)         (__)(__)                            "
  # end
########################################

  def forest(user)
    forest_run(user)
  end

  def castle(user)
    castle = Castle.new
    castle.run(user)
  end

  def run
    prompt = TTY::Prompt.new
    user_name = prompt.ask("What's your name?")
    current_user = player(user_name)
    menu(current_user)
  end

  # def previous_tests
  #
  # end


end
