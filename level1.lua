
-- level1.lua

--------------------------------------------------
local function new()
	local gamefunctions = require( "gamefunctions" )
	
	-- create a group to hold all level objects
	local levelGroup = display.newGroup()
	
	-- create the main player object
	local mainPlayer = gamefunctions.newPlayer( 50, 200 )
	
	-- create score at top-left of the screen
	local scoreCounter = gamefunctions.newScoreDisplay( 100, 100 )
	
	-- create the pause button at top-right of the screen
	local pauseButton = gamefunctions.newPauseButton( 200, 200 )
	
	-- insert all objects into level group
	levelGroup:insert( mainPlayer )
	levelGroup:insert( scoreCounter )
	levelGroup:insert( pauseButton )
	
	-- start the score at 100
	scoreCounter:change( 100 )
	print( "Current score: " .. scoreCounter.text )
	
	print("new level")
	return levelGroup
end

local newlevel = 
	{
		new = new
	}

return newlevel