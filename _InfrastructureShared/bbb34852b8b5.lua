-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/bbb34852b8b5 

-- params : ...
-- function num : 0
local l_0_0 = 0
local l_0_1 = ""
if (this_sigattrlog[1]).matched then
  l_0_1 = (string.lower)((this_sigattrlog[1]).utf8p2)
else
  if (this_sigattrlog[2]).matched then
    l_0_1 = (string.lower)((this_sigattrlog[2]).utf8p2)
  else
    if (this_sigattrlog[3]).matched then
      l_0_1 = (string.lower)((this_sigattrlog[3]).utf8p2)
    else
      if (this_sigattrlog[4]).matched then
        l_0_1 = (string.lower)((this_sigattrlog[4]).utf8p2)
      else
        if (this_sigattrlog[5]).matched then
          l_0_1 = (string.lower)((this_sigattrlog[5]).utf8p2)
        else
          return mp.CLEAN
        end
      end
    end
  end
end
if l_0_1 ~= "" then
  if (string.find)(l_0_1, " /mhp ", 1, true) then
    l_0_0 = l_0_0 + 1
  end
  if (string.find)(l_0_1, " /mds ", 1, true) then
    l_0_0 = l_0_0 + 1
  end
  if (string.find)(l_0_1, " /mnt ", 1, true) then
    l_0_0 = l_0_0 + 1
  end
  if (string.find)(l_0_1, " /aflt=", 1, true) then
    l_0_0 = l_0_0 + 1
  end
  if (string.find)(l_0_1, " /ext=", 1, true) then
    l_0_0 = l_0_0 + 1
  end
  if (string.find)(l_0_1, " /ext:", 1, true) then
    l_0_0 = l_0_0 + 1
  end
  if (string.find)(l_0_1, " /sfns ", 1, true) then
    l_0_0 = l_0_0 + 1
  end
  if (string.find)(l_0_1, " /rsf= ", 1, true) then
    l_0_0 = l_0_0 + 1
  end
  if (string.find)(l_0_1, " /lrun=", 1, true) then
    l_0_0 = l_0_0 + 1
  end
  if (string.find)(l_0_1, " /noadmin", 1, true) then
    l_0_0 = l_0_0 + 1
  end
  if (string.find)(l_0_1, " /flow=", 1, true) then
    l_0_0 = l_0_0 + 1
  end
end
if l_0_0 >= 5 then
  return mp.INFECTED
end
return mp.CLEAN

