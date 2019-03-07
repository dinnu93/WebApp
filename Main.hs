{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty
import Network.Wai.Middleware.Static
import Model

main :: IO ()
main = scotty 3000 $ do
  middleware $ staticPolicy (noDots >-> addBase "static")
  get "/" $ do
    html "<h1>Hello, World!</h1>"
