import Text.Printf
import System.Random

svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h

svgEnd :: String
svgEnd = "</svg>"

svgTriangle :: Int -> Int -> String -> String
svgTriangle x y fill =
  printf "<polygon points='%d,%d %d,%d %d,%d' fill='%s' />\n" (x-5) (y+5) (x+5) (y+5) x y fill

svgCircle :: Int -> Int -> Int -> String -> String -> Int -> String
svgCircle x y r fill stroke strokeWidth =
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' stroke='%s' stroke-width='%d' />\n" x y r fill stroke strokeWidth

svgRect :: Int -> Int -> String -> String
svgRect x y fill =
  printf "<rect width='%d' height='%d' fill='%s' />\n" x y fill

svgAll :: Int -> Int -> Int -> Int ->  Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> (Int, Int) -> (Int, Int) -> (Int, Int)-> (Int, Int)-> (Int, Int)-> (Int, Int)-> (Int, Int)-> (Int, Int)-> (Int, Int)-> (Int, Int) -> (Int, Int) -> (Int, Int) -> (Int, Int) -> (Int, Int) -> (Int, Int) -> (Int, Int) -> (Int, Int) ->  String
svgAll x1 y1 x2 y2 x3 y3 x4 y4 x5 y5 x6 y6 x7 y7 x8 y8 t1 t2 t3 t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 =
  svgBegin 500 500 ++
  (svgRect 500 500 "rgba(24,25,34,255)") ++ --bg
  (svgCircle x1 y1 15 "rgb(204,167,104,255)" "rgba(251,241,231,255)" 4) ++ --mercury
    (svgCircle x2 y2 20 "rgb(249,211,117,255)" "rgba(251,241,231,255)" 4) ++ --venus
  (svgCircle x3 y3 25 "rgb(49,131,135,255)" "rgba(251,241,231,255)" 4) ++ --earth
  (svgCircle x4 y4 12 "rgb(209,66,40,255)" "rgba(251,241,231,255)" 4) ++ --mars
  (svgCircle x5 y5 40 "rgb(244,127,47,255)" "rgba(251,241,231,255)" 4) ++ --jupiter
  (svgCircle x6 y6 40 "rgba(250,214,101,255)" "rgba(251,241,231,255)" 4) ++ --saturn
  (svgCircle x7 y7 25 "rgb(145,227,248,255)" "rgba(251,241,231,255)" 4) ++ --uranus
  (svgCircle x8 y8 25 "rgb(63,144,201,255)" "rgba(251,241,231,255)" 4) ++ --neptune
  (svgCircle 20 40 120 "rgba(211,28,22,255)" "rgba(235,133,49,255)" 11) ++ --sun
  (svgTriangle (fst t1) (snd t1) "yellow") ++
  (svgTriangle (fst t2) (snd t2) "yellow") ++
  (svgTriangle (fst t3) (snd t3) "yellow") ++
  (svgTriangle (fst t4) (snd t4) "yellow") ++
  (svgTriangle (fst t5) (snd t5) "yellow") ++
  (svgTriangle (fst t6) (snd t6) "yellow") ++
  (svgTriangle (fst t7) (snd t7) "yellow") ++
  (svgTriangle (fst t8) (snd t8) "yellow") ++
  (svgTriangle (fst t9) (snd t9) "yellow") ++
  (svgTriangle (fst t10) (snd t10) "white") ++
  (svgTriangle (fst t11) (snd t11) "white") ++
  (svgTriangle (fst t12) (snd t12) "white") ++
  (svgTriangle (fst t13) (snd t13) "white") ++
  (svgTriangle (fst t14) (snd t14) "white") ++
  (svgTriangle (fst t15) (snd t15) "white") ++
  (svgTriangle (fst t16) (snd t16) "white") ++
  (svgTriangle (fst t17) (snd t17) "white") ++
  svgEnd

getRandomCoords :: Int -> IO (Int, Int)
getRandomCoords max = do
  x <- randomRIO (0, max)
  y <- randomRIO (0, max)
  return (x, y)

main :: IO ()
main = do
  (x1, y1) <- getRandomCoords 500
  (x2, y2) <- getRandomCoords 500
  (x3, y3) <- getRandomCoords 500
  (x4, y4) <- getRandomCoords 500
  (x5, y5) <- getRandomCoords 500
  (x6, y6) <- getRandomCoords 500
  (x7, y7) <- getRandomCoords 500
  (x8, y8) <- getRandomCoords 500
  (t1x, t1y) <- getRandomCoords 500
  (t2x, t2y) <- getRandomCoords 500
  (t3x, t3y) <- getRandomCoords 500
  (t4x, t4y) <- getRandomCoords 500
  (t5x, t5y) <- getRandomCoords 500
  (t6x, t6y) <- getRandomCoords 500
  (t7x, t7y) <- getRandomCoords 500
  (t8x, t8y) <- getRandomCoords 500
  (t9x, t9y) <- getRandomCoords 500
  (t10x, t10y) <- getRandomCoords 500
  (t11x, t11y) <- getRandomCoords 500
  (t12x, t12y) <- getRandomCoords 500
  (t13x, t13y) <- getRandomCoords 500
  (t14x, t14y) <- getRandomCoords 500
  (t15x, t15y) <- getRandomCoords 500
  (t16x, t16y) <- getRandomCoords 500
  (t17x, t17y) <- getRandomCoords 500
  writeFile "output.svg" $ svgAll x1 y1 x2 y2 x3 y3 x4 y4 x5 y5 x6 y6 x7 y7 x8 y8 (t1x, t1y) (t2x, t2y) (t3x, t3y) (t4x, t4y) (t5x, t5y) (t6x, t6y) (t7x, t7y) (t8x, t8y) (t9x, t9y)(t10x, t10y) (t11x, t11y) (t12x, t12y)(t13x, t13y)(t14x, t14y)(t15x, t15y)(t16x, t16y)(t17x, t17y)
