main = do
  let word_data = ["howdy", "owdhy"]
  putStrLn ("What's the word? " ++ (word_data !! 1))
  word <- getLine
  if word == word_data !! 0
    then putStrLn ("You win!")
    else putStrLn ("You suck!")
