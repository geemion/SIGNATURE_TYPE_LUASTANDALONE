-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/43b3d9eaf9b4 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = l_0_0:lower()
if l_0_1:len() >= 21 and (l_0_1:sub(-13) == "\\mpcmdrun.exe" or l_0_1:sub(-14) == "\\mpsigstub.exe") then
  return mp.CLEAN
end
return mp.INFECTED

