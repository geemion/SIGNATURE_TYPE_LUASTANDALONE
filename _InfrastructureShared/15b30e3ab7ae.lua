-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15b30e3ab7ae 

-- params : ...
-- function num : 0
local l_0_0 = (MpCommon.GetPersistContextNoPath)("MiKatzExe")
if l_0_0 ~= nil then
  for l_0_4,l_0_5 in ipairs(l_0_0) do
    if (sysio.IsFileExists)(l_0_5) then
      (bm.add_threat_file)(l_0_5)
    end
  end
  return mp.INFECTED
end
return mp.CLEAN

