main = check_word 


check_word = do
  let word_data = ["howdy", "owdhy"]
  putStrLn ("What's the word? " ++ (word_data !! 1))
  word <- getLine
  if word == word_data !! 0
    then putStrLn ("You win!")
    else do 
      putStrLn ("You suck!")
      check_word

