-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7bb3160feae9_Includes_BMLuaLib 

-- params : ...
-- function num : 0
if not (this_sigattrlog[1]).matched and not (this_sigattrlog[2]).matched then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  else
  end
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_2 = (this_sigattrlog[2]).utf8p2
    local l_0_3 = {"OFFICE", "WABMIG"}
    if not QueryProcContext(l_0_3, {min = 1, max = 5}) then
      return mp.CLEAN
    end
    if l_0_2 ~= nil then
      local l_0_4 = nil
      for l_0_8,l_0_9 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_2)) do
        local l_0_5 = nil
        -- DECOMPILER ERROR at PC68: Confused about usage of register: R8 in 'UnsetPending'

        R8_PC68 = (mp.ContextualExpandEnvironmentVariables)(R8_PC68)
        if (sysio.IsFileExists)(R8_PC68) then
          (bm.add_related_file)(R8_PC68)
        end
      end
    end
    do
      return mp.INFECTED
    end
  end
end

