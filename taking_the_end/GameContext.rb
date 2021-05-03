class GameContext

  def def initialize(id, startWord, limitMinutes)
    @id, @startWord, @limitMinutes = id, startWord, limitMinutes
  end

  def start
    puts "Game Start"
  end

  def end
    puts "End the Game"
  end

  def pause
    "Paused"
  end

  def inputWord(player, word)
    
  end 


end