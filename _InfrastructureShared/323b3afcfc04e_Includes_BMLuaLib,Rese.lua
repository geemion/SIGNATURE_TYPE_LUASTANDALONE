-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/323b3afcfc04e_Includes_BMLuaLib,Rese 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
;
(bm.request_SMS)(l_0_0.ppid, "H")
;
(bm.add_action)("SmsAsyncScanEvent", 100)
TrackPidAndTechniqueBM(l_0_0.ppid, "T1055.002", "processinjection_target")
return mp.INFECTED

