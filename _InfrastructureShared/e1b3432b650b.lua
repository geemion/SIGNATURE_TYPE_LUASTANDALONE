-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/e1b3432b650b 

-- params : ...
-- function num : 0
if (this_sigattrlog[10]).matched and (this_sigattrlog[10]).utf8p1 ~= nil then
  local l_0_0 = (string.match)((this_sigattrlog[10]).utf8p1, "\\([^\\]+)$")
  if l_0_0 then
    local l_0_1 = (string.lower)(l_0_0)
    if (string.find)(l_0_1, "winzipexpressforoffice.dll", 1, true) or (string.find)(l_0_1, "addin.dll", 1, true) or (string.find)(l_0_1, "add-in.dll", 1, true) then
      return mp.CLEAN
    end
  end
end
do
  local l_0_2 = nil
  for l_0_6 = 1, mp.SIGATTR_LOG_SZ do
    if (sigattr_tail[l_0_6]).matched and (sigattr_tail[l_0_6]).attribute == 16393 then
      l_0_2 = (sigattr_tail[l_0_6]).utf8p2
      if l_0_2 ~= nil then
        local l_0_7 = (mp.GetExecutablesFromCommandLine)(l_0_2)
        for l_0_11,l_0_12 in ipairs(l_0_7) do
          l_0_12 = (mp.ContextualExpandEnvironmentVariables)(l_0_12)
          if (sysio.IsFileExists)(l_0_12) then
            (bm.add_related_file)(l_0_12)
          end
        end
      end
    end
  end
  local l_0_13 = nil
  local l_0_14 = nil
  -- DECOMPILER ERROR at PC103: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC104: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC107: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC108: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC109: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC112: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC113: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC114: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC116: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC117: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC118: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC121: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC122: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC123: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC126: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC127: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC128: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC130: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC131: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC132: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC135: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC136: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC137: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC140: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC141: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC142: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC144: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC145: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC146: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC149: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC150: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC151: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC154: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC155: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC156: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC158: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC159: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC160: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC163: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC164: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC165: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC168: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC169: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC170: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC172: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC173: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC174: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC177: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC178: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC179: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC182: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC183: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC184: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC187: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC188: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC189: Confused about usage of register: R1 in 'UnsetPending'

  -- DECOMPILER ERROR at PC190: Unhandled construct in 'MakeBoolean' P3

  -- DECOMPILER ERROR at PC190: Unhandled construct in 'MakeBoolean' P3

  -- DECOMPILER ERROR at PC190: Unhandled construct in 'MakeBoolean' P3

  -- DECOMPILER ERROR at PC190: Unhandled construct in 'MakeBoolean' P3

  -- DECOMPILER ERROR at PC190: Unhandled construct in 'MakeBoolean' P3

  if (((((l_0_14 and l_0_14 ~= nil and not l_0_14) or l_0_14) and not l_0_14) or l_0_14) and not l_0_14) or nil ~= nil then
    l_0_14 = l_0_14(nil)
    local l_0_15 = nil
    l_0_15 = ipairs
    l_0_15 = l_0_15(l_0_14)
    for l_0_19,l_0_20 in l_0_15 do
      local l_0_20 = nil
      l_0_20 = sysio
      l_0_20 = l_0_20.IsFileExists
      l_0_20 = l_0_20(R10_PC198)
      if l_0_20 then
        l_0_20 = string
        l_0_20 = l_0_20.find
        R10_PC198 = l_0_13
        l_0_20 = l_0_20(R10_PC198, (string.sub)(R12_PC208, -4), R12_PC208, true)
        if l_0_20 then
          l_0_20 = bm
          l_0_20 = l_0_20.add_related_file
          R10_PC198 = 
          l_0_20(R10_PC198)
        end
      end
    end
  end
  do
    l_0_14 = mp
    l_0_14 = l_0_14.INFECTED
    do return l_0_14 end
    -- DECOMPILER ERROR at PC223: Confused about usage of register R4 for local variables in 'ReleaseLocals'

  end
end

