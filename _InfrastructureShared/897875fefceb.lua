-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/897875fefceb 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
end
if (mp.get_mpattribute)("Tracur_decryption") then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:Tracur_Antiemu")
return mp.LOWFI

