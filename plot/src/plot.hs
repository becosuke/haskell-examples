import Graphics.Gnuplot.Simple

main =
  print $ take 3 points
  where
    xs = linearScale 1000 (0, 2 * pi)::Floating
    ys = fmap sin xs
    points = zip xs ys
