-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1bb3df96ab4b 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil then
  l_0_0 = (string.lower)((string.sub)(l_0_0, -29))
  if l_0_0 == "\\windows defender\\msmpeng.exe" then
    return mp.CLEAN
  end
end
return mp.INFECTED

