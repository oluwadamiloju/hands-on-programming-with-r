# imported csv dataset from github

head(deck)

#creating a new file with deck file
write.csv(deck, file = "card_deck.csv", row.names = FALSE)

#dealing a card(card on top)
deal <- function(deck) {
  deck[1, ]
}

deal(deck)

#shuffling the card deck
shuffle <- function(deck) {
  random <- sample(1:52, size = 52)
  
  deck[random, ]
}

#dealing and shuffling
deal(deck)
deck_2 <- shuffle(deck)
deal(deck_2)

deck2 <- deck

deck2$value[deck2$face == 'ace'] <- 14

#learning  how to reassign values
deck3 <- deck
deck3$value[deck3$suit == 'hearts'] <- 1

#playimg a game of hearts
deck4 <- deck
deck4$value <- 0
queenOfSpades <- deck4$face == 'queen' & deck4$suit == 'spades'

deck4$value[queenOfSpades] <- 13

#w <- c(-1, 0, 1)
#x <- c(5, 15)
#y <- "February"
#z <- c("Monday", "Tuesday", "Friday")

#w > 0
#x > 10 & x < 20
#"y" == y
#all(z %in% c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"))


#playing a game of blackjack
deck5 <- deck
facecard <- deck5$face %in% c("king", "queen", "jack")
deck5$value[facecard] <- 10
deck5$value[deck5$face == 'ace'] <- NA

