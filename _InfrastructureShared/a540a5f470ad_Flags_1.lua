-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a540a5f470ad_Flags_1 

-- params : ...
-- function num : 0
if (mp.get_detectionstatus)() == mp.INFECTED or (mp.get_mpattribute)("SIGATTR:COPY_BELOW_WIN") then
  return mp.INFECTED
end
return mp.CLEAN

