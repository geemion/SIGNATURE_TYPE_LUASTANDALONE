-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/bbb3603f208e 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
do
  if l_0_0 and l_0_0.integrity_level < MpCommon.SECURITY_MANDATORY_HIGH_RID then
    local l_0_1 = (string.lower)((bm.get_imagepath)())
    if not (string.find)(l_0_1, "packages\\canonicalgrouplimited.ubuntu", 1, true) and not (string.find)(l_0_1, "packages\\thedebianproject.debiangnulinux", 1, true) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

