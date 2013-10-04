import Control.Parallel
import System.Environment

real_area = (pi * r^2)/2
    where r = 1

height x = sqrt(1 - x^2)

area n = 4 * sum(rectangles n 0 1)

rectangles n a b = [ width * height(a + i * width) | i <- [0..n-1]]
    where width = (b - a) / n
