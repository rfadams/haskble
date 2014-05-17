import Woof
import System.Random

main = check_word 


check_word = do
  g <- getStdGen
  let (zword,scrambled) = twowords g
  putStrLn ("What's the word? " ++ scrambled)
  word <- getLine
  if word == zword
    then putStrLn ("You win!")
    else do 
      putStrLn ("You suck!")
      check_word

