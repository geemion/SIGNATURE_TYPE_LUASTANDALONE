-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8078ef681417 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 2044000 and pehdr.NumberOfSections == 3 and (mp.get_mpattribute)("pea_headerchecksum0") and (mp.get_mpattribute)("pea_ismsil") and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

