local max_line_length = 21
lines = {}
local line
          payload = payload:gsub("+", " ")
          payload = payload:gsub("%%3A+", " ")
          payload = payload:gsub("%%5B", " ")
          payload = payload:gsub("%%5D", " ")
          payload = payload:gsub("%[", " ")
          payload = payload:gsub("%]", " ")
payload:gsub('(%s*)(%S+)', 
 function(spc, word) 
    if not line or #line + #spc + #word > max_line_length then
       table.insert(lines, line)
       line = word
    else
       line = line..spc..word
    end
 end
)
if line ~= nil then table.insert(lines, line) end
line = nil
