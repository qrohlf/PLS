--sequential version
import Control.Parallel
import Control.Parallel.Strategies

--Circle
circle x = sqrt (abs (1 - x^2))

--Area of a Riemann Rectangle
area x1 x2 = (x2 - x1) * circle x2

estimate (x:y:ys) = (area x y) + estimate (y:ys)
estimate _ = 0

pi' n = 2 * estimate [(-1), (-1 + (2/n)) .. 1]
