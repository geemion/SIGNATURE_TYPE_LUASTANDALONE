-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_SuspiciousStackedExtensionsSensor.A_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
local l_0_1 = (string.lower)((string.sub)(l_0_0, -4))
local l_0_2 = false
local l_0_3 = false
local l_0_4 = 0
local l_0_5 = {}
l_0_5[".bat"] = ""
l_0_5[".cmd"] = ""
l_0_5[".com"] = ""
l_0_5[".cpl"] = ""
l_0_5[".exe"] = ""
l_0_5[".htt"] = ""
l_0_5[".jar"] = ""
l_0_5[".pif"] = ""
l_0_5[".ps1"] = ""
l_0_5[".scr"] = ""
l_0_5[".vbs"] = ""
if l_0_5[l_0_1] then
  local l_0_6 = (string.reverse)((string.lower)((string.sub)(l_0_0, 0, (string.len)(l_0_0) - 4)))
  for l_0_10 in (string.gmatch)(l_0_6, "[%.%%s^]*(%w+)[%.%%s>_\\/]") do
    l_0_4 = l_0_4 + 1
    if (string.len)(l_0_10) >= 2 then
      local l_0_11 = {}
      l_0_11.exe = ""
      l_0_11.tab = ""
      l_0_11.bat = ""
      l_0_11.dmc = ""
      l_0_11.cmd = ""
      l_0_11.moc = ""
      l_0_11.com = ""
      l_0_11.lpc = ""
      l_0_11.cpl = ""
      l_0_11.tth = ""
      l_0_11.htt = ""
      l_0_11.raj = ""
      l_0_11.jar = ""
      l_0_11.fip = ""
      l_0_11.pif = ""
      l_0_11["1sp"] = ""
      l_0_11.ps1 = ""
      l_0_11.rcs = ""
      l_0_11.scr = ""
      l_0_11.sbv = ""
      l_0_11.vbs = ""
      l_0_11.lld = ""
      l_0_11.dll = ""
      local l_0_12 = {}
      l_0_12.exe = ""
      l_0_12.txt = ""
      l_0_12.rcs = ""
      l_0_12.scr = ""
      l_0_12.fdp = ""
      l_0_12.pdf = ""
      l_0_12.gnp = ""
      l_0_12.png = ""
      l_0_12.gpj = ""
      l_0_12.jpg = ""
      l_0_12.ftr = ""
      l_0_12.rtf = ""
      l_0_12.tpp = ""
      l_0_12.ppt = ""
      l_0_12.piz = ""
      l_0_12.zip = ""
      l_0_12.slx = ""
      l_0_12.xls = ""
      local l_0_13 = {}
      l_0_13.bac = ""
      l_0_13.cab = ""
      l_0_13.pizg = ""
      l_0_13.gzip = ""
      l_0_13.osi = ""
      l_0_13.iso = ""
      l_0_13.rat = ""
      l_0_13.tar = ""
      l_0_13.dhv = ""
      l_0_13.vhd = ""
      l_0_13.piz = ""
      l_0_13.zip = ""
      l_0_13.mhc = ""
      l_0_13.chm = ""
      do
        do
          local l_0_14 = {}
          l_0_14.cod = ""
          l_0_14.doc = ""
          l_0_14.mcod = ""
          l_0_14.docm = ""
          l_0_14.xcod = ""
          l_0_14.docx = ""
          l_0_14.tod = ""
          l_0_14.dot = ""
          l_0_14.mtod = ""
          l_0_14.dotm = ""
          l_0_14.xtod = ""
          l_0_14.dotx = ""
          l_0_14.tdo = ""
          l_0_14.odt = ""
          l_0_14.ftr = ""
          l_0_14.rtf = ""
          l_0_14.sdo = ""
          l_0_14.ods = ""
          l_0_14.alx = ""
          l_0_14.xla = ""
          l_0_14.slx = ""
          l_0_14.xls = ""
          l_0_14.malx = ""
          l_0_14.xlam = ""
          l_0_14.bslx = ""
          l_0_14.xlsb = ""
          l_0_14.mslx = ""
          l_0_14.xlsm = ""
          l_0_14.xslx = ""
          l_0_14.xlsx = ""
          l_0_14.tlx = ""
          l_0_14.xlt = ""
          l_0_14.mtlx = ""
          l_0_14.xltm = ""
          l_0_14.xtlx = ""
          l_0_14.xltx = ""
          l_0_14.pdo = ""
          l_0_14.odp = ""
          l_0_14.top = ""
          l_0_14.pot = ""
          l_0_14.mtop = ""
          l_0_14.potm = ""
          l_0_14.xtop = ""
          l_0_14.potx = ""
          l_0_14.app = ""
          l_0_14.ppa = ""
          l_0_14.mapp = ""
          l_0_14.ppam = ""
          l_0_14.spp = ""
          l_0_14.pps = ""
          l_0_14.mspp = ""
          l_0_14.ppsm = ""
          l_0_14.xspp = ""
          l_0_14.ppsx = ""
          l_0_14.tpp = ""
          l_0_14.ppt = ""
          l_0_14.mtpp = ""
          l_0_14.pptm = ""
          l_0_14.xtpp = ""
          l_0_14.pptx = ""
          l_0_14.ina = ""
          l_0_14.ani = ""
          l_0_14.pmb = ""
          l_0_14.bmp = ""
          l_0_14.ruc = ""
          l_0_14.cur = ""
          l_0_14.fme = ""
          l_0_14.emf = ""
          l_0_14.fig = ""
          l_0_14.gif = ""
          l_0_14.oci = ""
          l_0_14.ico = ""
          l_0_14.gepj = ""
          l_0_14.jpeg = ""
          l_0_14.gpj = ""
          l_0_14.jpg = ""
          l_0_14.gnp = ""
          l_0_14.png = ""
          l_0_14.war = ""
          l_0_14.raw = ""
          l_0_14.fit = ""
          l_0_14.tif = ""
          l_0_14.ffit = ""
          l_0_14.tiff = ""
          l_0_14.fmw = ""
          l_0_14.wmf = ""
          l_0_14.fifj = ""
          l_0_14.jfif = ""
          l_0_14.pg3 = ""
          l_0_14["3gp"] = ""
          l_0_14.caa = ""
          l_0_14.aac = ""
          l_0_14.fsa = ""
          l_0_14.asf = ""
          l_0_14.iva = ""
          l_0_14.avi = ""
          l_0_14.alf = ""
          l_0_14.fla = ""
          l_0_14.calf = ""
          l_0_14.flac = ""
          l_0_14.vlf = ""
          l_0_14.flv = ""
          l_0_14.u3m = ""
          l_0_14.m3u = ""
          l_0_14.v4m = ""
          l_0_14.m4v = ""
          l_0_14.vkm = ""
          l_0_14.mkv = ""
          l_0_14.vom = ""
          l_0_14.mov = ""
          l_0_14["3pm"] = ""
          l_0_14.mp3 = ""
          l_0_14["4pm"] = ""
          l_0_14.mp4 = ""
          l_0_14.epm = ""
          l_0_14.mpe = ""
          l_0_14.gepm = ""
          l_0_14.mpeg = ""
          l_0_14.gpm = ""
          l_0_14.mpg = ""
          l_0_14.ggo = ""
          l_0_14.ogg = ""
          l_0_14.amv = ""
          l_0_14.vma = ""
          l_0_14.vaw = ""
          l_0_14.wav = ""
          l_0_14.vmw = ""
          l_0_14.wmv = ""
          l_0_14.txt = ""
          l_0_14.ppc = ""
          l_0_14.cpp = ""
          l_0_14.ssc = ""
          l_0_14.css = ""
          l_0_14.vsc = ""
          l_0_14.csv = ""
          l_0_14.lme = ""
          l_0_14.eml = ""
          l_0_14.codg = ""
          l_0_14.gdoc = ""
          l_0_14.ath = ""
          l_0_14.hta = ""
          l_0_14.mth = ""
          l_0_14.htm = ""
          l_0_14.lmth = ""
          l_0_14.html = ""
          l_0_14.thm = ""
          l_0_14.mht = ""
          l_0_14.fdp = ""
          l_0_14.pdf = ""
          l_0_14.ftt = ""
          l_0_14.ttf = ""
          l_0_14.sd3 = ""
          l_0_14["3ds"] = ""
          l_0_14.swa = ""
          l_0_14.aws = ""
          l_0_14.gwd = ""
          l_0_14.dwg = ""
          l_0_14.fxd = ""
          l_0_14.dxf = ""
          l_0_14.saf = ""
          l_0_14.fas = ""
          l_0_14["1sp"] = ""
          l_0_14.ps1 = ""
          l_0_14.lnm = ""
          l_0_14.mln = ""
          l_0_14.flp = ""
          l_0_14.plf = ""
          l_0_14.xlv = ""
          l_0_14.vlx = ""
          if l_0_12[l_0_10] and (string.find)((string.lower)(l_0_0), (string.reverse)(l_0_10), 1, true) ~= 3 then
            l_0_3 = true
          end
          -- DECOMPILER ERROR at PC343: Unhandled construct in 'MakeBoolean' P3

          -- DECOMPILER ERROR at PC343: Unhandled construct in 'MakeBoolean' P3

          -- DECOMPILER ERROR at PC343: Unhandled construct in 'MakeBoolean' P3

          -- DECOMPILER ERROR at PC343: Unhandled construct in 'MakeBoolean' P3

          -- DECOMPILER ERROR at PC343: Unhandled construct in 'MakeBoolean' P3

          -- DECOMPILER ERROR at PC343: Unhandled construct in 'MakeBoolean' P3

          -- DECOMPILER ERROR at PC343: Unhandled construct in 'MakeBoolean' P3

          -- DECOMPILER ERROR at PC343: Unhandled construct in 'MakeBoolean' P3

          if (l_0_1 == ".exe" and l_0_10 == "dmc") or l_0_10 ~= "exe" or l_0_1 ~= ".jar" or l_0_4 ~= 1 or l_0_11[l_0_10] ~= nil then
            l_0_2 = true
          end
          do break end
          -- DECOMPILER ERROR at PC345: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC345: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC345: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  if l_0_2 then
    local l_0_15 = {}
    l_0_15["zip.exe"] = ""
    l_0_15["gzip.exe"] = ""
    l_0_4 = (string.len)(l_0_0)
    while l_0_4 > 0 and (string.byte)(l_0_0, l_0_4) ~= 92 do
      l_0_4 = l_0_4 - 1
    end
    if l_0_4 > 0 then
      l_0_4 = l_0_4 + 1
    end
    local l_0_16 = (string.sub)(l_0_0, l_0_4)
    if l_0_15[(string.lower)(l_0_16)] then
      return mp.CLEAN
    end
    if l_0_3 then
      (mp.set_mpattribute)("Lua:SuspiciousStackedExtensionsSensor.B")
      return mp.INFECTED
    else
      local l_0_17 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
      if (l_0_17 == mp.SCANREASON_ONOPEN or l_0_17 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE) and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
        return mp.INFECTED
      end
    end
  end
end
do
  return mp.CLEAN
end

