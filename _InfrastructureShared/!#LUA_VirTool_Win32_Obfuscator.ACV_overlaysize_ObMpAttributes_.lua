-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_VirTool_Win32_Obfuscator.ACV_overlaysize_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 208000 then
  return mp.CLEAN
end
local l_0_1 = (pesecs[pehdr.NumberOfSections]).PointerToRawData + (pesecs[pehdr.NumberOfSections]).SizeOfRawData
local l_0_2 = l_0_0 - l_0_1
if l_0_2 == 54133 or l_0_2 == 53941 or l_0_2 == 55632 or l_0_2 == 55640 then
  (pe.set_peattribute)("deep_analysis", true)
  ;
  (pe.set_peattribute)("disable_apicall_limit", true)
  ;
  (pe.reemulate)()
  return mp.INFECTED
end
return mp.CLEAN

