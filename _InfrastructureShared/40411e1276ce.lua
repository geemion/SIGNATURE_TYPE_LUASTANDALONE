-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/40411e1276ce 

-- params : ...
-- function num : 0
if not peattributes.isdll then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
if (string.find)(l_0_0:lower(), "microsoft.net\\framework.-\\v[0-9.].+\\temporary asp.net files\\") then
  return mp.INFECTED
end
return mp.CLEAN

