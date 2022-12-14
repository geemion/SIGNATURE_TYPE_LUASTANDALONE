-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/55b38df8053a 

-- params : ...
-- function num : 0
if (this_sigattrlog[3]).matched then
  local l_0_0 = (string.lower)((this_sigattrlog[3]).utf8p1)
  if l_0_0 ~= nil then
    local l_0_1 = (string.match)(l_0_0, "\\docker\\windowsfilter\\[a-f0-9]*\\files\\windows\\")
    if l_0_1 ~= nil then
      if (string.match)(l_0_0, "\\system32\\amsi.dll$") ~= nil then
        return mp.CLEAN
      end
      if (string.match)(l_0_0, "\\syswow64\\amsi.dll$") ~= nil then
        return mp.CLEAN
      end
    end
    local l_0_2 = (string.lower)((string.sub)((mp.ContextualExpandEnvironmentVariables)(l_0_0), 2, 11))
    if l_0_2 ~= ":\\windows\\" and l_0_2 ~= "system%\\am" then
      (bm.add_related_file)(l_0_0)
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

