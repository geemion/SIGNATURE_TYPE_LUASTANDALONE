-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/PUAAdvertising_Win32_2345Browser/1052655121_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
local l_0_1 = (mp.getfilesize)()
if l_0_0 == nil or l_0_1 < 8388608 then
  return mp.CLEAN
end
local l_0_2 = l_0_0.FileDescription
local l_0_3 = l_0_0.InternalName
if l_0_2 and l_0_3 == nil then
  l_0_2 = (string.lower)(l_0_2)
  if (string.find)(l_0_2, "2345加�\128�浏览器 v", 1, true) then
    (mp.set_mpattribute)("Lua:Browser2345")
    return mp.INFECTED
  end
end
return mp.CLEAN

