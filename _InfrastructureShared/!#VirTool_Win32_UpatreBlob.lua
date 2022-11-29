-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#VirTool_Win32_UpatreBlob 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = (mp.getfilesize)()
  if l_0_1 > 700416 or l_0_1 < 196608 then
    return mp.CLEAN
  end
  if not (mp.get_mpattribute)("BM_UNKNOWN_FILE") then
    if (mp.readu_u16)(headerpage, 1) == 23117 then
      return mp.CLEAN
    end
    if (mp.readu_u16)(headerpage, 1) == 53200 then
      return mp.CLEAN
    end
    if (mp.readu_u16)(headerpage, 1) == 19280 then
      return mp.CLEAN
    end
    if (mp.readu_u32)(headerpage, 1) == 1836597052 then
      return mp.CLEAN
    end
    if (mp.readu_u32)(headerpage, 1) == 1179866185 then
      return mp.CLEAN
    end
  end
  local l_0_2 = (string.lower)((string.sub)((mp.getfilename)(), -3))
  if l_0_2 == "log" then
    return mp.CLEAN
  end
  if mp.FOOTERPAGE_SZ < 256 or #footerpage < 256 then
    return mp.CLEAN
  end
  if (mp.readu_u32)(footerpage, mp.FOOTERPAGE_SZ - 3) == 0 then
    return mp.CLEAN
  end
  if (mp.readu_u32)(footerpage, mp.FOOTERPAGE_SZ - 7) == 0 then
    return mp.CLEAN
  end
  local l_0_3 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  if (string.sub)(l_0_3, -5) == "\\temp" then
    local l_0_4 = tostring(footerpage)
    if l_0_4:find("\000\000\000\000\000\000\000\000", 1, true) or l_0_4:find("PADDING", 1, true) then
      return mp.CLEAN
    end
    local l_0_5 = 1768444961
    local l_0_6 = 1881145459
    local l_0_7 = 1919381362
    local l_0_8 = 536898913
    local l_0_9 = ""
    local l_0_10 = ""
    local l_0_11 = 512
    for l_0_15 = l_0_11, 1536 do
      l_0_9 = (mp.bitxor)((mp.readu_u32)(headerpage, l_0_15), l_0_5)
      l_0_10 = (mp.bitxor)((mp.readu_u32)(headerpage, l_0_15 + 4), l_0_6)
      for l_0_19 = 1, 6 do
        if l_0_9 + l_0_19 == l_0_10 and l_0_9 + l_0_19 * 2 == (mp.bitxor)((mp.readu_u32)(headerpage, l_0_15 + 8), l_0_7) and l_0_9 + l_0_19 * 3 == (mp.bitxor)((mp.readu_u32)(headerpage, l_0_15 + 12), l_0_8) then
          return mp.INFECTED
        end
        if l_0_9 - l_0_19 == l_0_10 and l_0_9 - l_0_19 * 2 == (mp.bitxor)((mp.readu_u32)(headerpage, l_0_15 + 8), l_0_7) and l_0_9 - l_0_19 * 3 == (mp.bitxor)((mp.readu_u32)(headerpage, l_0_15 + 12), l_0_8) then
          return mp.INFECTED
        end
        if (mp.rol32)(l_0_9, l_0_19) == l_0_10 and (mp.rol32)(l_0_9, l_0_19 * 2) == (mp.bitxor)((mp.readu_u32)(headerpage, l_0_15 + 8), l_0_7) and (mp.rol32)(l_0_9, l_0_19 * 3) == (mp.bitxor)((mp.readu_u32)(headerpage, l_0_15 + 12), l_0_8) then
          return mp.INFECTED
        end
      end
    end
  end
end
do
  return mp.CLEAN
end

