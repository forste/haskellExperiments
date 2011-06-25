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

import VCSGui.Svn
import VCSWrapper.Common

import Graphics.UI.Gtk

main = do
        initGUI
        runWithConfig $ showLogGUI
        mainGUI
        putStrLn "Hello World!"

runWithConfig = runVcs $ makeConfig (Just "/home/n0s/project1_work3") Nothing Nothing

