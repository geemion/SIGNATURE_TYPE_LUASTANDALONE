-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ATTR_MACE_ShouldDetonate 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("MpContentDetected") and ((mp.get_mpattributesubstring)("Detection:Ransom:Win32/Conti") or (mp.get_mpattributesubstring)("Detection:Ransom:Win64/Conti") or (mp.get_mpattributesubstring)("Detection:Ransom:Win32/BlackMatter") or (mp.get_mpattributesubstring)("Detection:Ransom:Win64/BlackMatter")) then
  return mp.INFECTED
end
return mp.CLEAN

