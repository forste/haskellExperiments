-----------------------------------------------------------------------------
--
-- Module      :  SimpleFFI
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
{-# Language ForeignFunctionInterface #-}
module SimpleFFI where

import Foreign
import Foreign.C.Types


foreign import ccall "math.h sin"
    c_sin :: CDouble -> CDouble


