-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SuspiciousJSfilename_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_0, "boleto", 1, true) or (string.find)(l_0_0, "cheque", 1, true) or (string.find)(l_0_0, "cobranca", 1, true) or (string.find)(l_0_0, "comprovante", 1, true) or (string.find)(l_0_0, "contract", 1, true) or (string.find)(l_0_0, "deposito", 1, true) or (string.find)(l_0_0, "dhl.js", 1, true) or (string.find)(l_0_0, "dhl_", 1, true) or (string.find)(l_0_0, "fattura", 1, true) or (string.find)(l_0_0, "fedex", 1, true) or (string.find)(l_0_0, "filename_error_id_", 1, true) or (string.find)(l_0_0, "jpg.js", 1, true) or (string.find)(l_0_0, "invoice", 1, true) or (string.find)(l_0_0, "orcamento", 1, true) or (string.find)(l_0_0, "budget", 1, true) or (string.find)(l_0_0, "relatorio_", 1, true) or (string.find)(l_0_0, "ordine", 1, true) or (string.find)(l_0_0, "zahlung", 1, true) or (string.find)(l_0_0, "pdf.js", 1, true) or (string.find)(l_0_0, "_doc.js", 1, true) or (string.find)(l_0_0, "-doc.js", 1, true) or (string.find)(l_0_0, " doc.js", 1, true) or (string.find)(l_0_0, ".doc.js", 1, true) or (string.find)(l_0_0, "xls.js", 1, true) or (string.find)(l_0_0, "_ppt.js", 1, true) or (string.find)(l_0_0, "unpaid", 1, true) or (string.find)(l_0_0, "usps", 1, true) or (string.find)(l_0_0, "swift", 1, true) or (string.find)(l_0_0, "bradesco", 1, true) or (string.find)(l_0_0, "lordsystem", 1, true) or (string.find)(l_0_0, "billing", 1, true) or (string.find)(l_0_0, "profile-", 1, true) or (string.find)(l_0_0, "paypal", 1, true) or (string.find)(l_0_0, "viagogo", 1, true) or (string.find)(l_0_0, "photoshop", 1, true) or (string.find)(l_0_0, "exported_bill", 1, true) or (string.find)(l_0_0, "export_pdf_", 1, true) or (string.find)(l_0_0, "e-bill", 1, true) or (string.find)(l_0_0, "lebenslauf", 1, true) or (string.find)(l_0_0, "flight_ticket", 1, true) or (string.find)(l_0_0, "_bills_", 1, true) or (string.find)(l_0_0, "shipping notification", 1, true) or (string.find)(l_0_0, "credit_card", 1, true) or (string.find)(l_0_0, "financial report", 1, true) or (string.find)(l_0_0, "_details_", 1, true) or (string.find)(l_0_0, "express parcel service", 1, true) or (string.find)(l_0_0, "tracking number scan", 1, true) or (string.find)(l_0_0, "saved letter", 1, true) or (string.find)(l_0_0, "blank", 1, true) or (string.find)(l_0_0, "scan data", 1, true) or (string.find)(l_0_0, "nrv_", 1, true) or (string.find)(l_0_0, "postfinance", 1, true) or (string.find)(l_0_0, "fax_", 1, true) or (string.find)(l_0_0, "quittung", 1, true) ~= nil or (string.find)(l_0_0, "bestellung", 1, true) ~= nil or (string.find)(l_0_0, "rechnung", 1, true) ~= nil or (string.find)(l_0_0, "zahlung", 1, true) ~= nil or (string.find)(l_0_0, "flash.+player.+upgrade") ~= nil or (string.find)(l_0_0, "agreement_form.+%.js") ~= nil or (string.find)(l_0_0, "booking.+confirmation.+%.js") ~= nil or (string.find)(l_0_0, "addition-%d+%.js") ~= nil or (string.find)(l_0_0, "credit.+report") ~= nil or (string.find)(l_0_0, "delivery.+notification") ~= nil or (string.find)(l_0_0, "label_%d+%.js") ~= nil or (string.find)(l_0_0, "signed doc%d+%.js") ~= nil or (string.find)(l_0_0, "scanned_doc.+%.js") ~= nil or (string.find)(l_0_0, "mail_%d+%.js") ~= nil or (string.find)(l_0_0, "img_%d+%.js") ~= nil or (string.find)(l_0_0, "img %d+%.js") ~= nil or (string.find)(l_0_0, "pic_%d+%.js") ~= nil or (string.find)(l_0_0, "img %d+%.js") ~= nil or (string.find)(l_0_0, "ffice_equipment_.+%.js") ~= nil or (string.find)(l_0_0, "order%-%d+%.js") ~= nil or (string.find)(l_0_0, "bill_.+%.js") ~= nil or (string.find)(l_0_0, "->doc%.js") ~= nil or (string.find)(l_0_0, "auspost.?parcel.js") ~= nil or (string.find)(l_0_0, "transaction.?report") ~= nil or (string.find)(l_0_0, "delivery_", 1, true) or (string.find)(l_0_0, "snk.?%d%d%d%d%d%d-%.js") ~= nil or (string.find)(l_0_0, "dados.?do.?processo.?%d%d%d%d%d%d-%.js") ~= nil or (string.find)(l_0_0, "%d%d%d%d%d%d-_zip%.zip%->%d%d%d%d%d%d-%.js$") ~= nil or (string.find)(l_0_0, "zip%-%d+%.zip") ~= nil or (string.find)(l_0_0, "shop%-%d+%.js") ~= nil or (string.find)(l_0_0, "message%-%d+%.js") ~= nil or (string.find)(l_0_0, "money%-%d+%.js") ~= nil or (string.find)(l_0_0, "bill%-%d+%.js") ~= nil or (string.find)(l_0_0, "notification%-%d+%.js") ~= nil or (string.find)(l_0_0, "online%-%d+%.js") ~= nil or (string.find)(l_0_0, "info%-%d+%.js") ~= nil or (string.find)(l_0_0, "email%-%d+%.js") ~= nil or (string.find)(l_0_0, "euro%-%d+%.js") ~= nil or (string.find)(l_0_0, "dollars%-%d+%.js") ~= nil or (string.find)(l_0_0, "delivery%-details%.js") ~= nil or (string.find)(l_0_0, "faktura%_%d+%.js") ~= nil or (string.find)(l_0_0, "doc%d+%.js") ~= nil or (string.find)(l_0_0, "factuur n.+%.js") ~= nil then
  if l_0_0:find("scan_report_sb_", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

