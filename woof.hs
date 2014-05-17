import System.Random

swappy s n = let (a,b) = splitAt n s in concat([b,a])

swapn 0 s pos = s
swapn n s pos =
 do
  swapn (n-1) (swappy s pos) pos

main = do
     let words = ["buttons","marlin","onomatopoeia","cough"]
     -- putStrLn (swappy (words !! 0) 3)
     -- putStrLn (swappy (words !! 1) 3)
     -- putStrLn (swappy (words !! 2) 3)
     -- putStrLn (swappy (words !! 3) 3)
     putStrLn (swapn 2 "woofwoof" 3)
