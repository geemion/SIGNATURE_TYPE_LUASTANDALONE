-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3c78a6a37b29 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security == true and l_0_0 >= 77824 and l_0_0 <= 90112 and peattributes.isdll and peattributes.hasexports then
  return mp.INFECTED
end
return mp.CLEAN

