-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/41b3d42928e4 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil and (string.lower)((string.sub)(l_0_0, -11)) == "svchost.exe" then
  if (this_sigattrlog[1]).matched then
    (mp.ReportLowfi)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[1]).utf8p1), 3296241983)
  else
    if (this_sigattrlog[2]).matched then
      (mp.ReportLowfi)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p1), 669256468)
    else
      if (this_sigattrlog[3]).matched then
        (mp.ReportLowfi)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[3]).utf8p1), 3230147973)
      end
    end
  end
  return mp.INFECTED
end
return mp.CLEAN

