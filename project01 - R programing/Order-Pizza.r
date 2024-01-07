## order pizza in r
pizza <- function(){
    print("Hello,   This is BPpizza. May I help you?")
    flush.console()
    customer <- readline("What's Your Name :")
    print(paste("Sir",(customer),"What toppings/pizza do you want?"))
    pizzas <- c("Hawaiian", "Cheese", "Tomyam")
    print("What would you like to order?")
    menus<-print("[1] Hawaiian [2] Cheese [3] Tomyam")
    print("just choose numbers")
    flush.console()
    order_pizza <- readline("What you choose sir : ")
    hawaiin_pizza <- 10
    cheese_pizza <- 15
    tomyam_pizza <- 17
    if (order_pizza == 1){
        print("Hawaiian pizza")
        print(paste("price : ",(hawaiin_pizza)))
        flush.console()
        many_pizza <- as.numeric(readline("how many pizza do you need? : "))
        order1 <- hawaiin_pizza * many_pizza
        print("We are processing your order: Hawaiian pizza")
        print("______________________________")
        print(paste("Total Price : $",(order1)))
        print("______________________________")
     } else if (order_pizza == 2){
        print("Cheese pizza")
        print(paste("price : ",(cheese_pizza)))
        flush.console()
        many_pizza <- as.numeric(readline("how many pizza do you need? : "))
        order2 <- cheese_pizza * many_pizza
        print("We are processing your order: Cheese pizza")
        print("______________________________")
        print(paste("Total Price : $",(order2)))
     } else if (order_pizza == 3){
        print("Tomyam pizza")
        print(paste("price : ",(tomyam_pizza)))
        flush.console()
        many_pizza <- as.numeric(readline("how many pizza do you need? : "))
        order3 <- tomyam_pizza * many_pizza
        print("We are processing your order: Tomyam pizza")
        print("______________________________")
        print(paste("Total Price : $",(order3)))
     } else {
        print("sorry sir choose again")
        return(pizza())
        break
    }
    ##flush.console()
    ##many_pizza <- readline("how many pizza do you need? : ")
    #if (many_pizza == (i)){
   #     print(paste("price : ",(price_pizza)*))
   # }
   # print(many_piz())/*
    ##input2 <- as.numeric(readLines("stdin", n=1))
   ## order <- pizzas[input2]
}
pizza()
