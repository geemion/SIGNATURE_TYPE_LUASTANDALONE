-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_InterestingRARFlags 

-- params : ...
-- function num : 0
local l_0_0 = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = headerpage[l_1_0 + 2]
  -- DECOMPILER ERROR at PC30: Unhandled construct in 'MakeBoolean' P1

  if l_1_1 == 122 and l_1_0 + 48 < mp.HEADERPAGE_SZ and headerpage[l_1_0 + 26] == 3 and (mp.readu_u16)(headerpage, l_1_0 + 32) == 19779 and headerpage[l_1_0 + 34] == 84 then
    (mp.set_mpattribute)("Lua:RarHasCommentBlock")
  end
  if l_1_1 == 116 and l_1_0 + 128 < mp.HEADERPAGE_SZ then
    if headerpage[l_1_0 + 25] == 48 then
      (mp.set_mpattribute)("Lua:RarHasStoredFile")
    end
    local l_1_2 = (mp.readu_u16)(headerpage, l_1_0 + 3)
    if (mp.bitand)(l_1_2, 4) == 4 then
      (mp.set_mpattribute)("Lua:RarHasEncryptedFile")
    end
    local l_1_3 = (mp.readu_u16)(headerpage, l_1_0 + 26)
    if l_1_3 > 4 and l_1_3 < 96 then
      do
        if (mp.bitand)(l_1_2, 256) == 256 then
          local l_1_4, l_1_9, l_1_10 = 32 + 8
        end
        for l_1_8 = 0, l_1_3 do
          local l_1_5 = nil
          -- DECOMPILER ERROR at PC92: Confused about usage of register: R8 in 'UnsetPending'

          if (mp.bitor)((mp.readu_u32)(headerpage, l_1_0 + l_1_5 + R8_PC92), 538976288) == 1936941424 and (mp.bitor)((mp.readu_u32)(headerpage, l_1_0 + l_1_5 + R8_PC92 + 4), 538976288) == 1685221239 then
            (mp.set_mpattribute)("Lua:RarHasFileNameWithPassword")
            break
          end
        end
        do
          local l_1_11 = nil
          local l_1_12 = {[1952539182] = "", [1684890414] = "", [1836016430] = "", [1819304750] = "", [1702389038] = "", [1718186030] = "", [1919120174] = "", [1935832622] = "", [1802398766] = "", [1718843182] = "", [1700951598] = "", [1702062638] = "", [1635018798] = "", [1936338432] = "", [1819042862] = "", [2019782446] = "", [829648942] = "", [1918986798] = "", [1668511534] = "", [1752397614] = ""}
          do
            local l_1_13 = nil
            if l_1_12[l_1_13] or l_1_12[(mp.bitand)((mp.bitor)((mp.readu_u32)(headerpage, l_1_0 + l_1_11 + l_1_3 - 4), 538976288), 4294967040)] then
              (mp.set_mpattribute)("Lua:RarHasFileWithExeExtension")
              if (mp.bitand)(l_1_2, 4) == 4 then
                (mp.set_mpattribute)("Lua:RarHasEncryptedFileWithExeExtension")
              end
              if headerpage[l_1_0 + 25] == 48 then
                (mp.set_mpattribute)("Lua:RarHasStoredFileWithExeExtension")
              end
            end
            return l_1_0 + (mp.readu_u16)(headerpage, l_1_0 + 5) + (mp.readu_u32)(headerpage, l_1_0 + 7)
          end
        end
      end
    end
  end
end

if mp.HEADERPAGE_SZ < 1024 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 1) ~= 561144146 then
  return mp.CLEAN
end
if (mp.readu_u16)(headerpage, 5) ~= 1818 then
  return mp.CLEAN
end
if headerpage[14] == 4 then
  (mp.set_mpattribute)("Lua:RarHasEncryptionHeader")
end
do
  local l_0_1 = 21
  while 0 < 3 and l_0_1 + 4 < mp.HEADERPAGE_SZ do
    l_0_1 = l_0_0(l_0_1)
    -- DECOMPILER ERROR at PC49: Confused about usage of register: R2 in 'UnsetPending'

  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

