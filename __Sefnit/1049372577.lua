-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/__Sefnit/1049372577 

-- params : ...
-- function num : 0
if pehdr.MajorImageVersion ~= 0 then
  return mp.CLEAN
end
if pehdr.MinorImageVersion ~= 0 then
  return mp.CLEAN
end
if peattributes.headerchecksum0 ~= true then
  return mp.CLEAN
end
if peattributes.no_resources ~= true then
  return mp.CLEAN
end
if peattributes.no_loadconfig ~= true then
  return mp.CLEAN
end
if peattributes.isdll ~= true then
  return mp.CLEAN
end
if peattributes.hasexports ~= true then
  return mp.CLEAN
end
if peattributes.no_relocs ~= false then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[6]).Size >= 4096 then
  return mp.CLEAN
end
if peattributes.is_delphi ~= false then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 4 then
  return mp.CLEAN
end
if peattributes.epinfirstsect ~= true then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
local l_0_0 = (mp.readfile)((pe.foffset_rva)((pesecs[pevars.epsec]).VirtualAddress), 16)
if l_0_0:byte(2) ~= 232 then
  return mp.CLEAN
end
if l_0_0:byte(8) ~= 232 then
  return mp.CLEAN
end
if l_0_0:byte(14) ~= 232 then
  return mp.CLEAN
end
local l_0_1 = {}
local l_0_2 = {}
l_0_2.sig = "/\000a\000c\000l\000k\000%\000\000\000\000\000"
l_0_2.xray_type = 4
l_0_2.bytes_to_decrypt = 0
local l_0_3 = {}
l_0_3.sig = "cmd.exe /c RD /S"
l_0_3.xray_type = 4
l_0_3.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC144: No list found for R1 , SetList fails

l_0_2 = pe
l_0_2 = l_0_2.xray_block
l_0_3 = l_0_1
local l_0_4 = 2
local l_0_5 = 2
local l_0_6 = 0
do
  local l_0_7 = 4096
  do return l_0_2(l_0_3, l_0_4, l_0_5, l_0_6, l_0_7) end
  -- DECOMPILER ERROR at PC154: Confused about usage of register R3 for local variables in 'ReleaseLocals'

end

