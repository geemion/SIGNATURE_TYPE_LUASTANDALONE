-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2c615f6b6265 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security == false and l_0_0 > 950272 and l_0_0 < 978944 and (mp.get_mpattribute)("TEL:Ransom:Win32/Megacortex!sl001") then
  return mp.INFECTED
end
return mp.CLEAN

