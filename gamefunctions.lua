-- gamefunctions.lua

--------------------------------------------------

local function newPlayer( x, y )
	
	-- Create a display object
	local player = display.newImage( "player.png" )
	player.x = x or display.contentWidth * 0.5
	player.y = y or display.contentHeight * 0.5
	
	-- A method assigned to the player:
	function player:jump( event )
		if event.phase == "began" then
			
			--[[  code to make player jump goes here... ]]--
			
		end
	end
	
	-- return player object to wherever function was called:
	return player
end

--------------------------------------------------

local function newScoreDisplay( x, y )
	
	-- Create a text object to hold the score
	local scoreDisplay = display.newText( "1", 0, 0, "Helvetica-Bold", 28 )
	scoreDisplay:setTextColor( 1, 1, 1, 255 )
	scoreDisplay.x = x or 0
	scoreDisplay.y = y or 0
	
	-- start core at zero
	scoreDisplay.scoreCount = 0
	
	-- Function to change the score
	function scoreDisplay:change( newScore )
		self.text = newScore
	end
	
	-- return the score object to wherever function was called:
	return scoreDisplay
end

--------------------------------------------------

local function newPauseButton( x, y )
	
	-- Create the button object
	local pauseBtn = display.newImage( "pause.png" )
	pauseBtn.x = x or 0
	pauseBtn.y = y or 0
	
	-- touch event for pause button
	function pauseBtn:touch( event )
		if event.phase == "began" then
			
			--[[ game pause code goes here ]]--
			print("pause btn")


			
		end
	end
	pauseBtn:addEventListener( "touch", pauseBtn )

	
	-- return the pause button object to wherever function was called:
	return pauseBtn
end

local gamefunctions = {
		newPlayer=newPlayer, 
		newScoreDisplay=newScoreDisplay, 
		newPauseButton=newPauseButton
	}

return gamefunctions