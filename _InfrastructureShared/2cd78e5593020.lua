-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2cd78e5593020 

-- params : ...
-- function num : 0
if peattributes.isdll and pehdr.NumberOfSections == 5 and pevars.epsec == 1 and not peattributes.no_exports and peattributes.no_tls and pehdr.SizeOfImage >= 221184 and pehdr.SizeOfImage <= 1069056 and (pesecs[pevars.epsec]).SizeOfRawData >= 151552 and (pesecs[pevars.epsec]).SizeOfRawData <= 909312 then
  (mp.set_mpattribute)("MpSimulateParanoid")
  ;
  (mp.set_mpattribute)("MpEnableCOM")
  ;
  (mp.set_mpattribute)("do_exhaustivehstr_rescan_Adrotator")
  ;
  (pe.reemulate)()
end
return mp.CLEAN

