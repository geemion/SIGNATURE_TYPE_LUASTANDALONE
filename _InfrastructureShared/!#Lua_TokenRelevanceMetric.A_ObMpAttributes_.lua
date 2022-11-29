-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_TokenRelevanceMetric.A_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILE_AGE)
if l_0_1 == nil or l_0_1 > 18000 then
  return mp.CLEAN
end
local l_0_2 = (mp.getfilesize)()
if l_0_2 < 256 or l_0_2 > 5242880 then
  return mp.CLEAN
end
local l_0_3 = (string.lower)((mp.getfilename)())
if l_0_3:find("cache", 1, true) or l_0_3:find("crypto", 1, true) or l_0_3:find("\\scans\\", 1, true) then
  return mp.CLEAN
end
local l_0_4 = (mp.GetCertificateInfo)(false)
for l_0_8,l_0_9 in pairs(l_0_4) do
  if l_0_9.Signers ~= nil then
    return mp.CLEAN
  end
end
;
(mp.set_mpattribute)("Lua:FileNameTokenRelevanceMetric.A")
return mp.CLEAN

