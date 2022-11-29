-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ffb3ad941346 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if MpCommon.SECURITY_MANDATORY_MEDIUM_RID < l_0_0.integrity_level then
  return mp.CLEAN
end
local l_0_1 = (bm.get_imagepath)()
if l_0_1 ~= nil then
  l_0_1 = (string.lower)(l_0_1)
  if (l_0_1.find)(l_0_1, "\\windows\\system32\\", 1, true) ~= nil then
    return mp.CLEAN
  end
end
do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_2 = (this_sigattrlog[1]).utf8p2
    if (sysio.IsFileExists)(l_0_2) then
      (bm.add_related_file)(l_0_2)
    end
  end
  return mp.INFECTED
end

