function draw()
     disp:setFont(u8g.font_6x10)
     if (lines[1] ~= nil) then disp:drawStr( 0, 10, lines[1]) end
     if (lines[2] ~= nil) then disp:drawStr( 0, 20, lines[2]) end
     if (lines[3] ~= nil) then disp:drawStr( 0, 30, lines[3]) end
     if (lines[4] ~= nil) then disp:drawStr( 0, 40, lines[4]) end
     if (lines[5] ~= nil) then disp:drawStr( 0, 50, lines[5]) end
     if (lines[6] ~= nil) then disp:drawStr( 0, 60, lines[6]) end
     if (lines[7] ~= nil) then disp:drawStr( 0, 70, lines[7]) end
end
function drawloop()
     disp:firstPage()
     repeat
          draw()
          tmr.wdclr()
     until (disp:nextPage() == false)
end

lines = {}
payload=nil
srv=net.createServer(net.UDP) 
srv:on("receive",function(conn,payloadX)  
     print(payloadX.."lkhglh")
     payload = payloadX
     dofile("split.lua")       
     payload = nil
     drawloop()
end)
srv:listen(31401)

