-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ALF_Lua_IOAVVtSample 

-- params : ...
-- function num : 0
local l_0_0 = (mp.IOAVGetDownloadUrl)()
if l_0_0 == nil then
  return mp.CLEAN
end
if (string.len)(l_0_0) < 51 then
  return mp.CLEAN
end
if (l_0_0:sub(1, 51)):lower() ~= "https://vtsamples.commondatastorage.googleapis.com/" then
  return mp.CLEAN
end
return mp.INFECTED

