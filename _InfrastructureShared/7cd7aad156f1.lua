-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7cd7aad156f1 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  if l_0_1:match("([^\\]+)$") ~= "rundll32.exe" then
    return mp.CLEAN
  end
  local l_0_2 = (string.lower)((mp.GetProcessCommandLine)(l_0_0.ppid))
  if l_0_2 == nil then
    return mp.CLEAN
  end
  if (string.find)(l_0_2, ".dll", 1, true) then
    return mp.CLEAN
  end
  if (string.find)(l_0_2, "#1", 1, true) or (string.find)(l_0_2, "#2", 1, true) then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

