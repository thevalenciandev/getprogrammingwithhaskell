killaRobot = robot ("Kill@",25,2000)

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

damage aRobot attackDamage = aRobot (\(n,a,h) -> robot (n,a,h-attackDamage))
