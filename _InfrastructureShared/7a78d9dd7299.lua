-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7a78d9dd7299 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 7 then
  return mp.INFECTED
end
do
  -- DECOMPILER ERROR at PC59: Unhandled construct in 'MakeBoolean' P3

  if not (hstrlog[1]).matched or ((((hstrlog[5]).matched or (hstrlog[6]).matched or (hstrlog[7]).matched or (hstrlog[8]).matched) and not (hstrlog[2]).matched) or (hstrlog[9]).matched or (hstrlog[3]).matched) then
    local l_0_2 = 0 + 1 + 1
    if (hstrlog[11]).matched then
      local l_0_0, l_0_1 = 0 + 1 + 1 + 1
    end
  end
  if l_0_2 >= 2 then
    return mp.INFECTED
  else
    -- DECOMPILER ERROR at PC76: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC78: Confused about usage of register: R0 in 'UnsetPending'

    if (hstrlog[4]).matched and (l_0_0 == 3 or l_0_2 == 1) then
      return mp.INFECTED
    end
  end
  ;
  (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.AMO")
  return mp.CLEAN
end

