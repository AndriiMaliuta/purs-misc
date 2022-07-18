module Main where

import Effect.Console (log)

main = log "Hello World!"

--Here, the type of the program is inferred and checked by the PureScript compiler. A more verbose version of the same program might include explicit type annotations:

module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)

main :: Effect Unit
main = log "Hello World!"