-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/41b3d4301eab 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if (string.sub)(l_0_0, -12) == "iexplore.exe" and (this_sigattrlog[1]).matched and (this_sigattrlog[3]).matched then
  local l_0_1 = (string.lower)((this_sigattrlog[1]).utf8p1)
  local l_0_2 = (string.lower)((this_sigattrlog[3]).utf8p2)
  if l_0_1 ~= nil and l_0_2 ~= nil then
    if l_0_1:sub(-1) == "\000" then
      l_0_1 = l_0_1:gsub("^(.-).$", "%1")
    end
    if l_0_2:sub(-1) == "\000" then
      l_0_2 = l_0_2:gsub("^(.-).$", "%1")
    end
    if (string.find)(l_0_2, l_0_1, 1, true) then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

