import Network.HTTP

main = do
  content <- get "www.yahoo.com"
  putStr content
    where
      get :: String -> IO String
      get url = simpleHTTP (getRequest ("http://" ++ url)) >>= getResponseBody
      getCode :: String -> IO ResponseCode
      getCode url = simpleHTTP req >>= getResponseCode
          where req = getRequest url
