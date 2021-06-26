killaRobot = robot ("Kill@",25,200)
gentlGiant = robot ("Gentl",10,300)

robot (name,attack,hitpoints) = \fn -> fn (name,attack,hitpoints)

name (n,_,_) = n
attack (_,a,_) = a
hitpoints (_,_,hp) = hp

getName aRobot   = aRobot name
getAttack aRobot = aRobot attack
getHitPoints aRobot = aRobot hitpoints

setName aRobot newName     = aRobot (\(n,a,h) -> robot (newName,a,h))
setAttack aRobot newAttack = aRobot (\(n,a,h) -> robot (n,newAttack,h))
setHitPoints aRobot newHP  = aRobot (\(n,a,h) -> robot (n,a,newHP))

printRobot aRobot = aRobot (\(n,a,h) -> n ++ " attack: " ++ (show a) ++ " hp: " ++ (show h))

-- Returns a new instance of the robot with the damage substracted
damage aRobot attackDamage = aRobot (\(n,a,h) -> robot (n,a,h-attackDamage))

-- Returns the defender robot with the damage applied to it
-- if attacker (aRobot) has no life, then it won't attack
fight aRobot defender = damage defender attack
   where attack = if getHitPoints aRobot > 10
                  then getAttack aRobot
                  else 0
