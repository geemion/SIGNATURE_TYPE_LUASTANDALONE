-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1a7b35502db2c 

-- params : ...
-- function num : 0
local l_0_0 = tonumber((this_sigattrlog[8]).utf8p1)
if l_0_0 == nil or l_0_0 < 1441792 then
  return mp.CLEAN
end
local l_0_1, l_0_2 = (bm.get_process_relationships)()
if l_0_1 ~= nil then
  for l_0_6,l_0_7 in ipairs(l_0_1) do
    if l_0_7.image_path ~= nil then
      local l_0_8 = (string.lower)((MpCommon.PathToWin32Path)(l_0_7.image_path))
      if (string.find)(l_0_8, "gravostyle", 1, true) or (string.find)(l_0_8, "typeedit", 1, true) or (string.find)(l_0_8, "lasertype", 1, true) then
        return mp.CLEAN
      end
    end
  end
end
do
  local l_0_9 = (bm.get_current_process_startup_info)()
  ;
  (bm.request_SMS)(l_0_9.ppid, "l+")
  ;
  (bm.add_action)("SmsAsyncScanEvent", 1000)
  ;
  (bm.trigger_sig)("ReflectiveLoading", "Netloader")
  return mp.INFECTED
end

