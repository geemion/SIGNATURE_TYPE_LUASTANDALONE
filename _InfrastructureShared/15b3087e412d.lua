-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15b3087e412d 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil and ((string.lower)((string.sub)(l_0_0, -15))):match("\\([^\\]+%.exe)$") == "explorer.exe" and (string.lower)((string.sub)((mp.ContextualExpandEnvironmentVariables)(l_0_0), 2, 11)) == ":\\windows\\" then
  return mp.CLEAN
end
return mp.INFECTED

