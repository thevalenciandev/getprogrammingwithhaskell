data Shape = Circle Double | Square Double | Rectangle Double Double

perimeter :: Shape -> Double
perimeter (Circle radius) = 2 * pi * radius
perimeter (Square side) = 4 * side
perimeter (Rectangle len width) = 2 * (len + width)

area :: Shape -> Double
area (Circle radius) = pi * radius^2
area (Square side) = side^2
area (Rectangle len width) = len * width
