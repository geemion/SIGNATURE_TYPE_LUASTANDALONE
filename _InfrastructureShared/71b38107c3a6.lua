-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/71b38107c3a6 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = (this_sigattrlog[1]).utf8p2
  if l_0_0 ~= nil then
    local l_0_1 = (mp.ContextualExpandEnvironmentVariables)(l_0_0)
    if (sysio.IsFileExists)(l_0_1) then
      (bm.add_related_file)(l_0_1)
    end
  end
end
do
  return mp.INFECTED
end

