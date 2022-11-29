-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_O97M_EnCDocSuspiciousFileName_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (mp.getfilesize)() > 1024000 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "electioninterference_[0-9]+.xls") ~= nil or (string.find)(l_0_0, "inv%-%d%d%d%d%d%d%d+%-%d%d%d%d%d%d%d+.xls") ~= nil or (string.find)(l_0_0, "payload_1.bin", 1, true) ~= nil or (string.find)(l_0_0, "confirm%-%d%d%d%d%d%d%d+%-%d%d%d%d%d%d%d+.xls") ~= nil or (string.find)(l_0_0, "subscription_%d%d%d%d%d%d%d+.xls") ~= nil or (string.find)(l_0_0, "complaint%-letter%-%d%d%d%d%d%d%d+%-%d%d%d%d2021.xls") ~= nil or (string.find)(l_0_0, "compensationclaim_%d%d%d%d%d%d%d+_%d%d%d%d2021.xls") ~= nil or (string.find)(l_0_0, "compensation%-%d%d%d%d%d%d%d+%-feb%-%d%d%.xlsb") ~= nil or (string.find)(l_0_0, "comission_%d%d%d%d%d%d%d%d%d+_%d%d%d%d2021.xlsm") ~= nil or (string.find)(l_0_0, "debt_%d%d%d%d%d%d%d%d%d+_%d%d%d%d2021.xlsm") ~= nil or (string.find)(l_0_0, "document%-%d%d%d%d%d%d%d+.xlsm") ~= nil or (string.find)(l_0_0, "id_card%-%d%d%d%d+.xlsm") ~= nil or (string.find)(l_0_0, "claim_%d%d%d%d%d%d%d+_%d%d%d%d2021.xlsm") ~= nil or (string.find)(l_0_0, "invoice_%d%d%d+.xlsm") ~= nil or (string.find)(l_0_0, "catalog%-%d%d%d%d%d+%.xls") ~= nil or (string.find)(l_0_0, "diagram%-%d%d%d%d%d+.xlsm") ~= nil or (string.find)(l_0_0, "outstanding%-debt%-%d%d%d%d+%-%d%d%d%d2021%.xlsm") ~= nil or (string.find)(l_0_0, "compensation%-%d%d%d%d%d%d%d+%-%d%d%d%d2021%.xls") ~= nil or (string.find)(l_0_0, "permission%-%d%d%d%d%d%d%d+%-%d%d%d%d2021%.xlsm") ~= nil or (string.find)(l_0_0, "cancel_sub_jpl%d%d%d+%.xlsb") ~= nil or (string.find)(l_0_0, "analysis%-%d%d%d%d+%.xls") ~= nil or (string.find)(l_0_0, "research%-%d%d%d%d+%.xls") ~= nil or (string.find)(l_0_0, "outstanding_debt_%d%d%d%d+_%d%d%d%d2021%.xlsm") ~= nil or (string.find)(l_0_0, "funds_withdrawal_%d%d%d%d+_%d%d%d%d2021%.xlsm") ~= nil or (string.find)(l_0_0, "decline_%d%d%d%d%d+_%d%d%d%d2021%.xlsm") ~= nil or (string.find)(l_0_0, "rebate_%d%d%d%d%d+_%d%d%d%d2021%.xlsm") ~= nil or (string.find)(l_0_0, "document%-%d%d%-%d%d%d%d%.xls") ~= nil or (string.find)(l_0_0, "overdue_debt_%d%d%d%d+_%d%d%d%d2021.xlsm") ~= nil or (string.find)(l_0_0, "document_%d%d%d%d2021_%d%d%d%d+_copy%.xlsm") ~= nil or (string.find)(l_0_0, "debt_%d%d%d%d2021_%d%d%d%d+%.xlsm") ~= nil or (string.find)(l_0_0, "compensation%d%d%d%d%d+2021%.xlsm") ~= nil or (string.find)(l_0_0, "job_presentation_%d%d%d%d+%.xlsb ") ~= nil or (string.find)(l_0_0, "cancel_sub_gws%d%d%d%d%d+%.xlsb ") ~= nil or (string.find)(l_0_0, "analysis%-%d%d%d%d+.xlsb") ~= nil or (string.find)(l_0_0, "research%-%d%d%d%d+.xlsb") ~= nil or (string.find)(l_0_0, "cancellation_%d%d%d%d+_%d%d%d%d2021.xlsm") ~= nil or (string.find)(l_0_0, "tender%-%d%d%d%d+%.xlsb") ~= nil or (string.find)(l_0_0, "_cargo_2021%.%d%d%.%d%d%.xlsb") ~= nil or (string.find)(l_0_0, "_ship_2021%.%d%d%.%d%d%.xlsb") ~= nil or (string.find)(l_0_0, "proffer%-%d%d%d%d%d%d+%.xlsm") ~= nil or (string.find)(l_0_0, "complaint_letter_%d%d%d%d%d%d+_%d%d%d%d2021%.xlsm") ~= nil or (string.find)(l_0_0, "idea%-%d%d%d%d%d%d+%.xlsb") ~= nil or (string.find)(l_0_0, "plan%-%d%d%d%d%d%d+%.xlsb") ~= nil or (string.find)(l_0_0, "aim%-%d%d%d%d%d%d+%.xlsb") ~= nil or (string.find)(l_0_0, "complaint_copy_%d%d%d%d%d%d+_%d%d%d%d2021.xlsm") ~= nil or (string.find)(l_0_0, "plan%-%d%d%d%d+%.xlsm") ~= nil or (string.find)(l_0_0, "paym_remind_%d%d%d%d+%.xlsm") ~= nil or (string.find)(l_0_0, "compens_req_%d%d%d%d+%.xlsm") ~= nil or (string.find)(l_0_0, "outstanding%-%d%d%d%d%d%d+%-%d%d%d%d2021%.xlsm") ~= nil or (string.find)(l_0_0, "decline%-%d%d%d%d%d%d+%-%d%d%d%d2021%.xlsm") ~= nil or (string.find)(l_0_0, "fatture_%d%d%d%d+%.xlsm") ~= nil or (string.find)(l_0_0, "companylist_%d%d%d%d%d%d+%.xlsm") ~= nil or (string.find)(l_0_0, "simplydisk_tpeb_tariff_ctoc_%d%d%d%d2021_rev_%d_%d%d%d%d%d+%.xlsm") ~= nil or (string.find)(l_0_0, "trial_case_documentation_%d%d%d%d%d%d+%.xlsm") ~= nil or (string.find)(l_0_0, "trial_case_documentation%-%d%d%d%d%d%d+%.xlsm") ~= nil or (string.find)(l_0_0, "item_positions_receipt_%d%d%d%d%d%d+%.xlsm") ~= nil or (string.find)(l_0_0, "item_positions_invoice_%d%d%d%d%d%d+%.xlsm") ~= nil or (string.find)(l_0_0, "pre%-trial_documentation_%d%d%d%d%d%d+%.xlsm") ~= nil or (string.find)(l_0_0, "pre%-trial_information_%d%d%d%d%d+%.xlsm") ~= nil or (string.find)(l_0_0, "positions_waybill%-%d%d%d%d%d+%.xlsm") ~= nil or (string.find)(l_0_0, "prepared_waybill_information%-%d%d%d%d%d+%.xlsm") ~= nil or (string.find)(l_0_0, "waybill_documentation_%d%d%d%d%d+.xlsm") ~= nil or (string.find)(l_0_0, "item_positions_waybill%-%d%d%d%d%d+%.xlsm") ~= nil or (string.find)(l_0_0, "invoice%-%d%d%d%d%d+_2021%d%d%d%d%[%d%]%.xlsb") ~= nil or (string.find)(l_0_0, "eoy_tax_document%-%d%d%d%d%d+_2021%d%d%d%d%.xlsb") ~= nil or (string.find)(l_0_0, "details%-%d%d%d+_2021%d%d%d%d%[%d%]%.xlsb") ~= nil or (string.find)(l_0_0, "scan%-%d%d%d%d%d+_2021%d%d%d%d%.xlsb") ~= nil or (string.find)(l_0_0, "invoice_due%-in%-%d%d%d%d%d+_2021%d%d%d%d%.xlsb") ~= nil or (string.find)(l_0_0, "ach remlttance payment advice%.xlsx") ~= nil or (string.find)(l_0_0, "ach payment remittance%(2%)%.xlsx") ~= nil or (string.find)(l_0_0, "inbios wire 052521%.xlsx") ~= nil or (string.find)(l_0_0, "aero%-craft hydraulics, inc_remittance%.xlsx") ~= nil or (string.find)(l_0_0, "wages%-no%.%-%d%d%d%d%d+_2021%d%d%d%d%.xlsb") ~= nil or (string.find)(l_0_0, "signature_page.%-%d%d%d%d%d+_2021%d%d%d%d%.xlsb") ~= nil or (string.find)(l_0_0, "diagram%-%d%d%d%.doc") ~= nil or (string.find)(l_0_0, "document_%d%d%d%d%d+%-copy%.xls") ~= nil or (string.find)(l_0_0, "chart%-%d%d%d%d%d+%.xls") ~= nil or (string.find)(l_0_0, "diagram_%d%d%d%d%d+%.xls") ~= nil or (string.find)(l_0_0, "payment%-%d%d%d%d+%-%d%d%d%d2021%.xls") ~= nil or (string.find)(l_0_0, "specification%-%d%d%d%d+%.xls") ~= nil or (string.find)(l_0_0, "claim%-%d%d%d%d+%-%d%d%d%d2021%.xls") ~= nil or (string.find)(l_0_0, "compensationclaim%-%d%d%d%d+%-%d%d%d%d2021%.xls") ~= nil or (string.find)(l_0_0, "compensation_reject%-%d%d%d%d%d%d+%-%d%d%d%d2021%.xls") ~= nil or (string.find)(l_0_0, "rebate%-%d%d%d%d%d%d+%-%d%d%d%d2021%.xls") ~= nil or (string.find)(l_0_0, "service%-interrupt%-%d%d%d%d%d+%.xls") ~= nil or (string.find)(l_0_0, "payment_receipt %d%d%d%d%.xls") ~= nil or (string.find)(l_0_0, "sales_receipt %d%d%d%d%.xls") ~= nil or (string.find)(l_0_0, "ddt_2021_%d%d%d%d+%.xls") ~= nil or (string.find)(l_0_0, "2021_ddt_%d%d%d%d+%.xls") ~= nil or (string.find)(l_0_0, "purchase_order %d%d%d%d+%.xls") ~= nil or (string.find)(l_0_0, "invoice%-%d%d%d%d+_2021%d%d%d%d%.xlsb") ~= nil or (string.find)(l_0_0, "claim%-copy%-%d%d%d%d+%.xls") ~= nil or (string.find)(l_0_0, "trend%-%d%d%d%d+%.xls") ~= nil or (string.find)(l_0_0, "biz%-%d%d%d%d+%.xls") ~= nil or (string.find)(l_0_0, "invoice%-%d%d%d%d+_202110%d%d%.zip") ~= nil or (string.find)(l_0_0, "grade%-%d%d%d%d+%.xls") ~= nil or (string.find)(l_0_0, "payment_receipt_ %d%d%d%d%.xls") ~= nil or (string.find)(l_0_0, "cmpl%-%d%d%d%d%d+%-nov%-%d%d%.xls") ~= nil or (string.find)(l_0_0, "miss%-%d%d%d%d%d+%.xls") ~= nil or (string.find)(l_0_0, "ext%-%d%d%d%d%d+%.xls") ~= nil or (string.find)(l_0_0, "version%-%d%d%d%d%d+%.xls") ~= nil or (string.find)(l_0_0, "complaintdetails%-%d%d%d%d%d+%-nov%-%d%d%.xlsb") ~= nil or (string.find)(l_0_0, "contractcopy%-%d%d%d%d%d+%-nov%-%d%d%.xlsb") ~= nil or (string.find)(l_0_0, "main%-%d%d%d%d%d+%.xlsm") ~= nil or (string.find)(l_0_0, "rfq no%.poo%-%d%d%d%d%d+%.xlsx") ~= nil or (string.find)(l_0_0, "calculation%-%d%d%d%d%d+%-jan%-%d%d%.xlsb") ~= nil or (string.find)(l_0_0, "summary%-%d%d%d%d%d+%-jan%d%d%.xlsb") ~= nil or (string.find)(l_0_0, "summary%-%d%d%d%d%d+%-feb%d%d%.xlsb") ~= nil or (string.find)(l_0_0, "rk%-%d%d%d%d%d+%.xlsb") ~= nil or (string.find)(l_0_0, "rb%-%d%d%d%d%d+%-may%-%d%d%.xltm") ~= nil or (string.find)(l_0_0, "documento_%d%d07%.xls") ~= nil or (string.find)(l_0_0, "message_%d%d072022%.xls") ~= nil or (string.find)(l_0_0, "anhang%-%d%d072022%.xls") ~= nil or (string.find)(l_0_0, "escanear_%d%d%d%d2022%.xls") ~= nil or (string.find)(l_0_0, "2022%-%d%d%-%d%d%-%x%x%x%x%x+_unzipped%.bin") ~= nil or (string.find)(l_0_0, "claimdetails%-%d%d%d%d+%-mar%-%d%d%.xlsb") ~= nil or (string.find)(l_0_0, "payment%-%d%d%d%d%d+%-feb%-%d%d%.xlsb") ~= nil or (string.find)(l_0_0, ".xlsxm.xlsm", 1, true) or (string.find)(l_0_0, ".pdf.ppam", 1, true) or (string.find)(l_0_0, ",pdf.ppam", 1, true) or (string.find)(l_0_0, ",pdf.pps", 1, true) or (string.find)(l_0_0, "162964708.doc", 1, true) or (string.find)(l_0_0, "wire_remttance.xlsx", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

