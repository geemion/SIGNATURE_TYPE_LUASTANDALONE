-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#GenericAllowlist 

-- params : ...
-- function num : 0
if (mp.get_mpattributesubstring)("AllowList:") or (mp.get_mpattributesubstring)("Allowlist:") then
  return mp.INFECTED
end
return mp.CLEAN

