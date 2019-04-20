-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- -- hide the status bar
-- display.setStatusBar( display.HiddenStatusBar )

-- -- include the Corona "composer" module
-- local composer = require "composer"

-- -- load menu screen
-- composer.gotoScene( "menu" )


local composer = require( "composer" )
 
-- Hide status bar
display.setStatusBar( display.HiddenStatusBar )
 
-- Seed the random number generator
math.randomseed( os.time() )
 
-- Go to the menu screen
composer.gotoScene( "menu" )