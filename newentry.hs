-- ghc --make newentry.hs
-- ./newentry

import System.Random
import Data.Array
import Data.Array.IO
import Control.Monad

pickFrom :: [a] -> IO a
pickFrom xs = randomRIO (0, (length xs - 1)) >>= return . (xs !!)

shuffle :: [a] -> IO [a]
shuffle xs = do
        ar <- newArray n xs
        forM [1..n] $ \i -> do
            j <- randomRIO (i,n)
            vi <- readArray ar i
            vj <- readArray ar j
            writeArray ar j vi
            return vj
  where
    n = length xs
    newArray :: Int -> [a] -> IO (IOArray Int a)
    newArray n xs =  newListArray (1,n) xs

game chosen = do
    myguess <- getLine
    if myguess == chosen
        then print "That was right!"
        else do
            print "Nope. Please try again."
            game chosen

main = do
    chosen <- pickFrom ["Haskell", "Haddock", "Cabal", "Hackage"]
    shuffled <- shuffle chosen
    putStrLn ("What word is: " ++ shuffled)
    game chosen
