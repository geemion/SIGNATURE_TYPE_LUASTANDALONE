-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3f8b327ed16ea_Includes_BMLuaLib 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[9]).matched and (this_sigattrlog[9]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_6, l_0_7 = nil, nil
  else
  end
  -- DECOMPILER ERROR at PC35: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC43: Confused about usage of register: R0 in 'UnsetPending'

  if ((this_sigattrlog[10]).matched and (this_sigattrlog[10]).utf8p2 ~= nil and not contains((this_sigattrlog[10]).utf8p2, "io.memorystream")) or contains((this_sigattrlog[10]).utf8p2, "%-[eE][ncodemaNCODEMA]*%s+", false) then
    local l_0_5, l_0_8 = , NormalizeCmdline("powershell", (this_sigattrlog[10]).utf8p2)
    if contains(l_0_8, "io.memorystream") then
      l_0_5 = l_0_8
    end
  else
    do
      do return mp.CLEAN end
      local l_0_9 = nil
      if contains(l_0_9, {"chocolatey", "Seek(0,0)"}) then
        return mp.CLEAN
      end
      local l_0_10 = nil
      -- DECOMPILER ERROR at PC79: Overwrote pending register: R3 in 'AssignReg'

      -- DECOMPILER ERROR at PC82: Confused about usage of register: R3 in 'UnsetPending'

      if l_0_9 ~= nil and nil ~= nil and #nil < 30 then
        return mp.CLEAN
      end
      if contains(l_0_9, "convert]::frombase64string(") and contains(l_0_9, "io.streamreader") and contains(l_0_9, "io.compression.gzipstream") and contains(l_0_9, "::decompress") and contains(l_0_9, "readtoend()") then
        return mp.INFECTED
      end
      return mp.CLEAN
    end
  end
end

