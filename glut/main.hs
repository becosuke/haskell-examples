import Graphics.UI.GLUT

main = do
  initialize "" []
  createWindow "GLTest"

  displayCallback $= displayScene
  mainLoop

displayScene = do
  flush
