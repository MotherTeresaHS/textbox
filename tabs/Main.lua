-- Main
-- Lesson 9a

-- Created by: Mr Coxall
-- Created on: Nov 2014
-- Created for: ICS2O
-- This is the main starting point

-- Use this function to perform your initial setup
function setup()
    
    supportedOrientations(LANDSCAPE_ANY)
    --displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    -- create the scenes
    Scene("splash", SplashScreenScene)
    Scene("play", MainScene)
    
    Scene.Change("splash")
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(0, 0, 0, 255)
    
    Scene.Draw()
end

function touched(touch)
    
    Scene.Touched(touch)
end

function keyboard(key)
    
    Scene.Keyboard(key)
end


