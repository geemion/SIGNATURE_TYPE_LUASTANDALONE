-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_MsilSigAttrLogAllFired 

-- params : ...
-- function num : 0
local l_0_0 = ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR]).RVA
local l_0_1 = ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_COM_DESCRIPTOR]).Size
if l_0_0 == 0 or l_0_1 == 0 then
  return mp.CLEAN
end
if pehdr.Machine ~= 332 and pehdr.Machine ~= 34404 then
  return mp.CLEAN
end
local l_0_2 = (mp.getfilesize)()
if l_0_2 < 3072 or l_0_2 >= 5242880 then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("SIGATTR:SIGATTR_LOG_ALL_FIRED")
;
(mp.set_mpattribute)("SIGATTR:SIGATTR_EXTENDED_LOG")
return mp.CLEAN

