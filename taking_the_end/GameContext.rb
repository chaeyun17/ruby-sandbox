load './Player.rb'

class GameContext

  def initialize(id, startWord, limitMinutes)
    @id, @startWord, @limitMinutes = id, startWord, limitMinutes
  end

  def start
    puts "Game Start"
    @status = 'START'
    print "플레이어 이름을 입력하세요: "
    playerName = gets.chomp
    @player = Player.new(1, playerName, 3)
    puts "#{@player.name} 플레이어가 등록되었습니다."
    @log = @startWord
    while @status != 'END'
      play(@player)
    end
    puts '게임이 끝났습니다.'
  end

  def play(player)
    if player.isDead
      endGame()
      return
    end

    puts "제시어: #{@startWord}"
    inputWord = player.sayWord()
    if validateWord(@startWord, inputWord)
      @log = @log + '-' + inputWord
      puts @log
      @startWord = inputWord
    else
      puts " 입력한 단어 '#{inputWord}' 는 '#{@startWord}'의 끝말에 맞지 않습니다."
      player.decreaseLifeCount
      puts "현재 목숨은 #{player.getCountOfLife} 개 입니다"
    end
  end

  def endGame
    puts "End the Game"
    @status = 'END'
  end

  def pause
    "Paused"
  end
  
  private
  def validateWord(startWord, word)
    return startWord[-1] == word[0]
  end


end