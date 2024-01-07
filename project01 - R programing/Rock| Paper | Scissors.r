## Game- Rock| Paper | Scissors
game <- function(){
     username <- readline("What's your name: ")
     print(paste("Hello",(username)," welcome to the game!"))
     print("Let's play game!")
     hands <- c("Com : rock","Com : paper","Com : scissors")
     com_hand <- (sample(hands,1))
     user_hand <- readline("you choose : ")
     if (user_hand == "rock"& com_hand == "Com : paper"){
        print(com_hand)
        return("Lose!")
     } else if (user_hand == "rock" & com_hand == "Com : rock"){
        print(com_hand)
        return("Draw!")
     } else if (user_hand == "rock" & com_hand == "Com : scissors"){
        print(com_hand)
        return("Win!")
     }  else if (user_hand == "paper" & com_hand == "Com : rock"){
        print(com_hand)
        return("Win!")
     }  else if (user_hand == "paper" & com_hand == "Com : paper"){
        print(com_hand)
        return("Draw!")
     }  else if (user_hand == "paper" & com_hand == "Com : scissors"){
        print(com_hand)
        return("Lose!")
     } else if (user_hand == "scissors" & com_hand == "Com : rock"){
        print(com_hand)
        return("Lose!")
     }  else if (user_hand == "scissors" & com_hand == "Com : scissors"){
        print(com_hand)
        return("Draw!")
     }  else if (user_hand == "scissors" & com_hand == "Com : paper"){
        print(com_hand)
        return("Lose!")
     }  else {
        print("See You Next Time!")
     }
}
game()
