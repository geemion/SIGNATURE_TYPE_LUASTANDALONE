-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6fb347ed3ea1 

-- params : ...
-- function num : 0
if (mp.IsHipsRuleEnabled)("d4f940ab-401b-4efc-aadc-ad5f3c50688a") == true then
  return mp.INFECTED
end
return mp.CLEAN

