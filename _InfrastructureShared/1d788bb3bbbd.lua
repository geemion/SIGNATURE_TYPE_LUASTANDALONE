-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1d788bb3bbbd 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched then
  (mp.readprotection)(false)
  local l_0_0 = (mp.readfile)(0, (mp.getfilesize)())
  local l_0_1 = (pe.foffset_va)((hstrlog[1]).VA)
  ;
  (mp.writeu_u32)(l_0_0, l_0_1 + 1, (hstrlog[1]).VA + 4)
  ;
  (mp.vfo_add_buffer)(l_0_0, "locale_patched", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
end
do
  return mp.INFECTED
end

