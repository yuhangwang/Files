module Heads (heads) where

heads :: Int -> [String] -> IO [String]
heads n file_names = aux file_names []
    where
        aux :: [String] -> [String] -> IO [String]
        aux [] accum = return accum
        aux (name:names) accum = do
            content <- readFile name
            let items = take n (lines content)
            aux names (accum ++ items)