-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#VBSXorHex_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 524288 then
  (mp.readprotection)(false)
  local l_0_0 = (mp.readfile)(0, (mp.getfilesize)())
  local l_0_1, l_0_2 = (string.match)(l_0_0, ",[%s]+%)(%d)(%d)%([Ww][Rr][Hh][Cc][%s]+%(")
  if l_0_2 == nil or l_0_1 == nil then
    return mp.CLEAN
  end
  local l_0_3 = tonumber(l_0_1) + 10 * tonumber(l_0_2)
  local l_0_4 = l_0_0:find("&\"[%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x]")
  if l_0_4 == nil then
    return mp.CLEAN
  end
  local l_0_5 = (l_0_0:match("[%x]+", l_0_4 + 2))
  local l_0_6 = nil
  l_0_4 = l_0_0:find("&\"[%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x]", l_0_4 + #l_0_5 + 3)
  while l_0_4 ~= nil do
    l_0_6 = l_0_0:match("[%x]+", l_0_4 + 2)
    l_0_5 = l_0_5 .. l_0_6
    l_0_4 = l_0_0:find("&\"[%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x][%x]", l_0_4 + #l_0_6 + 3)
  end
  local l_0_7 = (string.reverse)(l_0_5)
  local l_0_8 = {}
  local l_0_9, l_0_10 = nil, nil
  for l_0_14 = 0, 255 do
    l_0_9 = (string.format)("%02X", l_0_14)
    l_0_10 = (mp.bitxor)(l_0_14, l_0_3)
    l_0_8[l_0_9] = (string.format)("%c", l_0_10)
  end
  local l_0_15 = (string.gsub)(l_0_7, "(%x%x)", l_0_8)
  ;
  (mp.vfo_add_buffer)(l_0_15, "[Vbs]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
end
do
  return mp.CLEAN
end

