class Player
  
  def initialize(id, name, countOfLife)
    @id = id
    @name = name
    @countOfLife = countOfLife
    @word = nil
  end

  attr_reader :name, :word

  def getCountOfLife
    return @countOfLife
  end

  def decreaseLifeCount
    @countOfLife = @countOfLife - 1
  end

  def sayWord
    print "'#{name}'님 단어를 입력하세요: "
    @word = gets.chomp
  end

  def isDead
    @countOfLife == 0
  end

end