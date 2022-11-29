-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/10a788d1f2727 

-- params : ...
-- function num : 0
bytes_to_int = function(l_1_0, l_1_1, l_1_2, l_1_3)
  -- function num : 0_0
  if not l_1_3 then
    error("need four bytes to convert to int", 2)
  end
  return l_1_0 + l_1_1 * 256 + l_1_2 * 65536 + l_1_3 * 16777216
end

pointer2int = function(l_2_0, l_2_1)
  -- function num : 0_1
  local l_2_2 = (string.byte)(l_2_0, l_2_1)
  local l_2_3 = (string.byte)(l_2_0, l_2_1 + 1)
  local l_2_4 = (string.byte)(l_2_0, l_2_1 + 2)
  local l_2_5 = (string.byte)(l_2_0, l_2_1 + 3)
  return bytes_to_int(l_2_2, l_2_3, l_2_4, l_2_5)
end

decryptSub = function(l_3_0)
  -- function num : 0_2
  l_3_0 = (string.gsub)(l_3_0, "@", "")
  l_3_0 = (string.gsub)(l_3_0, "!", "")
  l_3_0 = (string.gsub)(l_3_0, "*", "")
  l_3_0 = (string.gsub)(l_3_0, "#", "")
  l_3_0 = (string.gsub)(l_3_0, "%^", "")
  l_3_0 = (string.gsub)(l_3_0, "~", "")
  l_3_0 = (string.gsub)(l_3_0, "+", "")
  l_3_0 = (string.gsub)(l_3_0, "%[", "")
  l_3_0 = (string.gsub)(l_3_0, "]", "")
  return l_3_0
end

;
(mp.readprotection)(false)
if (hstrlog[1]).matched then
  local l_0_0 = (hstrlog[1]).VA
  local l_0_1 = (pe.mmap_va)(l_0_0 + 33, 5)
  local l_0_2 = pointer2int(l_0_1, 1)
  local l_0_3 = (pe.mmap_va)(l_0_2, 20)
  if (string.match)(l_0_3, "Erase ") ~= nil and (string.match)(l_0_3, "%s") ~= nil then
    return mp.CLEAN
  end
  local l_0_4 = decryptSub(l_0_3)
  if (string.match)(l_0_4, "Erase ") ~= nil and (string.match)(l_0_4, "%s") ~= nil then
    return mp.INFECTED
  end
end
do
  if (hstrlog[2]).matched then
    local l_0_5 = (hstrlog[2]).VA
    local l_0_6 = (pe.mmap_va)(l_0_5 + 28, 5)
    local l_0_7 = pointer2int(l_0_6, 1)
    local l_0_8 = (pe.mmap_va)(l_0_7, 50)
    if (string.match)(l_0_8, "c:\\win") ~= nil and (string.match)(l_0_8, ".cpl") ~= nil then
      return mp.CLEAN
    end
    local l_0_9 = decryptSub(l_0_8)
    if (string.match)(l_0_9, "c:\\win") ~= nil and (string.match)(l_0_9, ".cpl") ~= nil then
      return mp.INFECTED
    end
  end
  do
    if (hstrlog[3]).matched then
      local l_0_10 = (hstrlog[3]).VA
      local l_0_11 = (pe.mmap_va)(l_0_10 + 7, 5)
      local l_0_12 = pointer2int(l_0_11, 1)
      local l_0_13 = (pe.mmap_va)(l_0_12, 50)
      if (string.match)(l_0_13, "ESET Client Frame") ~= nil then
        return mp.CLEAN
      end
      local l_0_14 = decryptSub(l_0_13)
      if (string.match)(l_0_14, "ESET Client Frame") ~= nil then
        return mp.INFECTED
      end
    end
    do
      if (hstrlog[4]).matched or (hstrlog[5]).matched or (hstrlog[6]).matched or (hstrlog[7]).matched then
        local l_0_15 = nil
        if (hstrlog[4]).matched then
          l_0_15 = (hstrlog[4]).VA
        end
        if (hstrlog[5]).matched then
          l_0_15 = (hstrlog[5]).VA
        end
        if (hstrlog[6]).matched then
          l_0_15 = (hstrlog[6]).VA
        end
        if (hstrlog[7]).matched then
          l_0_15 = (hstrlog[7]).VA
        end
        local l_0_16 = (pe.mmap_va)(l_0_15 + 7, 5)
        local l_0_17 = pointer2int(l_0_16, 1)
        local l_0_18 = (pe.mmap_va)(l_0_17, 50)
        if (string.match)(l_0_18, "ESET Client Frame") ~= nil then
          return mp.CLEAN
        end
        if (string.match)(l_0_18, "Avira AntiVir Personal") ~= nil then
          return mp.CLEAN
        end
        if (string.match)(l_0_18, "CAvastTrayIcon") ~= nil then
          return mp.CLEAN
        end
        local l_0_19 = decryptSub(l_0_18)
        if (string.match)(l_0_19, "ESET Client Frame") ~= nil then
          return mp.INFECTED
        end
        if (string.match)(l_0_19, "Avira AntiVir Personal") ~= nil then
          return mp.INFECTED
        end
        if (string.match)(l_0_19, "CAvastTrayIcon") ~= nil then
          return mp.INFECTED
        end
      end
      do
        return mp.CLEAN
      end
    end
  end
end

