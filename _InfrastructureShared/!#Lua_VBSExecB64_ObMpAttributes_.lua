-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_VBSExecB64_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 2000 or l_0_0 > 10000 then
  return mp.CLEAN
end
local l_0_1 = tostring(headerpage)
local l_0_2 = l_0_1:match("EXECUTE%(%a-%(\"([%w=]-)\"%)%)")
if l_0_2 == nil then
  return mp.CLEAN
end
;
(mp.vfo_add_buffer)(l_0_2, "[Base64]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

