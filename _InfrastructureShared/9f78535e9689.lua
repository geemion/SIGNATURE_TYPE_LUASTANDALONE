-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9f78535e9689 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0[332] = "do_exhaustivehstr_rescan"
l_0_0[34404] = "do_exhaustivehstr_64bit_rescan"
local l_0_1 = {}
l_0_1[332] = 805306483
l_0_1[34404] = 805306484
if (mp.getfilesize)() > 1048576 then
  return mp.CLEAN
end
if not peattributes.isdll or not peattributes.hasexports then
  return mp.CLEAN
end
if l_0_0[pehdr.Machine] == nil or l_0_1[pehdr.Machine] == nil then
  return mp.CLEAN
end
if (hstrlog[3]).matched then
  return mp.CLEAN
end
local l_0_2 = (pe.get_versioninfo)()
if l_0_2 == nil or l_0_2.InternalName ~= "dnsapi" or l_0_2.CompanyName ~= "Microsoft Corporation" then
  return mp.CLEAN
end
if not (hstrlog[4]).matched or not (hstrlog[5]).matched or not (hstrlog[6]).matched then
  (mp.set_mpattribute)(l_0_0[pehdr.Machine])
  return mp.CLEAN
end
if (hstrlog[7]).matched then
  (mp.changedetectionname)(l_0_1[pehdr.Machine])
end
return mp.INFECTED

