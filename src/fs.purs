module FS where

import Prelude

root :: Path

ls :: Path -> Array Path

filename :: Path -> String

size :: Path -> Maybe Int

isDirectory :: Path -> Boolean


allFiles' :: Path -> Array Path
allFiles' file = file : do
  child <- ls file
  allFiles' child
