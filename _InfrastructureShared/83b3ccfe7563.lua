-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/83b3ccfe7563 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
do
  if l_0_0 then
    local l_0_1 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("%WINDIR%\\"))
    if l_0_0:find(l_0_1, 1, true) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

