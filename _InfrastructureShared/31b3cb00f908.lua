-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/31b3cb00f908 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil then
  l_0_0 = (string.lower)(l_0_0)
  if (string.find)(l_0_0, "\\program files", 1, true) ~= nil and (string.find)(l_0_0, "\\malwarebytes", 1, true) ~= nil then
    return mp.CLEAN
  end
end
return mp.INFECTED

