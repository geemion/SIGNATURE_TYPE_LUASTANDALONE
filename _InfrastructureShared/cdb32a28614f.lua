-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/cdb32a28614f 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched or (this_sigattrlog[2]).matched then
    local l_0_0, l_0_1 = (bm.get_process_relationships)()
    for l_0_5,l_0_6 in ipairs(l_0_0) do
      if l_0_6.image_path ~= nil and (mp.bitand)(l_0_6.reason_ex, 1) == 1 and ((string.find)((string.lower)(l_0_6.image_path), "\\cmd.exe", 1, true) or (string.find)((string.lower)(l_0_6.image_path), "\\powershell.exe", 1, true) or (string.find)((string.lower)(l_0_6.image_path), "\\powershell_ise.exe", 1, true)) then
        return mp.CLEAN
      end
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

