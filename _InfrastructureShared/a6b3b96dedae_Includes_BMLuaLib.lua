-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a6b3b96dedae_Includes_BMLuaLib 

-- params : ...
-- function num : 0
reportSessionInformation()
sms_untrusted_process()
local l_0_0 = mp.CLEAN
if (this_sigattrlog[1]).matched then
  l_0_0 = reportGenericRansomware("gend_ransom_meta")
else
  if (this_sigattrlog[2]).matched then
    l_0_0 = reportGenericRansomware("genb_ransom_meta")
  end
end
if l_0_0 == mp.INFECTED then
  reportTimingData()
  return mp.INFECTED
end
return mp.CLEAN

