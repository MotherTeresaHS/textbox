-- MainScene
-- Lesson 9a

-- Created by: Mr Coxall
-- Created on: Nov 2014
-- Created for: ICS2O
-- This is the second scene

MainScene = class()

-- global to this file
local moveBackButton
local numbers = {}
local textbox2 = nil

function MainScene:init()

    sprite("iOS Button Pack:Blue Level Menu Button")
    moveBackButton = Button("iOS Button Pack:Red Back Circle Button", vec2(WIDTH/2, HEIGHT/2))
    textbox2 =TextBox(vec2(WIDTH/2-200, HEIGHT/2+200),vec2(500,50),nil,"Your name here")
    
    print("Initially I have " .. #numbers .. " numbers.")
    
end

function MainScene:draw()
    -- Codea does not automatically call this method
    
    background(0, 30, 255, 255)
    moveBackButton:draw()
    textbox2:draw()
end

function MainScene:touched(touch)
    -- Codea does not automatically call this method
    moveBackButton:touched(touch) 
    textbox2:touched(touch)
        
    if(moveBackButton.selected == true) then
        table.insert(numbers, math.random(1, 10))        
        print(#numbers)
        
        local counter = 1
        while (counter <= #numbers) do
            print(numbers[counter])
            counter = counter + 1
        end
        print("-------")
    end
end

-- This function gets called once every frame
function MainScene:keyboard(key)
   
    textbox2:keyboard(key)
    --print(aTextBox:getText())
    if (textbox2:getLastInput() == "RETURN") then
        print (textbox2.text)
    end
end
