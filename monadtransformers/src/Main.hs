-----------------------------------------------------------------------------
--
-- Module      :  Main
-- Copyright   :
-- License     :  AllRightsReserved
--
-- Maintainer  :
-- Stability   :
-- Portability :
--
-- |
--
-----------------------------------------------------------------------------

module Main (
    main
) where

import Maybe
import Control.Monad.Trans.Maybe
import Control.Monad.Trans.Class
import Char
import Data.Char
import Monad

main = putStrLn "Hello World!"

getValidPassword :: MaybeT IO String
getValidPassword = do s <- lift getLine
                      guard (isValid s)
                      return s

askPassword :: MaybeT IO ()
askPassword = do lift $ putStrLn "Insert your new password:"
                 value <- getValidPassword
                 lift $ putStrLn "Storing in database..."

isValid :: String -> Bool
isValid s = length s >= 8 && any isAlpha s && any isNumber s && any isPunctuation s

--askPasswordInf :: MaybeT IO ()
--askPasswordInf = do lift $ putStrLn "Insert your new password:"
--                 value <- msum $ repeat getValidPassword
--                 lift $ putStrLn "Storing in database..."
