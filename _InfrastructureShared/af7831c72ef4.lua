-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/af7831c72ef4 

-- params : ...
-- function num : 0
local l_0_0 = false
local l_0_1 = false
local l_0_2 = false
if (hstrlog[1]).hitcount >= 1 or (hstrlog[2]).hitcount >= 1 or (hstrlog[3]).hitcount >= 1 then
  l_0_0 = true
end
if (hstrlog[4]).hitcount >= 1 or (hstrlog[5]).hitcount >= 1 then
  l_0_1 = true
end
if (mp.get_mpattribute)("MpHasExpensiveLoop") then
  l_0_2 = true
end
if peattributes.dt_error_heur_exit_criteria then
  l_0_2 = true
end
if (mp.get_mpattribute)("MpHasValidProjPath") then
  l_0_2 = true
end
if l_0_0 and l_0_1 and l_0_2 then
  return mp.INFECTED
end
return mp.CLEAN

