-- Super MES
-- Concept and Menu code etc. by Mr_Iron2
-- Wrapper by Gonow32
-- Original pastebin: G0d0nAPk

local w,h = term.getSize()
local current = term.current()
function term.current()
  return window.create(current,1,1,current.getSize())
end

-- Wrapper

local oldback = term.setBackgroundColour
function term.setBackgroundColor(colour)
  if colour == 1 then
    oldback(colour)
  else
    oldback(colours.black)
  end
end

term.setBackgroundColour = term.setBackgroundColor

local oldtext = term.setTextColour
function term.setTextColor(colour)
  if colour == 32768 then
    oldtext(colour)
  else
    oldtext(colours.white)
  end  
end

term.setTextColour = term.setTextColor

if fs.exists("/disk/game") then shell.run("/disk/game") 
if fs.exists("/disk/smesupdate") then shell.run("/disk/smesupdate")

function center(y,str)
  local w,h = term.getSize()
  local x = (w/2)-(#str/2)
  term.setCursorPos(x,y)
  print(str)
end

function centerSlow(y,txt)
  local w,h = term.getSize()
  local x = (w/2)-(#txt/2)
  term.setCursorPos(x,y)
  textutils.slowPrint(txt)
end

local function line(y)
  term.setCursorPos(1,y)
  term.clearLine()
end

local function wait()
  sleep(0.15) -- I've made this a function so if the timing is wrong, I can change
end

term.setBackgroundColour(colours.white)
term.clear()
sleep(0.25)
term.setBackgroundColour(colours.black)

-- Line animation from top to bottom of screen
for i = 1,h do
  line(i)
  wait()
end
sleep(0.5)

term.setTextColour(colours.white)
centerSlow(8,"Welcome to Super MES.")
sleep(1.5)
