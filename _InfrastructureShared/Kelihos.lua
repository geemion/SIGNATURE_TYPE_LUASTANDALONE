-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/Kelihos 

-- params : ...
-- function num : 0
string_starts = function(l_1_0, l_1_1)
  -- function num : 0_0
  do return (string.sub)(l_1_0, 1, (string.len)(l_1_1)) == l_1_1 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

RemoveKelihosASEPS = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run")
  if l_2_1 then
    local l_2_2 = (sysio.RegEnumValues)(l_2_1)
    for l_2_6,l_2_7 in pairs(l_2_2) do
      local l_2_8 = (string.lower)((sysio.GetRegValueAsString)(l_2_1, l_2_7))
      if l_2_8 and l_2_8 == l_2_0 then
        local l_2_9 = {}
        -- DECOMPILER ERROR at PC38: No list found for R9 , SetList fails

        local l_2_10 = {}
        -- DECOMPILER ERROR at PC40: Overwrote pending register: R11 in 'AssignReg'

        -- DECOMPILER ERROR at PC41: Overwrote pending register: R12 in 'AssignReg'

        -- DECOMPILER ERROR at PC42: Overwrote pending register: R13 in 'AssignReg'

        -- DECOMPILER ERROR at PC43: Overwrote pending register: R14 in 'AssignReg'

        -- DECOMPILER ERROR at PC44: Overwrote pending register: R15 in 'AssignReg'

        -- DECOMPILER ERROR at PC45: Overwrote pending register: R16 in 'AssignReg'

        -- DECOMPILER ERROR at PC46: No list found for R10 , SetList fails

        -- DECOMPILER ERROR at PC47: Overwrote pending register: R11 in 'AssignReg'

        local l_2_11 = "video"
        -- DECOMPILER ERROR at PC48: Overwrote pending register: R12 in 'AssignReg'

        local l_2_12 = "tray"
        -- DECOMPILER ERROR at PC49: Overwrote pending register: R13 in 'AssignReg'

        -- DECOMPILER ERROR at PC50: Overwrote pending register: R14 in 'AssignReg'

        -- DECOMPILER ERROR at PC51: Overwrote pending register: R15 in 'AssignReg'

        for l_2_16 = "desktop", "icon", "folder" do
          -- DECOMPILER ERROR at PC53: Overwrote pending register: R17 in 'AssignReg'

          -- DECOMPILER ERROR at PC54: Overwrote pending register: R18 in 'AssignReg'

          -- DECOMPILER ERROR at PC56: Overwrote pending register: R19 in 'AssignReg'

          if ("connection")((("crashreport").lower)("time"), l_2_9[l_2_16]) then
            for l_2_20 = 1, l_2_12 do
              if string_starts((string.sub)((string.lower)(l_2_7), (string.len)(l_2_9[l_2_16]) + 1), l_2_10[l_2_20]) then
                (sysio.DeleteRegValue)(l_2_1, l_2_7)
                ;
                (sysio.DeleteFile)(l_2_8)
              end
            end
          end
        end
      end
    end
  end
  do
    -- WARNING: undefined locals caused missing assignments!
  end
end

if (Remediation.Threat).Active and (string.match)((Remediation.Threat).Name, "Win32/Kelihos") then
  for l_0_3,l_0_4 in pairs((Remediation.Threat).Resources) do
    if l_0_4.Schema == "process" then
      local l_0_5 = (sysio.GetFileNameFromProcess)(l_0_4.Path)
      if l_0_5 ~= nil then
        RemoveKelihosASEPS((string.lower)(l_0_5))
      end
    end
  end
end

