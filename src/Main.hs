module Main where
import Files
import System.Environment
main :: IO ()
main = do
    (output:numLines:files) <- getArgs
    let n = read numLines 
    allLines <- heads n files
    writeFile output (unlines allLines)
    print (hello "Steven")
    putStrLn "hello world"


