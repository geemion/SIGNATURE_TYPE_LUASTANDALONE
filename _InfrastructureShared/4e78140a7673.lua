-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4e78140a7673 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
local l_0_1, l_0_2 = l_0_0:match("(.+\\)([^\\]+)$")
if (string.lower)(l_0_2) == "mpkview.exe" then
  return mp.INFECTED
end
return mp.LOWFI

