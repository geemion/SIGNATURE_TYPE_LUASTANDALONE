-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/25b34bfa3c6c 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = l_0_0.command_line
do
  if (string.find)(l_0_1, "mshta", 1, true) ~= nil and (string.find)(l_0_1, ".hta", 1, true) == nil and (string.find)(l_0_1, "javascript", 1, true) ~= nil then
    local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_1)
    for l_0_6,l_0_7 in ipairs(l_0_2) do
      if (sysio.IsFileExists)(l_0_7) and not (mp.IsKnownFriendlyFile)(l_0_7, true, false) then
        (bm.add_related_file)(l_0_7)
      end
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

