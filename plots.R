library("tidyverse")

pd <- read.csv("Processed_Data.csv")

pt = table(pd$Pickles,pd$Corned.Beef)

ptdf <- data.frame(pt)

ggplot(data=ptdf, mapping=aes(x=Var1, y=Var2, fill=Freq)) +geom_tile() +xlab("Pickles") +ylab("Corned Beef")


ggplot(pd, aes(x = Pickles, fill = Corned.Beef)) + 
       geom_bar() + xlim(0,11)


ggplot(ptdf, aes(x = Var1, y = Var2, fill = Freq)) + 
  geom_bar(position="stack", stat="identity")


ggplot(pd, aes(x = PF, fill = CF)) + 
  +     geom_bar() +xlab("Pickles")
