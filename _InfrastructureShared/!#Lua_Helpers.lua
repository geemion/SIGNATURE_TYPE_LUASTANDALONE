-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_Helpers 

-- params : ...
-- function num : 0
if (mp.readu_u32)(headerpage, 5) == 151587081 and (mp.getfilesize)() > 200000000 and (mp.crc32)(-1, headerpage, 1, 1024) == 2898363002 and (string.find)((mp.getfilename)(), "(RarSfx)", 1, true) then
  (mp.set_mpattribute)("Lua:AutoItRarSfxLargeScript")
  ;
  (mp.set_mpattribute)("//AutRarLrgScpt")
end
do
  if (mp.readu_u32)(headerpage, 5) == 168626701 then
    local l_0_0 = (mp.getfilesize)()
    if l_0_0 > 10000 and l_0_0 <= 60000 and (mp.crc32)(-1, headerpage, 1, 256) == 1133461959 and (string.find)((mp.getfilename)(), "(RarSfx)", 1, true) then
      (mp.set_mpattribute)("Lua:TrimWhiteSpaceAutoItRarSfxConfig")
    end
  end
  return mp.CLEAN
end

