-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/55b3b34cb6ab 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[3]).matched then
  local l_0_0 = nil
  local l_0_1 = (string.lower)(l_0_0)
  if (string.find)(l_0_1, "\\udcofficeaddin2000.dll", 1, true) or (string.find)(l_0_1, "\\microsoft.bdd.utility.dll", 1, true) or (string.find)(l_0_1, "\\mscal.ocx", 1, true) then
    return mp.CLEAN
  end
  if l_0_0 ~= nil and (string.len)(l_0_0) > 3 then
    local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_0)
    if l_0_2 ~= nil then
      for l_0_6,l_0_7 in ipairs(l_0_2) do
        l_0_7 = (mp.ContextualExpandEnvironmentVariables)(l_0_7)
        ;
        (bm.add_related_file)(l_0_7)
      end
    end
    do
      do
        do return mp.INFECTED end
        return mp.CLEAN
      end
    end
  end
end

