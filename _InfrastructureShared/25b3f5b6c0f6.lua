-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/25b3f5b6c0f6 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if (string.find)(l_0_0, "\\program files", 1, true) then
  return mp.CLEAN
end
;
(mp.ReportLowfi)(l_0_0, 1160269835)
return mp.INFECTED

