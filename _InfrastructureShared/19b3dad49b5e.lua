-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/19b3dad49b5e 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = nil
  local l_0_1 = (mp.GetExecutablesFromCommandLine)(l_0_0)
  for l_0_5,l_0_6 in ipairs(l_0_1) do
    l_0_6 = (mp.ContextualExpandEnvironmentVariables)(l_0_6)
    if (sysio.IsFileExists)(l_0_6) and (string.sub)(l_0_6, -11) ~= "sdelete.exe" then
      (bm.add_related_file)(l_0_6)
      return mp.INFECTED
    end
  end
end
do
  l_0_1 = mp
  l_0_1 = l_0_1.INFECTED
  return l_0_1
end

