-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/35b3e0277db2 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil and l_0_0.ppid ~= nil then
  (bm.request_SMS)(l_0_0.ppid, "m")
  ;
  (bm.add_action)("SmsAsyncScanEvent", 1000)
end
return mp.INFECTED

