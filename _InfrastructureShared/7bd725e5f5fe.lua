-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7bd725e5f5fe 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((string.sub)(l_0_0.image_path, -12))
if l_0_1 ~= "wmiprvse.exe" or l_0_1 == "explorer.exe" or (string.sub)(l_0_1, -7) == "mmc.exe" then
  return mp.CLEAN
end
if (versioning.GetLocaleIdentifier)() == 1049 then
  return mp.LOWFI
end
return mp.CLEAN

