-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/144b3f482dbc1_Includes_BMLuaLib 

-- params : ...
-- function num : 0
local l_0_2 = nil
do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = (this_sigattrlog[1]).utf8p2, nil
  else
  end
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_3 = (this_sigattrlog[2]).utf8p2
    local l_0_4, l_0_5 = , {"python.exe", "agentexecutor.exe"}
    for l_0_9,l_0_10 in ipairs((bm.get_process_relationships)()) do
      local l_0_6, l_0_7 = nil
      -- DECOMPILER ERROR at PC38: Confused about usage of register: R9 in 'UnsetPending'

      if R9_PC38.image_path ~= nil and (mp.bitand)(R9_PC38.reason_ex, 1) == 1 and contains(R9_PC38.image_path, l_0_5) then
        return mp.CLEAN
      end
    end
    if contains(l_0_3, "%-[eE][ncodemaNCODEMA]*%s+", false) then
      l_0_4 = NormalizeCmdline("powershell", l_0_3)
      if l_0_4 ~= nil then
        (bm.add_related_string)("proc_cmdline", l_0_4, bm.RelatedStringBMReport)
        return mp.INFECTED
      end
    end
    return mp.CLEAN
  end
end

