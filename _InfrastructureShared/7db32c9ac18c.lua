-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7db32c9ac18c 

-- params : ...
-- function num : 0
local l_0_0 = ((bm.get_current_process_startup_info)())
local l_0_1, l_0_2 = nil, nil
if (this_sigattrlog[1]).matched then
  l_0_1 = (this_sigattrlog[1]).timestamp
end
if (this_sigattrlog[2]).matched then
  l_0_1 = (this_sigattrlog[2]).timestamp
end
if (this_sigattrlog[3]).matched then
  l_0_1 = (this_sigattrlog[3]).timestamp
end
if (this_sigattrlog[5]).matched then
  l_0_2 = (this_sigattrlog[5]).timestamp
end
if (this_sigattrlog[6]).matched then
  l_0_2 = (this_sigattrlog[6]).timestamp
end
if l_0_0.ppid == nil or (string.find)(l_0_0.ppid, "pid:4$", 1, false) ~= nil or (string.find)(l_0_0.ppid, "pid:4,", 1, true) ~= nil or l_0_2 < l_0_1 then
  return mp.CLEAN
end
return mp.INFECTED

