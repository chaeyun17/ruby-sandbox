class Player
  
  def initialize(id, name, countOfLife)
    @id = id
    @name = name
    @countOfLife = countOfLife
  end

  def getCountOfLife
    return @countOfLife
  end

  def decreaseLifeCount
    @countOfLife = @countOfLife - 1
  end

end


player1 = Player.new(1, '채윤', 3)
puts "#{player1.getCountOfLife()}"
puts "#{player1.decreaseLifeCount}"
puts "#{player1.getCountOfLife}"