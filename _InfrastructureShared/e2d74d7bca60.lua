-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/e2d74d7bca60 

-- params : ...
-- function num : 0
local l_0_0 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Features")
do
  if l_0_0 then
    local l_0_1 = (sysio.GetRegValueAsDword)(l_0_0, "TamperProtection")
    if l_0_1 and (mp.bitand)(l_0_1, 1) == 1 then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

