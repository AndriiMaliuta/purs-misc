module Example where

import Effect.Console (log)

import Prelude

import Control.Plus (empty)
import Data.Array ((..))

-- main = log "Hello, World!"

countThrows :: Int -> Array (Array Int)
countThrows n = do
  x <- 1 .. 6
  y <- 1 .. 6
  if x + y == n
    then pure [ x, y ]
    else empty

userCity :: XML -> Maybe XML
userCity root =
  child root "profile" >>= \prof ->
    child prof "address" >>= \addr ->
      child addr "city" >>= \city ->
        pure city

