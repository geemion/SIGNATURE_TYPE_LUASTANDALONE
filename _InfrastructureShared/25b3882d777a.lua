-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/25b3882d777a 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((string.sub)((bm.get_imagepath)(), -10))
if l_0_0 == "\\lsass.exe" then
  (mp.TriggerScanResource)("rootkittelemetry", "")
  return mp.INFECTED
end
return mp.CLEAN

