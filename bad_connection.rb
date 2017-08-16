require 'pry'
class BadConnection


  def initialize

  end

  def ready_to_quit
    ready_to_quit = false
    greeting
    while ready_to_quit == false
      get_input
      if get_input == reply_not_upcase
        puts "I AM HAVING A HARD TIME HEARING YOU."
      elsif get_input == reply_all_upcase
        puts "NO,THIS IS NOT A PET STORE"
      elsif get_input == "GOODBYE!"
        goodbye += 1
      end
    end
  end

  def greeting
   "HELLO, THIS IS A GROCERY STORE!"
  end

  def get_input
    puts "Hello?!"
    input = gets.chomp
    ready_to_quit
  end

  def reply_not_upcase
    get_input != get_input.upcase
  end

  def reply_all_upcase
    get_input != get_input.downcase
  end

end

input = BadConnection.new.get_input
