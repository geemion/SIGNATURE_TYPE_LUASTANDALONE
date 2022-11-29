-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/342b33a68af3c_Includes_BMLuaLib,TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (bm.get_SMS_level)(l_0_0.ppid)
local l_0_2 = mp.SMS_SCAN_LOW_ADV - mp.SMS_SCAN_LOW
if l_0_2 == (mp.bitand)(l_0_1, l_0_2) then
  return mp.CLEAN
end
local l_0_3 = (bm.get_imagepath)()
if not l_0_3 then
  return mp.CLEAN
end
l_0_3 = (string.lower)((MpCommon.PathToWin32Path)(l_0_3))
if not (sysio.IsFileExists)(l_0_3) then
  return mp.CLEAN
end
local l_0_4 = (sysio.GetFileLastWriteTime)(l_0_3)
if not ((sysio.GetLastResult)()).Success or l_0_4 == 0 then
  return mp.CLEAN
end
l_0_4 = l_0_4 / 10000000 - 11644473600
local l_0_5 = (MpCommon.GetCurrentTimeT)()
if l_0_5 <= l_0_4 then
  return mp.CLEAN
end
local l_0_6 = (l_0_5 - (l_0_4)) / 60
if not l_0_6 <= 20160 then
  return mp.CLEAN
end
do
  local l_0_10, l_0_11 = , (bm.get_process_relationships)()
  if R9_PC86 ~= nil then
    for l_0_15,l_0_16 in ipairs(R11_PC90) do
      local l_0_12 = nil
      -- DECOMPILER ERROR at PC92: Confused about usage of register: R14 in 'UnsetPending'

      if R14_PC92.image_path ~= nil and R14_PC92.reason == bm.RELATIONSHIP_INJECTION then
        (bm.request_SMS)(R14_PC92.ppid, "l+")
        ;
        (bm.add_action)("SmsAsyncScanEvent", 1000)
        TrackPidAndTechniqueBM("BM", "T1055.002", "portable_executable_injection")
        return mp.INFECTED
      end
    end
  end
  do return mp.CLEAN end
  -- DECOMPILER ERROR: 4 unprocessed JMP targets
end

