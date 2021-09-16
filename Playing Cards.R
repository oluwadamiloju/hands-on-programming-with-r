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