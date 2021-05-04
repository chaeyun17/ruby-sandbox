class Player
  
  def initialize(id, name, countOfLife)
    @id = id
    @name = name
    @countOfLife = countOfLife
  end

  attr_reader :name

  def getCountOfLife
    return @countOfLife
  end

  def decreaseLifeCount
    @countOfLife = @countOfLife - 1
  end

  def sayWord
    print "끝말잇기 단어를 입력하세요: "
    @word = gets.chomp
    return @word
  end

  def isDead
    @countOfLife == 0
  end

end