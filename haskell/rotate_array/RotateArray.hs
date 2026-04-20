module RotateArray where

step list = last list : init list

rotate :: [a] -> Integer -> [a]
rotate list steps
  | steps == 0    = list
  | otherwise     = rotate (step list) (steps - 1)


rotate' list 0 = list
rotate' list steps = rotate' (last list : init list) (steps - 1)

rotate_left xs k = drop n xs ++ take n xs
  where n = k `mod` length xs

rotate_right xs k = drop n xs ++ take n xs
  where n = length xs - (k `mod` length xs)

week = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
week' = reverse week
day_of_week_in future_days = (rotate_left week future_days) !! 0
day_of_week_in' future_days = last $ rotate_right week' future_days
