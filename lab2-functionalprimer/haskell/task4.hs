ask :: String -> Int -> IO ()
ask prompt k =
  do
  putStrLn (prompt ++ replicate k '!')
  line <- getLine
  if line == ""
    then ask prompt (k+1)
    else
      if line == "quit"
        then putStrLn ("quitting...") >> return()
        else
          putStrLn ("you said: " ++ reverse line)

main :: IO ()
main =
  do
  let prompt = "please say something (or type 'quit' to exit)"
  ask prompt 0