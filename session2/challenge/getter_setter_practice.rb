class FootballTeam
#setter
  def set_name(name)
    @name = name
  end
#getter
  def get_name
    @name
  end

end

united = FootballTeam.new
united.set_name("Manchester United")

puts united.get_name

class TennisPlayer
  #setter
  def set_info(name, age, sex, surface)
    @name = name
    @age = age
    @sex = sex
    @surface = surface
  end
  #getter
  def get_info
    @name
    @age
    @sex
    @surface
  end
  #summary method
  def summary
    puts "Your player is #{@name}, they are #{@age} years old, #{@sex} and their favourite surface is #{@surface}"
  end
end

player1 = TennisPlayer.new
player1.set_info "Roger Federer", "36", "Male", "Grass"
player1.summary
