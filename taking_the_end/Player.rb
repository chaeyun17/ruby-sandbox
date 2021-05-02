class Player
  
  def initialize(id, countOfLife)
    @id = id
    @name = name
    @countOfLife = countOfLife
  end

  def getCountOfLife
    @countOfLife
  end

  def decreaseLifeCount
    @countOfLife = @countOfLife - 1
  end

end