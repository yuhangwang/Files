module Files.Heads where

usage :: IO ()
usage = putStrLn "Usage: Files.exe <output> <number of lines> <input-1> <input-2> ..."

heads :: Int -> [String] -> IO [String]
heads n file_names = aux file_names []
    where
        aux :: [String] -> [String] -> IO [String]
        aux [] accum = return accum
        aux (name:names) accum = do
            content <- readFile name
            let items = take n (lines content)
            aux names (accum ++ items)