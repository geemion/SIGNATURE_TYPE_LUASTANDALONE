-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#CheckForFileDropBySystemProc_ObMpAttributes_ 

-- params : ...
-- function num : 0
SetAttributeAndContext = function(l_1_0, l_1_1, l_1_2)
  -- function num : 0_0
  local l_1_3 = (MpCommon.QueryPersistContext)(l_1_0, l_1_1)
  if not l_1_3 then
    (MpCommon.AppendPersistContext)(l_1_0, l_1_1, 100)
  end
  ;
  (mp.set_mpattribute)(l_1_2)
end

local l_0_0 = mp.CLEAN
local l_0_1 = ((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)):lower()
if l_0_1:sub(1, 8) == "\\device\\" then
  l_0_1 = ((MpCommon.PathToWin32Path)(l_0_1)):lower()
end
local l_0_2 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_2 == nil then
  return mp.CLEAN
end
if l_0_2:sub(1, 8) == "\\device\\" then
  l_0_2 = (MpCommon.PathToWin32Path)(l_0_2)
end
l_0_2 = (string.lower)(l_0_2)
local l_0_3 = {}
l_0_3["c:\\windows\\system32"] = "sysdir"
l_0_3["c:\\windows"] = "windir"
l_0_3["c:\\windows\\temp"] = "wintemp"
l_0_3["c:\\users\\public\\desktop"] = "usrprofpub"
l_0_3["c:\\users\\public\\documents"] = "usrprofpub"
l_0_3["c:\\users\\default\\documents"] = "usrprofdef"
l_0_3["c:\\users\\default\\desktop"] = "usrprofdef"
l_0_3["c:\\perflogs"] = "perflog"
l_0_3["c:"] = "c_root"
l_0_3["d:"] = "d_root"
l_0_3["e:"] = "e_root"
l_0_3["f:"] = "f_root"
l_0_3["g:"] = "g_root"
l_0_3["h:"] = "h_root"
l_0_3["i:"] = "i_root"
l_0_3["j:"] = "j_root"
l_0_3["k:"] = "k_root"
l_0_3["l:"] = "l_root"
l_0_3["m:"] = "m_root"
l_0_3["n:"] = "n_root"
l_0_3["o:"] = "o_root"
l_0_3["p:"] = "p_root"
l_0_3["q:"] = "q_root"
l_0_3["r:"] = "r_root"
l_0_3["s:"] = "s_root"
l_0_3["t:"] = "t_root"
l_0_3["u:"] = "u_root"
l_0_3["v:"] = "v_root"
l_0_3["w:"] = "w_root"
l_0_3["x:"] = "x_root"
l_0_3["y:"] = "y_root"
l_0_3["z:"] = "z_root"
local l_0_4 = l_0_3[l_0_1]
local l_0_5 = "FileDropBySystemProc_"
local l_0_6 = "Lua:Context/FileDropBySystemProc!"
if (mp.get_mpattribute)("BM_MZ_FILE") then
  l_0_5 = "ExeFileDropBySystemProc_"
  l_0_6 = "Lua:Context/ExeFileDropBySystemProc!"
  ;
  (mp.set_mpattribute)("Lua:SuspExeFileDropBySystemProc")
  local l_0_7 = (MpCommon.QueryPersistContext)(l_0_2, "SuspExeFileDroppedBySystemProcess")
  if not l_0_7 then
    (MpCommon.AppendPersistContext)(l_0_2, "SuspExeFileDroppedBySystemProcess", 1000)
  end
else
  do
    ;
    (mp.set_mpattribute)("Lua:SuspFileDropBySystemProc")
    do
      local l_0_8 = (MpCommon.QueryPersistContext)(l_0_2, "SuspFileDroppedBySystemProcess")
      if not l_0_8 then
        (MpCommon.AppendPersistContext)(l_0_2, "SuspFileDroppedBySystemProcess", 1000)
      end
      if l_0_3[l_0_1] ~= nil then
        local l_0_9 = l_0_5 .. l_0_4
        local l_0_10 = l_0_6 .. l_0_4
        SetAttributeAndContext(l_0_2, l_0_9, l_0_10)
        if l_0_4:find("_root", 1, true) then
          (mp.set_mpattribute)("Lua:Context/FileDropBySystemAtRoot")
        end
        return mp.INFECTED
      end
      do
        if (mp.get_mpattribute)("Lua:CloudBlockLevelGT3") or (mp.get_mpattribute)("Lua:TT:DetectionThresholdMet") then
          local l_0_11 = false
          if l_0_1:match("c:\\users\\.-\\appdata\\.-\\microsoft\\windows\\start menu\\programs\\startup") then
            l_0_4 = "startup"
            local l_0_12 = l_0_5 .. l_0_4
            local l_0_13 = l_0_6 .. l_0_4
            SetAttributeAndContext(l_0_2, l_0_12, l_0_13)
            l_0_0 = mp.INFECTED
            l_0_11 = true
          end
          do
            if l_0_1:match("c:\\users\\.-\\desktop\\[^\\]*$") then
              l_0_4 = "desktop"
              local l_0_14 = l_0_5 .. l_0_4
              local l_0_15 = l_0_6 .. l_0_4
              SetAttributeAndContext(l_0_2, l_0_14, l_0_15)
              l_0_0 = mp.INFECTED
            end
            do
              if l_0_1:match("c:\\users\\.-\\appdata\\local\\temp") then
                l_0_4 = "usrtemp"
                local l_0_16 = l_0_5 .. l_0_4
                local l_0_17 = l_0_6 .. l_0_4
                SetAttributeAndContext(l_0_2, l_0_16, l_0_17)
                l_0_0 = mp.INFECTED
                l_0_11 = true
              end
              do
                if not l_0_11 and l_0_1:match("c:\\users\\.-\\appdata\\local\\") then
                  l_0_4 = "appdatalocal"
                  local l_0_18 = l_0_5 .. l_0_4
                  local l_0_19 = l_0_6 .. l_0_4
                  SetAttributeAndContext(l_0_2, l_0_18, l_0_19)
                  l_0_0 = mp.INFECTED
                end
                do
                  if l_0_1:match("c:\\windows\\system32\\config\\systemprofile") and not l_0_1:find("\\appdata\\", 1, true) then
                    l_0_4 = "sysprof"
                    local l_0_20 = l_0_5 .. l_0_4
                    local l_0_21 = l_0_6 .. l_0_4
                    SetAttributeAndContext(l_0_2, l_0_20, l_0_21)
                    l_0_0 = mp.INFECTED
                  end
                  do
                    if l_0_1:match("c:\\windows\\system32\\config\\systemprofile\\appdata") then
                      l_0_4 = "sysappdata"
                      local l_0_22 = l_0_5 .. l_0_4
                      local l_0_23 = l_0_6 .. l_0_4
                      SetAttributeAndContext(l_0_2, l_0_22, l_0_23)
                      l_0_0 = mp.INFECTED
                    end
                    do
                      if l_0_1:match("c:\\windows\\system32\\spool\\") then
                        l_0_4 = "spool"
                        local l_0_24 = l_0_5 .. l_0_4
                        local l_0_25 = l_0_6 .. l_0_4
                        SetAttributeAndContext(l_0_2, l_0_24, l_0_25)
                        l_0_0 = mp.INFECTED
                      end
                      do
                        if l_0_0 == mp.INFECTED then
                          return mp.INFECTED
                        end
                        return mp.CLEAN
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

