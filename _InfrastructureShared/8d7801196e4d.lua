-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8d7801196e4d 

-- params : ...
-- function num : 0
if not peattributes.hasexports and pehdr.SizeOfImage == 2351104 and pehdr.SizeOfCode == 57344 and pehdr.AddressOfEntryPoint == 14780 then
  return mp.INFECTED
end
return mp.CLEAN

