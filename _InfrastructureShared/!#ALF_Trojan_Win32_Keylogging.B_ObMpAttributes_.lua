-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ALF_Trojan_Win32_Keylogging.B_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
do
  if l_0_0 ~= nil then
    local l_0_1 = (string.lower)(l_0_0)
    if (string.find)(l_0_1, "\\program files", 1, true) ~= nil or (string.find)(l_0_1, ":\\windows\\", 1, true) ~= nil or (string.find)(l_0_1, "\\delayedappstart", 1, true) ~= nil or (string.find)(l_0_1, "\\audio", 1, true) ~= nil or (string.find)(l_0_1, "\\modules\\os\\", 1, true) ~= nil or (string.find)(l_0_1, "\\sysvol\\", 1, true) ~= nil then
      return mp.CLEAN
    end
  end
  return mp.INFECTED
end

