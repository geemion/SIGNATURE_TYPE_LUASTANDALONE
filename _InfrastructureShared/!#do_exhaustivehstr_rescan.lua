-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#do_exhaustivehstr_rescan 

-- params : ...
-- function num : 0
do
  if peattributes.lastscn_executable and peattributes.epoutofimage and peattributes.no_ep and peattributes.entrypoint_in_header and pehdr.AddressOfEntryPoint == 0 and pehdr.NumberOfSections == 9 and (pesecs[pehdr.NumberOfSections]).Name == ".imports" then
    local l_0_0 = (mp.getfilesize)()
    if l_0_0 > 851968 and l_0_0 < 905216 then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

