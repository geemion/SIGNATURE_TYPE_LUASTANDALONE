-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/35b3a13a42f4 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
local l_0_2, l_0_3, l_0_4 = nil, nil, nil
for l_0_8,l_0_9 in ipairs(l_0_0) do
  l_0_2 = (string.lower)(l_0_9.image_path)
  l_0_3 = (string.find)(l_0_2, "/postgres", 1, true)
  if l_0_3 ~= nil and l_0_4 ~= nil then
    return mp.INFECTED
  end
  -- DECOMPILER ERROR at PC36: Overwrote pending register: R4 in 'AssignReg'

  l_0_3 = (string.find)(l_0_2, "/httpd", 1, true)
  if l_0_3 ~= nil and l_0_4 ~= nil then
    return mp.INFECTED
  end
  -- DECOMPILER ERROR at PC52: Overwrote pending register: R4 in 'AssignReg'

  l_0_3 = (string.find)(l_0_2, "/nginx", 1, true)
  if l_0_3 ~= nil and l_0_4 ~= nil then
    return mp.INFECTED
  end
  -- DECOMPILER ERROR at PC68: Overwrote pending register: R4 in 'AssignReg'

  l_0_3 = (string.find)(l_0_2, "/php-fpm7", 1, true)
  if l_0_3 ~= nil and l_0_4 ~= nil then
    return mp.INFECTED
  end
  -- DECOMPILER ERROR at PC84: Overwrote pending register: R4 in 'AssignReg'

  l_0_3 = (string.find)(l_0_2, "/mysqld", 1, true)
  if l_0_3 ~= nil and l_0_4 ~= nil then
    return mp.INFECTED
  end
  -- DECOMPILER ERROR at PC100: Overwrote pending register: R4 in 'AssignReg'

  l_0_3 = (string.find)(l_0_2, "/dnsmasq", 1, true)
  if l_0_3 ~= nil and l_0_4 ~= nil then
    return mp.INFECTED
  end
end
return mp.CLEAN

