-- Create inpFunc
inpFunc :: Int -> Int -> [Int]
inpFunc a b = [a..b]

-- Define applicatorFunc
applicatorFunc :: (Int -> Int -> [Int]) -> Int -> Int -> Char -> Float
applicatorFunc f a b s
  | s == 's'  = fromIntegral (sum (f a b)) -- Calculate sum
  | otherwise = fromIntegral (sum (f a b)) / fromIntegral (length (f a b)) -- Calculate average

main :: IO ()
main = do
    -- Call applicatorFunc with inpFunc, range, and 'a' as args
    let result = applicatorFunc inpFunc 1 5 'a'
    putStrLn ("Result = " ++ show result)
