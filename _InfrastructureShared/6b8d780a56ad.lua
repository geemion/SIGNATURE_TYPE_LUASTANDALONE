-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6b8d780a56ad 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if mp.HSTR_WEIGHT >= 4 and l_0_0 < 327680 then
  (mp.set_mpattribute)("PUA:Block:Bundlore.R")
  return mp.INFECTED
end
return mp.LOWFI

