-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_Java.SuspiciousCrypter_ObMpAttributes_ 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 128 or mp.FOOTERPAGE_SZ < 22 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 1) ~= 67324752 then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 16777216 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = mp.FOOTERPAGE_SZ - 21
if (mp.readu_u32)(footerpage, l_0_1) ~= 101010256 then
  local l_0_2 = 276
  local l_0_3 = (mp.readfile)(l_0_0 - l_0_2, l_0_2)
  if l_0_3 == nil then
    return mp.CLEAN
  end
  l_0_1 = (string.find)(l_0_3, "PK\005\006", 1, true)
  if l_0_1 == nil then
    return mp.CLEAN
  end
  l_0_1 = l_0_1 + mp.FOOTERPAGE_SZ - l_0_2
end
do
  local l_0_4 = (mp.readu_u16)(footerpage, l_0_1 + 10)
  local l_0_5 = (mp.readu_u32)(footerpage, l_0_1 + 12)
  local l_0_6 = (mp.readu_u32)(footerpage, l_0_1 + 16)
  local l_0_7 = (mp.readfile)(l_0_6, l_0_5)
  if l_0_7 == nil then
    return mp.CLEAN
  end
  local l_0_8 = 700
  local l_0_9 = 0
  local l_0_10 = 0
  local l_0_11 = 0
  local l_0_12 = 0
  local l_0_13 = 0
  local l_0_14 = 0
  local l_0_15 = false
  local l_0_16 = false
  local l_0_17 = false
  local l_0_18 = {}
  local l_0_19 = 0
  do
    local l_0_20 = 1
    if (mp.readu_u32)(l_0_7, l_0_20) ~= 33639248 then
      return mp.CLEAN
    end
    while 1 do
      if l_0_20 ~= nil then
        l_0_9 = l_0_9 + 1
        local l_0_21 = (mp.readu_u16)(l_0_7, l_0_20 + 28)
        local l_0_22 = (string.sub)(l_0_7, l_0_20 + 46, l_0_20 + 46 + l_0_21 - 1)
        local l_0_23 = (mp.readu_u32)(l_0_7, l_0_20 + 24)
        local l_0_24 = (mp.readu_u16)(l_0_7, l_0_20 + 12)
        local l_0_25 = (mp.readu_u16)(l_0_7, l_0_20 + 14)
        if l_0_21 >= 6 and l_0_22 ~= nil then
          local l_0_26 = (string.lower)((string.sub)(l_0_22, -6))
          if l_0_26 == ".class" then
            l_0_10 = l_0_10 + 1
          else
            if (string.find)(l_0_26, ".b64", 3, true) == 3 then
              l_0_11 = l_0_11 + 1
            else
              if ((string.find)(l_0_22, "com/", 1, true) == 1 or (string.find)(l_0_22, "net/", 1, true) == 1) and (string.find)(l_0_22, ".", 1, true) == nil and (string.sub)(l_0_22, -1) ~= "/" then
                l_0_12 = l_0_12 + 1
              end
            end
          end
          if l_0_19 <= 100 then
            l_0_26 = (string.match)(l_0_26, "%.(.*)")
            if l_0_26 ~= nil and l_0_26 ~= "class" and l_0_26 ~= "b64" and l_0_26 ~= "mf" and l_0_18[l_0_26] == nil then
              l_0_18[l_0_26] = true
              l_0_19 = l_0_19 + 1
            end
          end
          do
            do
              if l_0_17 == false then
                local l_0_27 = (string.find)(l_0_22, "[0-9]")
                if l_0_27 ~= nil and (string.sub)(l_0_22, l_0_27 - 1, l_0_27 - 1) ~= "$" then
                  l_0_17 = true
                end
              end
              if (string.find)(l_0_22, "META-INF/", 1, true) == 1 and l_0_22 ~= "META-INF/MANIFEST.MF" then
                l_0_14 = l_0_14 + 1
              end
              local l_0_28 = l_0_20 + 46 + l_0_21
              if l_0_22 == "META-INF/MANIFEST.MF" then
                local l_0_29 = (MpCommon.DosTimeToFileTime)(l_0_24, l_0_25)
                local l_0_30 = (MpCommon.TimeTToFileTime)((MpCommon.GetCurrentTimeT)())
                if l_0_30 - l_0_29 > 15 * 864000000000 then
                  do
                    do
                      l_0_15 = l_0_29 == 0 or l_0_29 >= l_0_30
                      if (mp.readu_u32)(l_0_7, l_0_28) == 51966 then
                        l_0_28 = l_0_28 + 4
                      end
                      if l_0_23 <= 150 then
                        l_0_16 = true
                      end
                      l_0_13 = l_0_13 + 1
                      l_0_20 = nil
                      if l_0_28 < l_0_5 and (mp.readu_u32)(l_0_7, l_0_28) == 33639248 then
                        l_0_20 = l_0_28
                      end
                      if l_0_8 < l_0_9 then
                        break
                      end
                      -- DECOMPILER ERROR at PC315: LeaveBlock: unexpected jumping out DO_STMT

                      -- DECOMPILER ERROR at PC315: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC315: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC315: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC315: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC315: LeaveBlock: unexpected jumping out DO_STMT

                      -- DECOMPILER ERROR at PC315: LeaveBlock: unexpected jumping out DO_STMT

                      -- DECOMPILER ERROR at PC315: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC315: LeaveBlock: unexpected jumping out IF_STMT

                      -- DECOMPILER ERROR at PC315: LeaveBlock: unexpected jumping out IF_THEN_STMT

                      -- DECOMPILER ERROR at PC315: LeaveBlock: unexpected jumping out IF_STMT

                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if l_0_16 then
      (mp.set_mpattribute)("//Lua:JarManifestSizeLT150")
    end
    if l_0_17 == false then
      (mp.set_mpattribute)("//Lua:JarNoNumberInFilenames")
    end
    if l_0_12 >= 1 then
      (mp.set_mpattribute)("//Lua:JarNoExtFiles")
      if l_0_12 >= 10 then
        (mp.set_mpattribute)("//Lua:JarNoExtFilesGE10")
      end
      if l_0_12 >= 25 then
        (mp.set_mpattribute)("//Lua:JarNoExtFilesGE25")
      end
      if l_0_12 >= 50 then
        (mp.set_mpattribute)("//Lua:JarNoExtFilesGE50")
      end
      if l_0_12 >= 100 then
        (mp.set_mpattribute)("//Lua:JarNoExtFilesGE100")
      end
    end
    if l_0_19 >= 10 then
      (mp.set_mpattribute)("//Lua:JarDifferentExtsInsideGE10")
      if l_0_19 >= 25 then
        (mp.set_mpattribute)("//Lua:JarDifferentExtsInsideGE25")
      end
      if l_0_19 >= 50 then
        (mp.set_mpattribute)("//Lua:JarDifferentExtsInsideGE50")
      end
      if l_0_19 >= 100 then
        (mp.set_mpattribute)("//Lua:JarDifferentExtsInsideGE100")
      end
    end
    if l_0_10 == 0 then
      (mp.set_mpattribute)("//Lua:JarNoClassFilesInside")
    elseif l_0_10 == 1 then
      (mp.set_mpattribute)("//Lua:JarSingleClassFileInside")
    elseif l_0_10 >= 5 then
      (mp.set_mpattribute)("//Lua:JarClassFilesInsideGE5")
      if l_0_10 >= 10 then
        (mp.set_mpattribute)("//Lua:JarClassFilesInsideGE10")
      end
      if l_0_10 >= 25 then
        (mp.set_mpattribute)("//Lua:JarClassFilesInsideGE25")
      end
      if l_0_10 >= 50 then
        (mp.set_mpattribute)("//Lua:JarClassFilesInsideGE50")
      end
      if l_0_10 >= 100 then
        (mp.set_mpattribute)("//Lua:JarClassFilesInsideGE100")
      end
    end
    if l_0_14 >= 1 then
      (mp.set_mpattribute)("//Lua:JarMoreFilesInMetaInf")
    end
    if l_0_4 - (l_0_13) - (l_0_10) == l_0_19 and l_0_19 >= 10 then
      (mp.set_mpattribute)("//Lua:JarDifferentExtsAllFiles")
    end
    if l_0_10 >= 15 and l_0_12 >= 50 and l_0_13 == 1 and l_0_11 == 0 and l_0_15 then
      (mp.set_mpattribute)("//Lua:Java.SuspiciousCrypter.Loose.A")
    end
    if l_0_12 >= 400 and l_0_13 == 1 and l_0_11 == 0 and l_0_15 then
      (mp.set_mpattribute)("//Lua:Java.SuspiciousCrypter.Loose.B")
    end
    if l_0_10 >= 10 and l_0_12 >= 10 and l_0_13 == 1 and l_0_15 and l_0_16 and l_0_17 == false then
      (mp.set_mpattribute)("//Lua:Java.SuspiciousCrypter.Loose.C")
    end
    if l_0_10 >= 25 and l_0_10 <= 55 and l_0_12 >= 100 and l_0_12 <= 150 and l_0_13 == 1 and l_0_15 and l_0_0 >= 450000 and l_0_0 <= 700000 then
      (mp.set_mpattribute)("//Lua:Java.SuspiciousCrypter.JRAT")
    elseif l_0_10 >= 200 and l_0_10 <= 250 and l_0_12 >= 300 and l_0_12 <= 500 and l_0_13 == 1 and l_0_15 and l_0_0 >= 580000 and l_0_0 <= 720000 then
      (mp.set_mpattribute)("//Lua:Java.SuspiciousCrypter.JRAT.B")
    elseif l_0_10 >= 200 and l_0_10 <= 250 and l_0_12 >= 40 and l_0_12 <= 100 and l_0_13 == 1 and l_0_15 and l_0_0 >= 100000 and l_0_0 <= 170000 then
      (mp.set_mpattribute)("//Lua:Java.SuspiciousCrypter.JRAT.C")
    elseif ((l_0_12 >= 450 and l_0_12 <= 550) or l_0_12 < 180 or l_0_12 <= 250) and l_0_13 == 1 and l_0_15 and l_0_0 >= 580000 and l_0_0 <= 720000 then
      (mp.set_mpattribute)("//Lua:Java.SuspiciousCrypter.JRAT.D")
    else
      -- DECOMPILER ERROR at PC595: Unhandled construct in 'MakeBoolean' P3

      if ((l_0_12 >= 100 and l_0_12 <= 200) or l_0_12 < 400 or l_0_12 < 1500 or l_0_12 <= 2000) and l_0_13 == 1 and l_0_15 then
        (mp.set_mpattribute)("//Lua:Java.SuspiciousCrypter.JRAT.E")
      elseif l_0_10 >= 15 and l_0_10 <= 50 and l_0_12 >= 120 and l_0_12 <= 280 and l_0_13 == 1 and l_0_15 then
        (mp.set_mpattribute)("//Lua:Java.SuspiciousCrypter.JRAT.F")
      elseif l_0_10 == 0 and l_0_12 == 700 and l_0_13 == 1 and l_0_15 then
        (mp.set_mpattribute)("//Lua:Java.SuspiciousCrypter.JRAT.G")
      elseif l_0_10 >= 40 and l_0_10 <= 70 and l_0_12 >= 300 and l_0_12 <= 500 and l_0_13 == 1 and l_0_15 then
        (mp.set_mpattribute)("//Lua:Java.SuspiciousCrypter.JRAT.H")
      elseif l_0_10 == 1 and l_0_12 == 0 and l_0_13 == 1 and l_0_15 and l_0_19 >= 90 and l_0_0 >= 100000 and l_0_0 <= 700000 then
        (mp.set_mpattribute)("//Lua:Java.SuspiciousCrypter.JRAT.J")
      elseif l_0_10 >= 20 and l_0_10 <= 55 and l_0_12 >= 150 and l_0_12 <= 250 and l_0_13 == 1 and l_0_15 and l_0_0 >= 200000 and l_0_0 <= 320000 then
        (mp.set_mpattribute)("//Lua:Java.SuspiciousCrypter.QRAT")
      elseif l_0_10 >= 26 and l_0_10 <= 40 and l_0_12 >= 9 and l_0_12 <= 18 and l_0_13 == 1 and l_0_15 and l_0_0 >= 48000 and l_0_0 <= 62000 and l_0_11 >= 15 and l_0_11 <= 17 then
        (mp.set_mpattribute)("//Lua:Java.SuspiciousCrypter.QRAT.B")
      end
    end
    do return mp.CLEAN end
    -- DECOMPILER ERROR: 43 unprocessed JMP targets
  end
end

