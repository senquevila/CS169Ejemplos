class WrongNumberOfPlayersError < StandardError
  def initialize(msg = "Error: WrongNumberOfPlayersError"); 
    super(msg)
  end 
end

class NoSuchStrategyError < StandardError
  def initialize(msg = "Error: NoSuchStrategyError"); 
      super(msg)
  end
end

def rps_result(m1, m2)
  valor1 = m1.upcase
  valor2 = m2.upcase
  
  if (!valor1.match(/[PSR]/i) || !valor2.match(/[PSR]/i))
    raise NoSuchStrategyError
  end
  
  if ((valor1 == valor2) || (valor1 == "P" && valor2 == "R") || (valor1 == "S" && valor2 == "P") || (valor1 == "R" && valor2 == "S"))
    return 0
  end
  
  if ((valor1 == "R" && valor2 == "P") || (valor1 == "P" && valor2 == "S") || (valor1 == "S" && valor2 == "R"))
    return 1
  end   
end

def rps_game_winner(game)
  if (game.size != 2)
    raise WrongNumberOfPlayersError
  end
  
  index = rps_result(game[0][1], game[1][1])
  return game[index]
end

def rps_tournament_winner(tournament)
  nivel = 5  
  
  if (! tournament.kind_of?Array)
    raise WrongNumberOfPlayersError
  elsif (! tournament[0].kind_of?Array)
    nivel = 0
  elsif (! tournament[0][0].kind_of?Array)
    nivel = 1
  elsif (! tournament[0][0][0].kind_of?Array)
    nivel = 2
  elsif (! tournament[0][0][0][0].kind_of?Array)
    nivel = 3
  elsif (! tournament[0][0][0][0][0].kind_of?Array)
    nivel = 4
  elsif (! tournament[0][0][0][0][0].kind_of?Array)
    nivel = 5
  end

  contador = 2 ** nivel  
  
#  print nivel.to_s + "----\n"
  
  j30 = []
  j29 = []
  j28 = []  
  j27 = []
  j26 = []
  j25 = []
  j24 = []
  j23 = []
  j22 = []
  j21 = []
  j20 = []
  j19 = []
  j18 = []
  j17 = []
  j16 = []
  j15 = []
  j14 = []
  j13 = []
  j12 = []
  j11 = []
  j10 = []
  j9 = []
  j8 = []
  j7 = []
  j6 = []
  j5 = []
  j4 = []
  j3 = []
  j2 = []
  j1 = []
  j0 = []
  
  # 1/16 de final
  if (nivel == 5)
    if (contador == 2 ** nivel)
      j15 = tournament[0][0][0][0]
      j16 = tournament[0][0][0][1]
      j17 = tournament[0][0][1][0]
      j18 = tournament[0][0][1][1]
      j19 = tournament[0][1][0][0]
      j20 = tournament[0][1][0][1]
      j21 = tournament[0][1][1][0]
      j22 = tournament[0][1][1][1]
      j23 = tournament[1][0][0][0]
      j24 = tournament[1][0][0][1]
      j25 = tournament[1][0][1][0]
      j26 = tournament[1][0][1][1]
      j27 = tournament[1][1][0][0]
      j28 = tournament[1][1][0][1]
      j29 = tournament[1][1][1][0]
      j30 = tournament[1][1][1][1]
    else      
      j15 << d1
      j15 << d2
      j16 << d3
      j16 << d4
      j17 << d5
      j17 << d6
      j18 << d7
      j18 << d8
      j19 << d9
      j19 << d10
      j20 << d11
      j20 << d12
      j21 << d13
      j21 << d14
      j22 << d15
      j22 << d16   
      j23 << d1
      j23 << d2
      j24 << d3
      j24 << d4
      j25 << d5
      j25 << d6
      j26 << d7
      j26 << d8
      j27 << d9
      j27 << d10
      j28 << d11
      j28 << d12
      j29 << d13
      j29 << d14
      j30 << d15
      j30 << d16      
    end 
    
    
    d1 = rps_game_winner(j15)
    d2 = rps_game_winner(j16) 
    d3 = rps_game_winner(j17)
    d4 = rps_game_winner(j18)
    d5 = rps_game_winner(j19)
    d6 = rps_game_winner(j20) 
    d7 = rps_game_winner(j21)
    d8 = rps_game_winner(j22)
    d9 = rps_game_winner(j23)
    d10 = rps_game_winner(j24) 
    d11 = rps_game_winner(j25)
    d12 = rps_game_winner(j26)
    d13 = rps_game_winner(j27)
    d14 = rps_game_winner(j28) 
    d15 = rps_game_winner(j29)
    d16 = rps_game_winner(j30)    
    
    nivel = nivel - 1
  end
    
  # 1/8 de final
  if (nivel == 4)
    if (contador == 2 ** nivel)
      j7 = tournament[0][0][0]
      j8 = tournament[0][0][1]
      j9 = tournament[0][1][0]
      j10 = tournament[0][1][1]
      j11 = tournament[1][0][0]
      j12 = tournament[1][0][1]
      j13 = tournament[1][1][0]
      j14 = tournament[1][1][1]
    else      
      j7 << d1
      j7 << d2
      j8 << d3
      j8 << d4
      j9 << d5
      j9 << d6
      j10 << d7
      j10 << d8
      j11 << d9
      j11 << d10
      j12 << d11
      j12 << d12
      j13 << d13
      j13 << d14
      j14 << d15
      j14 << d16      
    end 
  
  
    c1 = rps_game_winner(j7)
    c2 = rps_game_winner(j8) 
    c3 = rps_game_winner(j9)
    c4 = rps_game_winner(j10)
    c5 = rps_game_winner(j11)
    c6 = rps_game_winner(j12) 
    c7 = rps_game_winner(j13)
    c8 = rps_game_winner(j14)    
    
    nivel = nivel - 1
  end
    
  # 1/4 de final
  if (nivel == 3)
    if (contador == 2 ** nivel)
      j3 = tournament[0][0]
      j4 = tournament[0][1]
      j5 = tournament[1][0]
      j6 = tournament[1][1]
    else      
      j3 << c1
      j3 << c2
      j4 << c3
      j4 << c4
      j5 << c5
      j5 << c6
      j6 << c7
      j6 << c8
    end 
    
    
    b1 = rps_game_winner(j3)
    b2 = rps_game_winner(j4) 
    b3 = rps_game_winner(j5)
    b4 = rps_game_winner(j6)
    
    nivel = nivel - 1
  end
    
  # 1/2 de final    
  if (nivel == 2)
    if (contador == 2 ** nivel)
      j1 = tournament[0]
      j2 = tournament[1]
    else      
      j1 << b1
      j1 << b2
      j2 << b3
      j2 << b4
    end 
    
    #print "J1" + j1.to_s + "\n"
    #print "J2" + j2.to_s + "\n"
    
    a1 = rps_game_winner(j1)
    a2 = rps_game_winner(j2) 
    
    nivel = nivel - 1
  end
    
  #final
  if (nivel == 1)
    if (contador == 2 ** nivel)
      j0 = tournament
    else      
      j0 << a1
      j0 << a2
    end
  end
  
  #print "J0" + j0.to_s + "\n"
  
  return rps_game_winner(j0)  
end

#c = [
#[
#    [ ["Armando", "P"], ["Dave", "S"] ],
#    [ ["Richard", "R"],  ["Michael", "S"] ],
#],
#[
#    [ ["Allen", "S"], ["Omer", "P"] ],
#    [ ["David E.", "R"], ["Richard X.", "P"] ]
#]
#3]
#b = [
#[ ["Allen", "S"], ["Omer", "P"] ],
#[ ["David E.", "R"], ["Richard X.", "P"] ]
#]

#a =  [ ["Armando", "P"], ["Dave", "R"] ]

#print rps_tournament_winner(c)
class WrongNumberOfPlayersError < StandardError
  def initialize(msg = "Error: WrongNumberOfPlayersError"); 
    super(msg)
  end 
end

class NoSuchStrategyError < StandardError
  def initialize(msg = "Error: NoSuchStrategyError"); 
      super(msg)
  end
end

def rps_result(m1, m2)
  valor1 = m1.upcase
  valor2 = m2.upcase
  
  if (!valor1.match(/[PSR]/i) || !valor2.match(/[PSR]/i))
    raise NoSuchStrategyError
  end
  
  if ((valor1 == valor2) || (valor1 == "P" && valor2 == "R") || (valor1 == "S" && valor2 == "P") || (valor1 == "R" && valor2 == "S"))
    return 0
  end
  
  if ((valor1 == "R" && valor2 == "P") || (valor1 == "P" && valor2 == "S") || (valor1 == "S" && valor2 == "R"))
    return 1
  end   
end

def rps_game_winner(game)
  if (game.size != 2)
    raise WrongNumberOfPlayersError
  end
  
  index = rps_result(game[0][1], game[1][1])
  return game[index]
end

def rps_tournament_winner(tournament)
  nivel = 5  
  
  if (! tournament.kind_of?Array)
    raise WrongNumberOfPlayersError
  elsif (! tournament[0].kind_of?Array)
    nivel = 0
  elsif (! tournament[0][0].kind_of?Array)
    nivel = 1
  elsif (! tournament[0][0][0].kind_of?Array)
    nivel = 2
  elsif (! tournament[0][0][0][0].kind_of?Array)
    nivel = 3
  elsif (! tournament[0][0][0][0][0].kind_of?Array)
    nivel = 4
  elsif (! tournament[0][0][0][0][0].kind_of?Array)
    nivel = 5
  end

  contador = 2 ** nivel  
  
#  print nivel.to_s + "----\n"
  
  j30 = []
  j29 = []
  j28 = []  
  j27 = []
  j26 = []
  j25 = []
  j24 = []
  j23 = []
  j22 = []
  j21 = []
  j20 = []
  j19 = []
  j18 = []
  j17 = []
  j16 = []
  j15 = []
  j14 = []
  j13 = []
  j12 = []
  j11 = []
  j10 = []
  j9 = []
  j8 = []
  j7 = []
  j6 = []
  j5 = []
  j4 = []
  j3 = []
  j2 = []
  j1 = []
  j0 = []
  
  # 1/16 de final
  if (nivel == 5)
    if (contador == 2 ** nivel)
      j15 = tournament[0][0][0][0]
      j16 = tournament[0][0][0][1]
      j17 = tournament[0][0][1][0]
      j18 = tournament[0][0][1][1]
      j19 = tournament[0][1][0][0]
      j20 = tournament[0][1][0][1]
      j21 = tournament[0][1][1][0]
      j22 = tournament[0][1][1][1]
      j23 = tournament[1][0][0][0]
      j24 = tournament[1][0][0][1]
      j25 = tournament[1][0][1][0]
      j26 = tournament[1][0][1][1]
      j27 = tournament[1][1][0][0]
      j28 = tournament[1][1][0][1]
      j29 = tournament[1][1][1][0]
      j30 = tournament[1][1][1][1]
    else      
      j15 << d1
      j15 << d2
      j16 << d3
      j16 << d4
      j17 << d5
      j17 << d6
      j18 << d7
      j18 << d8
      j19 << d9
      j19 << d10
      j20 << d11
      j20 << d12
      j21 << d13
      j21 << d14
      j22 << d15
      j22 << d16   
      j23 << d1
      j23 << d2
      j24 << d3
      j24 << d4
      j25 << d5
      j25 << d6
      j26 << d7
      j26 << d8
      j27 << d9
      j27 << d10
      j28 << d11
      j28 << d12
      j29 << d13
      j29 << d14
      j30 << d15
      j30 << d16      
    end 
    
    
    d1 = rps_game_winner(j15)
    d2 = rps_game_winner(j16) 
    d3 = rps_game_winner(j17)
    d4 = rps_game_winner(j18)
    d5 = rps_game_winner(j19)
    d6 = rps_game_winner(j20) 
    d7 = rps_game_winner(j21)
    d8 = rps_game_winner(j22)
    d9 = rps_game_winner(j23)
    d10 = rps_game_winner(j24) 
    d11 = rps_game_winner(j25)
    d12 = rps_game_winner(j26)
    d13 = rps_game_winner(j27)
    d14 = rps_game_winner(j28) 
    d15 = rps_game_winner(j29)
    d16 = rps_game_winner(j30)    
    
    nivel = nivel - 1
  end
    
  # 1/8 de final
  if (nivel == 4)
    if (contador == 2 ** nivel)
      j7 = tournament[0][0][0]
      j8 = tournament[0][0][1]
      j9 = tournament[0][1][0]
      j10 = tournament[0][1][1]
      j11 = tournament[1][0][0]
      j12 = tournament[1][0][1]
      j13 = tournament[1][1][0]
      j14 = tournament[1][1][1]
    else      
      j7 << d1
      j7 << d2
      j8 << d3
      j8 << d4
      j9 << d5
      j9 << d6
      j10 << d7
      j10 << d8
      j11 << d9
      j11 << d10
      j12 << d11
      j12 << d12
      j13 << d13
      j13 << d14
      j14 << d15
      j14 << d16      
    end 
  
  
    c1 = rps_game_winner(j7)
    c2 = rps_game_winner(j8) 
    c3 = rps_game_winner(j9)
    c4 = rps_game_winner(j10)
    c5 = rps_game_winner(j11)
    c6 = rps_game_winner(j12) 
    c7 = rps_game_winner(j13)
    c8 = rps_game_winner(j14)    
    
    nivel = nivel - 1
  end
    
  # 1/4 de final
  if (nivel == 3)
    if (contador == 2 ** nivel)
      j3 = tournament[0][0]
      j4 = tournament[0][1]
      j5 = tournament[1][0]
      j6 = tournament[1][1]
    else      
      j3 << c1
      j3 << c2
      j4 << c3
      j4 << c4
      j5 << c5
      j5 << c6
      j6 << c7
      j6 << c8
    end 
    
    
    b1 = rps_game_winner(j3)
    b2 = rps_game_winner(j4) 
    b3 = rps_game_winner(j5)
    b4 = rps_game_winner(j6)
    
    nivel = nivel - 1
  end
    
  # 1/2 de final    
  if (nivel == 2)
    if (contador == 2 ** nivel)
      j1 = tournament[0]
      j2 = tournament[1]
    else      
      j1 << b1
      j1 << b2
      j2 << b3
      j2 << b4
    end 

    a1 = rps_game_winner(j1)
    a2 = rps_game_winner(j2) 
    
    nivel = nivel - 1
  end
    
  #final
  if (nivel == 1)
    if (contador == 2 ** nivel)
      j0 = tournament
    else      
      j0 << a1
      j0 << a2
    end
  end
 
  return rps_game_winner(j0)  
end

#c = [
#[
#    [ ["Armando", "P"], ["Dave", "S"] ],
#    [ ["Richard", "R"],  ["Michael", "S"] ],
#],
#[
#    [ ["Allen", "S"], ["Omer", "P"] ],
#    [ ["David E.", "R"], ["Richard X.", "P"] ]
#]
#]
#
#b = [
#[ ["Allen", "S"], ["Omer", "P"] ],
#[ ["David E.", "R"], ["Richard X.", "P"] ]
#]
#
#a =  [ ["Armando", "P"], ["Dave", "R"] ]
#
#print rps_tournament_winner(c)
