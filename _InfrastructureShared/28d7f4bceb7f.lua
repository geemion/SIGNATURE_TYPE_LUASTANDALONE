-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/28d7f4bceb7f 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0["winword.exe"] = true
l_0_0["excel.exe"] = true
l_0_0["powerpnt.exe"] = true
l_0_0["outlook.exe"] = true
local l_0_1 = (mp.GetParentProcInfo)()
if l_0_1 ~= nil then
  local l_0_2 = l_0_1.image_path
  local l_0_3 = (string.lower)((string.match)(l_0_2, "\\([^\\]+)$"))
  if l_0_3 == "" or l_0_3 == nil then
    return mp.CLEAN
  end
  if l_0_0[l_0_3] == true then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

