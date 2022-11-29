-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/69b3480d4055 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[3]).matched then
    local l_0_0, l_0_1, l_0_2 = nil
  else
  end
  if not (this_sigattrlog[4]).matched or not (string.lower)((this_sigattrlog[4]).utf8p2) then
    return mp.CLEAN
  end
  local l_0_3 = nil
  if (bm.get_current_process_startup_info)() and ((bm.get_current_process_startup_info)()).integrity_level < MpCommon.SECURITY_MANDATORY_HIGH_RID then
    if (string.find)(l_0_3, "\\opencover.profiler.dll", 1, true) or (string.find)(l_0_3, "mscoree.dll", 1, true) then
      return mp.CLEAN
    end
    if (sysio.IsFileExists)(l_0_3) and not (mp.IsKnownFriendlyFile)(l_0_3, false, false) then
      (bm.add_related_file)(l_0_3)
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

