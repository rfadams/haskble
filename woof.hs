import System.Random

swappy s n = let (a,b) = splitAt n s in concat([b,a])

main = putStrLn (swappy "woofweee" 3)

