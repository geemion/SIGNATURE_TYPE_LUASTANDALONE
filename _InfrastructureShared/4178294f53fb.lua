-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4178294f53fb 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SIGATTR:ASEP") then
  return mp.INFECTED
end
return mp.CLEAN

