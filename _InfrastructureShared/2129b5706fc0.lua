-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2129b5706fc0 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 20000 or l_0_0 > 400000 then
  return mp.CLEAN
end
local l_0_1 = tostring(headerpage)
local l_0_2, l_0_3, l_0_4 = (string.find)(l_0_1, "\'..?.?.?.?.?.?.?.?.?\'[,%+]")
if l_0_2 == nil then
  return mp.CLEAN
end
while 1 do
  if 0 < 250 then
    l_0_2 = (string.find)(l_0_1, "\'..?.?.?.?.?.?.?.?.?\'[,%+]", l_0_3)
  end
  if l_0_2 == nil then
    break
  end
  if #l_0_1 - 20 < l_0_3 then
    break
  end
  -- DECOMPILER ERROR at PC43: Confused about usage of register: R5 in 'UnsetPending'

  local l_0_5 = 0 + 1
end
do
  -- DECOMPILER ERROR at PC45: Confused about usage of register: R5 in 'UnsetPending'

  if l_0_5 > 200 then
    return mp.INFECTED
  end
  return mp.CLEAN
end

