-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#PUA_MLVI_Blocked_Auslogics_Includes_checkProductN 

-- params : ...
-- function num : 0
if checkProductName("Components Package") then
  return mp.CLEAN
end
if checkProductName("Shared Library") then
  return mp.CLEAN
end
if checkProductName("Package Library") then
  return mp.CLEAN
end
if checkProductName("Google Analytics Sender") then
  return mp.CLEAN
end
if checkProductName("Google Analytics Package") then
  return mp.CLEAN
end
if checkProductName("Disk Defrag Portable") then
  return mp.CLEAN
end
return mp.INFECTED

