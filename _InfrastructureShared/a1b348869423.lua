-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a1b348869423 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 and ((string.find)(l_0_0, "\\mssenses.exe", 1, true) or (string.find)(l_0_0, "\\mssense.exe", 1, true)) then
  return mp.CLEAN
end
return mp.INFECTED

