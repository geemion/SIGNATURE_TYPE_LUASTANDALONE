-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d0b34080fb9e 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1 = (bm.get_process_relationships)()
    for l_0_5,l_0_6 in ipairs(l_0_0) do
      if l_0_6.image_path ~= nil then
        local l_0_7 = (mp.bitand)(l_0_6.reason_ex, 1)
        local l_0_8 = (string.lower)(l_0_6.image_path)
        if l_0_7 == 1 and ((string.find)(l_0_8, "\\mshta.exe", 1, true) or (string.find)(l_0_8, "\\bitsadmin.exe", 1, true) or (string.find)(l_0_8, "\\msbuild.exe", 1, true) or (string.find)(l_0_8, "\\ieexec.exe", 1, true) or (string.find)(l_0_8, "\\wmic.exe", 1, true) or (string.find)(l_0_8, "\\wscript.exe", 1, true) or (string.find)(l_0_8, "\\cscript.exe", 1, true) or (string.find)(l_0_8, "\\splunkd.exe", 1, true) or (string.find)(l_0_8, "\\runscripthelper.exe", 1, true) or not (mp.IsKnownFriendlyFile)((MpCommon.PathToWin32Path)(l_0_6.image_path), true, false)) and not (string.find)(l_0_8, "\\explorer.exe", 1, true) then
          return mp.INFECTED
        end
      end
    end
    return mp.CLEAN
  end
  return mp.CLEAN
end

