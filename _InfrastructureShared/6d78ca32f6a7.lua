-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6d78ca32f6a7 

-- params : ...
-- function num : 0
if peattributes.ismsil == false then
  return mp.CLEAN
end
local l_0_0 = (pe.get_netmetadata)()
if l_0_0 == nil then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
if (hstrlog[1]).matched == false then
  return mp.CLEAN
end
if (hstrlog[2]).matched == false then
  return mp.CLEAN
end
local l_0_1 = (pe.mmap_va)((hstrlog[1]).VA - 3, 4)
local l_0_2 = (pe.mmap_va)((hstrlog[2]).VA + 6, 4)
local l_0_3 = (mp.readu_u32)(l_0_1, 1)
local l_0_4 = (mp.readu_u32)(l_0_2, 1)
local l_0_5 = l_0_0.strheap_RVA + (pe.metadata_decode)(l_0_3, 2)
local l_0_6 = l_0_0.strheap_RVA + (pe.metadata_decode)(l_0_4, 2)
local l_0_7 = (pe.foffset_rva)(l_0_5)
local l_0_8 = (pe.foffset_rva)(l_0_6)
local l_0_9 = (mp.readfile)(l_0_7, 7)
local l_0_10 = (mp.readfile)(l_0_8, 6)
if (string.find)(l_0_9, "Replace", 1, true) == nil then
  return mp.CLEAN
end
if (string.find)(l_0_10, "Invoke", 1, true) == nil then
  return mp.CLEAN
end
DecodeBlob = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = (mp.bitand)(l_1_0, 255)
  local l_1_2 = (mp.bitand)(l_1_0, 65280)
  local l_1_3 = (mp.bitand)(l_1_0, 16711680)
  local l_1_4 = (mp.bitand)(l_1_0, 4278190080)
  if l_1_1 == 0 then
    return 0, 0
  else
    if (mp.bitand)(l_1_1, 128) == 0 then
      return l_1_1, 1
    else
      if (mp.bitand)(l_1_1, 192) == 128 then
        return (mp.bitor)((mp.shl8)((mp.bitand)(l_1_1, 63), 8), l_1_2), 2
      else
        if (mp.bitand)(l_1_1, 224) == 12 then
          local l_1_5 = (mp.shl8)((mp.bitand)(l_1_1, 31), 24)
          local l_1_6 = (mp.shl8)(l_1_2, 16)
          local l_1_7 = (mp.shl8)(l_1_3, 8)
          return (mp.bitor)((mp.bitor)((mp.bitor)(l_1_5, l_1_6), l_1_7), l_1_4), 4
        else
          do
            do return 0, 0 end
          end
        end
      end
    end
  end
end

Uni2Ascii = function(l_2_0)
  -- function num : 0_1
  if l_2_0 == nil or l_2_0 == "" or l_2_0 == "\000" then
    return ""
  else
    local l_2_1 = mp.utf16to8
    local l_2_2 = l_2_0
    do return l_2_1(l_2_2) end
    -- DECOMPILER ERROR at PC14: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  end
end

GetUserString = function(l_3_0)
  -- function num : 0_2 , upvalues : l_0_0
  local l_3_1 = (mp.readu_u32)(l_3_0, 1)
  local l_3_2 = l_0_0.usheap_RVA + (mp.bitand)(l_3_1, 16777215)
  local l_3_3 = (mp.readfile)((pe.foffset_rva)(l_3_2), 4)
  local l_3_4, l_3_5 = DecodeBlob((mp.readu_u32)(l_3_3, 1))
  if (l_3_5 ~= 1 and l_3_5 ~= 2 and l_3_5 ~= 4) or l_3_4 > 256 then
    return ""
  end
  local l_3_6 = (mp.readfile)((pe.foffset_rva)(l_3_2 + l_3_5), l_3_4)
  local l_3_7 = Uni2Ascii
  local l_3_8 = l_3_6
  do return l_3_7(l_3_8) end
  -- DECOMPILER ERROR at PC50: Confused about usage of register R8 for local variables in 'ReleaseLocals'

end

local l_0_11 = GetUserString((pe.mmap_va)((hstrlog[1]).VA - 18, 4))
local l_0_12 = GetUserString((pe.mmap_va)((hstrlog[1]).VA - 13, 4))
local l_0_13 = GetUserString((pe.mmap_va)((hstrlog[1]).VA - 8, 4))
local l_0_14 = (string.gsub)(l_0_11, l_0_12, l_0_13)
if (string.find)(l_0_14, "Initialize", 1, true) == nil then
  return mp.CLEAN
end
return mp.INFECTED

