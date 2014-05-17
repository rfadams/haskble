import System.Random

swappy s n = let (a,b) = splitAt n s in concat([b,a])

main = do
     let words = ["buttons","marlin","onomatopoeia","cough"]
     putStrLn (swappy (words !! 0) 3)
     putStrLn (swappy (words !! 1) 3)
     putStrLn (swappy (words !! 2) 3)
     putStrLn (swappy (words !! 3) 3)

