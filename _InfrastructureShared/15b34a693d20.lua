-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15b34a693d20 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
if l_0_0 ~= nil then
  for l_0_5,l_0_6 in ipairs(l_0_0) do
    if l_0_6.image_path ~= nil then
      local l_0_7 = (string.lower)((MpCommon.PathToWin32Path)(l_0_6.image_path))
      if (sysio.IsFileExists)(l_0_7) then
        (bm.add_related_file)(l_0_7)
      end
    end
  end
end
do
  return mp.INFECTED
end

