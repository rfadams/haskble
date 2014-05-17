module Woof where 
import System.Random

swappy s n = let (a,b) = splitAt n s in concat([b,a])

swapn :: [Int] -> String -> String
swapn [] s = s
swapn (n:ns) s = swapn ns (swappy s n)

twowords :: RandomGen g => g -> (String, String)
twowords g = (zword,scrambled)
     where zwords    = ["buttons","marlin","onomatopoeia","cough"]     
           zpick     = head (randomRs (0,(length zwords - 1)) g) :: Int
           zword     = (zwords !! zpick)
           rpos      = take 1000 (randomRs (0,(length zword - 1)) g) :: [Int]
           scrambled = (swapn rpos (zwords !! zpick))

-- main = do
--      g <- getStdGen 
--      putStrLn . show . twowords $ g
