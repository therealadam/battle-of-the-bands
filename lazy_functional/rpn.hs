calc :: String -> [Float]
calc = foldl f [] . words
  where
    f (x:y:zs) "+" = y+x:zs
    f (x:y:zs) "-" = y-x:zs
    f (x:y:zs) "*" = y*x:zs
    f (x:y:zs) "/" = y/x:zs
    f xs y         = read y:xs
  
-- *Main> calc "2 2 + 4 *"
-- [16.0]
