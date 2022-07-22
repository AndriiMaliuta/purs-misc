module Guaards where

import Prelude
import Control.Alternative (guard)

factorsV3 :: Int -> Array (Array Int)
factorsV3 n = do
  i <- 1 .. n
  j <- i .. n
  guard $ i * j == n
  pure [ i, j ]


lengthTailRec :: forall a. Array a -> Int
lengthTailRec arr = length' arr 0
  where
  length' :: Array a -> Int -> Int
  length' arr' acc =
    if null arr'
      then acc
      else length' (fromMaybe [] $ tail arr') (acc + 1)
