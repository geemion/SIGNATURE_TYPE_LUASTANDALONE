-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ffb3286a7072_Includes_BMLuaLib,LuaFuncHelper 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
;
(bm.request_SMS)(l_0_0.ppid, "M")
;
(bm.add_action)("SmsAsyncScanEvent", 100)
pcallEx("triggerMemoryScanOnProcessTree", triggerMemoryScanOnProcessTree, true, false, "SMS_H", 100, "Behavior:Win32/Ryuk.B!rsm")
pcallEx("triggerMemoryScanOnProcessTree", triggerMemoryScanOnProcessTree, true, false, "EMS", 100, "Behavior:Win32/Ryuk.B!rsm")
return mp.INFECTED

