-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15b34296ad03 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil then
  l_0_0 = (string.lower)(l_0_0)
  if (string.sub)(l_0_0, -11) == "wscript.exe" or (string.sub)(l_0_0, -11) == "cscript.exe" then
    return mp.INFECTED
  end
end
return mp.CLEAN

