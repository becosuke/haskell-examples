import Graphics.UI.GLUT

main = do
    initialDisplayMode $= [RGBAMode, DoubleBuffered]
    initialWindowSize $= Size 320 240

    initialize "" [] -- ←呼ばないと実行時エラー

    createWindow "GLTest"

    displayCallback $= display

    mainLoop

display = do
    clearColor $= Color4 0.0 0.0 0.3 0.0
    clear [ColorBuffer]
    swapBuffers
