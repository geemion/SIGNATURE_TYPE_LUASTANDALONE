-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4c8d2e531a4a 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 7 then
  (mp.set_mpattribute)("PUA:Block:RefogKeylogger")
  return mp.INFECTED
end
return mp.LOWFI

