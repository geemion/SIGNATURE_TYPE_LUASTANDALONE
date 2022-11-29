-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_Python_Empyre.A_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 10240 then
  return mp.CLEAN
end
local l_0_1 = nil
if l_0_0 <= mp.HEADERPAGE_SZ then
  l_0_1 = tostring(headerpage)
else
  ;
  (mp.readprotection)(false)
  l_0_1 = tostring((mp.readfile)(0, l_0_0))
end
local l_0_2 = (string.gmatch)(l_0_1, "%exec%(base64%.b64decode%(\'(.+)\'%)")
local l_0_3 = 0
for l_0_7 in l_0_2 do
  local l_0_8 = (MpCommon.Base64Decode)(l_0_7)
  if l_0_8 ~= nil and l_0_8 ~= "" then
    (mp.vfo_add_buffer)(l_0_8, (string.format)("[PythonBase64][%02X]", l_0_3), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    l_0_3 = l_0_3 + 1
  end
end
if l_0_3 > 0 then
  return mp.INFECTED
end
return mp.CLEAN

