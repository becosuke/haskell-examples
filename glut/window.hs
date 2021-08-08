import Graphics.UI.GLUT
 
display :: IO ()
display = do
  --clearColor $= Color4 1.0 1.0 1.0 1.0
  --clear [ColorBuffer]
  flush
 
main :: IO ()
main = do
  (program_name, args) <- getArgsAndInitialize
  createWindow program_name
  displayCallback $= display
  mainLoop
