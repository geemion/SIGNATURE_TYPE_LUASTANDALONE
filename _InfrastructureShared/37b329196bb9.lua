-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/37b329196bb9 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (string.lower)(l_0_0.command_line)
if (string.find)(l_0_1, ">", 1, true) or (string.find)(l_0_1, ".txt", 1, true) or (string.find)(l_0_1, ".log", 1, true) or (string.find)(l_0_1, "robocopy", 1, true) or (string.find)(l_0_1, "xcopy", 1, true) or (string.find)(l_0_1, "cmtrace", 1, true) or (string.find)(l_0_1, " /c del ", 1, true) or (string.find)(l_0_1, "\\program files", 1, true) or (string.find)(l_0_1, "adcrcpy", 1, true) or (string.find)(l_0_1, "smstsvc", 1, true) or (string.find)(l_0_1, "install", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

