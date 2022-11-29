-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/41b321aa2ea6_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = false
local l_0_1, l_0_2, l_0_3, l_0_4 = nil, nil, nil, nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
  l_0_4 = (string.lower)((this_sigattrlog[1]).utf8p1)
  _ = (string.match)(l_0_4, "(.-)([^\\]-)$")
end
do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
    local l_0_5 = (string.lower)((this_sigattrlog[2]).utf8p1)
    _ = (string.match)(l_0_5, "(.-)([^\\]-)$")
  end
  if l_0_1 ~= nil and l_0_2 ~= nil and l_0_1 == l_0_2 then
    l_0_0 = true
  end
  do
    if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p1 ~= nil then
      local l_0_6 = (string.lower)((this_sigattrlog[3]).utf8p1)
      _ = (string.match)(l_0_6, "(.-)([^\\]-)$")
    end
    if l_0_1 ~= nil and l_0_3 ~= nil and l_0_1 == l_0_3 then
      l_0_0 = true
    end
    do
      if l_0_0 == true then
        local l_0_7, l_0_8 = (bm.get_process_relationships)()
        for l_0_12,l_0_13 in ipairs(l_0_8) do
          local l_0_14 = (mp.bitand)(l_0_13.reason_ex, bm.RELATIONSHIP_CREATED)
          if l_0_14 == bm.RELATIONSHIP_CREATED and l_0_4 == (string.lower)((MpCommon.PathToWin32Path)(l_0_13.image_path)) then
            TrackPidAndTechniqueBM(l_0_13.ppid, "T1055.002", "processinjection_target_t")
            ;
            (bm.request_SMS)(l_0_13.ppid, "M")
            ;
            (bm.add_action)("SmsAsyncScanEvent", 1000)
          end
          l_0_14 = (mp.bitand)(l_0_13.reason_ex, bm.RELATIONSHIP_INJECTION)
          if l_0_14 == bm.RELATIONSHIP_INJECTION then
            TrackPidAndTechniqueBM(l_0_13.ppid, "T1055.002", "processinjection_target_t")
            ;
            (bm.request_SMS)(l_0_13.ppid, "M")
            ;
            (bm.add_action)("SmsAsyncScanEvent", 1000)
          end
        end
        return mp.INFECTED
      end
      return mp.CLEAN
    end
  end
end

