-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#TEL_ExclusionSet_ObMpAttributes_x 

-- params : ...
-- function num : 0
if (mp.GetResmgrBasePlugin)() ~= "Regkeyvalue" then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1 = "|"
local l_0_2 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Extensions")
do
  if l_0_2 then
    local l_0_3 = (sysio.RegEnumValues)(l_0_2)
    for l_0_7,l_0_8 in pairs(l_0_3) do
      l_0_1 = "|" .. l_0_8 .. l_0_1
    end
    if l_0_1 ~= "|" then
      (mp.set_mpattribute)((string.format)("MpInternal_researchdata=Extensions_Perf=%s", l_0_1))
    end
  end
  l_0_1 = "|"
  l_0_2 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Extensions")
  do
    if l_0_2 then
      local l_0_9 = (sysio.RegEnumValues)(l_0_2)
      for l_0_13,l_0_14 in pairs(l_0_9) do
        l_0_1 = "|" .. l_0_14 .. l_0_1
      end
      if l_0_1 ~= "|" then
        (mp.set_mpattribute)((string.format)("MpInternal_researchdata=Extensions_Policies=%s", l_0_1))
      end
    end
    local l_0_15 = "|"
    l_0_2 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
    do
      if l_0_2 then
        local l_0_16 = (sysio.RegEnumValues)(l_0_2)
        for l_0_20,l_0_21 in pairs(l_0_16) do
          if (string.match)(l_0_21, "^%w:\\$") then
            l_0_15 = "|" .. l_0_21 .. l_0_15
          end
        end
        if l_0_15 ~= "|" then
          (mp.set_mpattribute)((string.format)("MpInternal_researchdata=Paths_Perf=%s", l_0_15))
        end
      end
      l_0_15 = "|"
      l_0_2 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
      do
        if l_0_2 then
          local l_0_22 = (sysio.RegEnumValues)(l_0_2)
          for l_0_26,l_0_27 in pairs(l_0_22) do
            if (string.match)(l_0_27, "^%w:\\$") then
              l_0_15 = "|" .. l_0_27 .. l_0_15
            end
          end
          if l_0_15 ~= "|" then
            (mp.set_mpattribute)((string.format)("MpInternal_researchdata=Paths_Policies=%s", l_0_15))
          end
        end
        return mp.INFECTED
      end
    end
  end
end

