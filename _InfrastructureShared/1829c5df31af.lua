-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1829c5df31af 

-- params : ...
-- function num : 0
if (string.match)((string.lower)((mp.getfilename)()), "%.jpg$") or (string.match)((string.lower)((mp.getfilename)()), "%.jpeg$") or (string.match)((string.lower)((mp.getfilename)()), "%.png$") or (string.match)((string.lower)((mp.getfilename)()), "%.gif$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

