-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c3785d3e16dc 

-- params : ...
-- function num : 0
local l_0_0 = 56
local l_0_1 = (hstrlog[3]).VA
local l_0_2 = (hstrlog[4]).VA
l_0_1 = (mp.bitor)(pehdr.ImageBase, l_0_1)
l_0_2 = (mp.bitor)(pehdr.ImageBase, l_0_2)
if not (pe.contains_va)(1, l_0_1) or not (pe.contains_va)(1, l_0_2) then
  return mp.SUSPICIOUS
end
local l_0_3 = "HSTR:VirTool:Win32/DelfInject.W.info_" .. (string.format)("%.08x", l_0_1) .. "_" .. (string.format)("%.08x", l_0_2 + l_0_0)
;
(mp.set_mpattribute)(l_0_3)
return mp.SUSPICIOUS

