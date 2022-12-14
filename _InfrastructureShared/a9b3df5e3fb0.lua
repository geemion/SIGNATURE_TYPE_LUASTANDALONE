-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a9b3df5e3fb0 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = (this_sigattrlog[1]).utf8p2
    if (string.find)(l_0_0, ".bat", 1, true) or (string.find)(l_0_0, ".cmd", 1, true) then
      return mp.CLEAN
    end
    if ((bm.get_current_process_startup_info)()).integrity_level == MpCommon.SECURITY_MANDATORY_SYSTEM_RID then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

