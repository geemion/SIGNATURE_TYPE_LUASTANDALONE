-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_Montiera 

-- params : ...
-- function num : 0
if peattributes.isdll == true and peattributes.hasexports == true and pehdr.Machine == 332 and ((pehdr.DataDirectory)[1]).Size ~= 0 then
  local l_0_0 = ((pehdr.DataDirectory)[1]).RVA
  ;
  (mp.readprotection)(false)
  local l_0_1 = (mp.readfile)((pe.foffset_rva)(l_0_0), 36)
  if (mp.readu_u32)(l_0_1, 21) < 3 and (mp.readu_u32)(l_0_1, 21) ~= 0 and (mp.readu_u32)(l_0_1, 25) < 3 and (mp.readu_u32)(l_0_1, 25) ~= 0 then
    local l_0_2 = (mp.readu_u32)(l_0_1, 33)
    l_0_1 = (pe.mmap_rva)(l_0_2, 4)
    local l_0_3 = (mp.readu_u32)(l_0_1, 1)
    local l_0_4 = (pe.mmap_rva)(l_0_3, 13)
    if l_0_4:sub(8) == "initXTN\000" or l_0_4 == "crashHandler\000" then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

