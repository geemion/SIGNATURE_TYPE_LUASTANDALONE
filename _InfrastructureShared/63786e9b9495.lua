-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/63786e9b9495 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (mp.get_mpattribute)("NID:Trojan:MSIL/AgentTesla") then
  return mp.INFECTED
end
return mp.CLEAN

