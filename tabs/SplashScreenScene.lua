-- SplashScreenScene
-- Lesson 9a

-- Created by: Mr Coxall
-- Created on: Nov 2014
-- Created for: ICS2O
-- This is the first scene

SplashScreenScene = class()

-- global to this file
local moveForwardButton
local textbox1 = nil

function SplashScreenScene:init()

    --sprite("iOS Button Pack:Blue Forward Circle Button")
    moveForwardButton = Button("iOS Button Pack:Blue Forward Circle Button", vec2(WIDTH/2, HEIGHT/2))
    textbox1 =TextBox(vec2(WIDTH/2-200, HEIGHT/2+200),vec2(500,50),nil,"Your name here")
end

function SplashScreenScene:draw()
    -- Codea does not automatically call this method
    
    background(255, 0, 7, 255)
    
    moveForwardButton:draw()
    textbox1:draw()
end

function SplashScreenScene:touched(touch)
    -- Codea does not automatically call this method
    
    moveForwardButton:touched(touch)
    textbox1:touched(touch)
    
    if(moveForwardButton.selected == true) then
        Scene.Change("play")
    end
end

-- This function gets called once every frame
function keyboard(key)
   
    textbox1:keyboard(key)
    --print(aTextBox:getText())
    if (textbox1:getLastInput() == "RETURN") then
        print (textbox1.text)
    end
end
