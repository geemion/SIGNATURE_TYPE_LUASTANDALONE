-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5db3480292a4 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = nil
  if l_0_0 ~= nil then
    local l_0_1 = (mp.GetExecutablesFromCommandLine)(l_0_0)
    for l_0_5,l_0_6 in ipairs(l_0_1) do
      l_0_6 = (mp.ContextualExpandEnvironmentVariables)(l_0_6)
      if (sysio.IsFileExists)(l_0_6) then
        (mp.ReportLowfi)(l_0_6, 3384585025)
        ;
        (bm.add_related_file)(l_0_6)
      end
    end
  end
end
do
  l_0_1 = this_sigattrlog
  l_0_1 = l_0_1[2]
  l_0_1 = l_0_1.matched
  if l_0_1 then
    l_0_1 = this_sigattrlog
    l_0_1 = l_0_1[2]
    l_0_1 = l_0_1.utf8p2
    if l_0_1 ~= nil then
      l_0_1 = this_sigattrlog
      l_0_1 = l_0_1[2]
      l_0_0 = l_0_1.utf8p2
      local l_0_7 = nil
      if l_0_0 ~= nil then
        l_0_1 = mp
        l_0_1 = l_0_1.GetExecutablesFromCommandLine
        l_0_7 = l_0_0
        l_0_1 = l_0_1(l_0_7)
        local l_0_8 = nil
        l_0_7 = ipairs
        l_0_8 = l_0_1
        l_0_7 = l_0_7(l_0_8)
        for l_0_12,l_0_13 in l_0_7 do
          local l_0_12, l_0_13 = nil
          l_0_12 = mp
          l_0_12 = l_0_12.ContextualExpandEnvironmentVariables
          l_0_13 = l_0_11
          l_0_12 = l_0_12(l_0_13)
          l_0_11 = l_0_12
          l_0_12 = sysio
          l_0_12 = l_0_12.IsFileExists
          l_0_13 = l_0_11
          l_0_12 = l_0_12(l_0_13)
          if l_0_12 then
            l_0_12 = mp
            l_0_12 = l_0_12.ReportLowfi
            l_0_13 = l_0_11
            l_0_12(l_0_13, 1354103547)
            l_0_12 = bm
            l_0_12 = l_0_12.add_related_file
            l_0_13 = l_0_11
            l_0_12(l_0_13)
          end
        end
      end
    end
  end
  do
    l_0_1 = mp
    l_0_1 = l_0_1.INFECTED
    return l_0_1
  end
end

