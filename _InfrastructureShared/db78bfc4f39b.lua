-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/db78bfc4f39b 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 3 and (pesecs[2]).SizeOfRawData > 1376256 then
  (pe.set_image_filename)("\"Lollipop.exe\" INSTALL:|14693||86400|1|0007||")
  ;
  (pe.reemulate)()
  return mp.INFECTED
end
if pehdr.NumberOfSections == 4 and (pesecs[1]).SizeOfRawData > 2359296 and (mp.get_mpattribute)("attrmatch_codepatch_EIP_00000004_EB") then
  return mp.INFECTED
end
return mp.CLEAN

