-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#EnumPoCExchgGoSource_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.enum_mpattributesubstring)("SCPT:PoCExchgGoSource")
if #l_0_0 >= 2 then
  (mp.set_mpattribute)("Lua:PoCExchgGoSourceFrags")
end
return mp.CLEAN

