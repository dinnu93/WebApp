{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty

main :: IO ()
main = scotty 3000 $ do
  get "/" $ html "<h1>Hello, World!</h1>"
  get "/:word" $ do
    word <- param "word"
    redirect $ mconcat ["https://google.com/search?q=",word]
  
