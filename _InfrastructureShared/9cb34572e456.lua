-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9cb34572e456 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_0) do
  if l_0_6.image_path ~= nil and (mp.bitand)(l_0_6.reason_ex, 1) == 1 and ((string.find)((string.lower)(l_0_6.image_path), "data\\winscan.exe", 1, true) or (string.find)((string.lower)(l_0_6.image_path), "zalo.exe", 1, true) or (string.find)((string.lower)(l_0_6.image_path), "htkk.exe", 1, true)) then
    return mp.CLEAN
  end
end
return mp.INFECTED

