-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/25b340107b89 

-- params : ...
-- function num : 0
if (string.lower)((string.sub)((bm.get_imagepath)(), -13)) == "\\wmiprvse.exe" then
  return mp.INFECTED
end
return mp.CLEAN

