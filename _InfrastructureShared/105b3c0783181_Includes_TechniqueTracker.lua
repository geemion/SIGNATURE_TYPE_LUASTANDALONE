-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/105b3c0783181_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
;
(bm.request_SMS)(l_0_0.ppid, "H")
TrackCustomPersistContextNameByPPID("set", l_0_0.ppid, "MimikatzTrigger")
;
(bm.add_action)("SmsAsyncScanEvent", 1000)
return mp.INFECTED

