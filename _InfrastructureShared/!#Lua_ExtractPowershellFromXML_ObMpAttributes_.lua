-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_ExtractPowershellFromXML_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 200000 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
;
(mp.readprotection)(true)
l_0_1 = (string.gsub)(l_0_1, "%z", "")
local l_0_2 = l_0_1:gmatch("[%w+/]+=?=?")
for l_0_6 in l_0_2 do
  if #l_0_6 > 80 then
    if (mp.get_mpattribute)("BM_SCHEDULEDTASK_JOBFILE") then
      (mp.set_mpattribute)("/BM_SCHEDULEDTASK_JOBFILE")
    end
    ;
    (mp.vfo_add_buffer)((MpCommon.Base64Decode)(l_0_6), "[PwsCode]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  end
end
return mp.CLEAN

