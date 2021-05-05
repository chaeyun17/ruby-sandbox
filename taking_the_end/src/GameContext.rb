load './Player.rb'

class GameContext

  def initialize(id, startWord, limitMinutes)
    @id, @startWord, @limitMinutes = id, startWord, limitMinutes
    @statue = "WAITING"
    @wordLog = []
    @score = 0
  end

  def start
    puts "------------------------- Game Start -------------------------"
    @status = 'START'

    print "[입력] 플레이어 이름을 입력하세요: "
    playerName = gets.chomp
    @player = Player.new(1, playerName, 3)
    puts "[안내] #{@player.name} 플레이어가 등록되었습니다."
    
    until @status == 'END'
      puts '------------------------------------------------------------'
      play(@player)
      if @player.isDead
        endGame()
      end
    end

    showGameResult()

  end

  def play(player)
    unless @wordLog.empty?
      showLog()
    else 
      logWord(@startWord)
    end

    puts "[안내] 제시어: #{@startWord}"
    player.sayWord()
    isCommand = runCommandWord(player.word)
    if isCommand
      return
    end

    if validateWord(@startWord, player.word)
      puts '[안내] 정답입니다'
      @score += 1
      logWord(player.word)
      @startWord = player.word
    else
      puts "[안내] 입력한 단어 '#{player.word}' 는 '#{@startWord}'의 끝말에 맞지 않습니다."
      player.decreaseLifeCount
      puts "[안내] 현재 목숨은 #{player.getCountOfLife} 개 입니다"
    end
  end

  def endGame
    @status = 'END'
    puts "------------------------- End the Game -------------------------"
  end
  
  private
  def validateWord(startWord, word)
    return startWord[-1] == word[0]
  end

  def logWord(*words)
    @wordLog.push(*words)
  end

  def showLog
    puts @wordLog.join('-')
  end

  def runCommandWord(word)
    if word.upcase == 'END'
      endGame()
      return true
    end

    return false
  end

  def showGameResult
    puts "---------------------- 게임 결과 -----------------------------"
    showLog
    puts "총 점수: #{@score}"
    puts "남음 목숨 수: #{@player.getCountOfLife}"
    puts "--------------------------------------------------------------"
  end

end