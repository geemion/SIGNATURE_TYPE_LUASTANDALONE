-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/66b3d25764c0 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[4]).matched then
  local l_0_0 = nil
  if l_0_0 ~= nil and (string.len)(l_0_0) > 3 then
    local l_0_1 = false
    local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_0)
    if l_0_2 ~= nil then
      for l_0_6,l_0_7 in ipairs(l_0_2) do
        l_0_7 = (mp.ContextualExpandEnvironmentVariables)(l_0_7)
        ;
        (bm.add_related_file)(l_0_7)
        l_0_1 = true
      end
    end
    do
      do
        if l_0_1 then
          return mp.INFECTED
        end
        return mp.CLEAN
      end
    end
  end
end

