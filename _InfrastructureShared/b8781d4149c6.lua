-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/b8781d4149c6 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.isdll and peattributes.no_security and l_0_0 > 688128 and l_0_0 < 696320 then
  return mp.INFECTED
end
return mp.CLEAN

