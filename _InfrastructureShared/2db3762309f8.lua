-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2db3762309f8 

-- params : ...
-- function num : 0
if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[2]).utf8p2)
  local l_0_1, l_0_2 = (bm.get_process_relationships)()
  for l_0_6,l_0_7 in ipairs(l_0_1) do
    local l_0_8 = (string.lower)((MpCommon.PathToWin32Path)(l_0_7.image_path))
    local l_0_9 = (MpCommon.QueryPersistContext)(l_0_8, "PsExecServiceStandardName")
    if l_0_9 then
      (mp.ReportLowfi)(l_0_0, 2705434468)
      ;
      (bm.add_related_file)(l_0_0)
      return mp.INFECTED
    end
    local l_0_10 = (MpCommon.QueryPersistContext)(l_0_8, "PsExecServiceNonStandardName")
    if l_0_10 then
      (mp.ReportLowfi)(l_0_0, 2705434468)
      ;
      (bm.add_related_file)(l_0_0)
      return mp.INFECTED
    end
  end
end
do
  l_0_0 = mp
  l_0_0 = l_0_0.CLEAN
  return l_0_0
end

