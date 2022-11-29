-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_Context_FileInADS.A 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 ~= nil and #l_0_0 < 2 then
  return mp.CLEAN
end
local l_0_1 = (mp.get_parent_filehandle)()
if not (mp.is_handle_nil)(l_0_1) and (string.find)(l_0_0, "->", 1, true) ~= nil then
  return mp.CLEAN
end
local l_0_2 = (string.find)(l_0_0, ":", 1, true)
if l_0_2 ~= nil then
  local l_0_3 = (string.sub)(l_0_0, l_0_2 + 1, #l_0_0)
  if l_0_3 ~= nil and #l_0_3 > 0 then
    local l_0_4 = {}
    l_0_4["zone.identifier"] = "zi"
    l_0_4["zone.identifier:$data"] = "zid"
    l_0_4.tamper = "tamper"
    l_0_4.favicon = "favicon"
    l_0_4.oestandardproperty = "oesp"
    l_0_4.knownsources = "knownsources"
    l_0_4.rvcontext = "rvcontext"
    l_0_4["com.dropbox.attributes"] = "dropboxattr"
    l_0_4["com.dropbox.attrs"] = "dropboxattrs"
    l_0_4["com.dropbox.internal"] = "dropboxinternal"
    l_0_4["com.amazon.drive.sync"] = "awsdrivesync"
    l_0_4["com.apple.lastuseddate#ps"] = "apple_sync"
    l_0_4.mbinfo = "mbinfo"
    l_0_4.afp_afpinfo = "acronisinfo"
    l_0_4["fsrm{ef88c031-5950-4164-ab92-eec5f16005a5}"] = "ms_fsrm"
    l_0_4.x5zn8agxs4 = "avast_data"
    l_0_4["6e53bff5-0001-412b-8407-e3aede763511"] = "diagtrack_agent"
    l_0_4["incompletestartprocessprotection.cnt"] = "avast_data2"
    l_0_4.versioncache = "sharedfiles"
    l_0_4.apcacheheader = "apcacheheader"
    l_0_4.databusdeliverylog = "databusdeliverylog"
    l_0_4.wofcompresseddata = "wofcompresseddata"
    l_0_4["&#x05;summaryinformation"] = "summaryinformation"
    l_0_4["&#x05;documentsummaryinformation"] = "summaryinformation"
    l_0_4["gbpkmap.lst"] = "gbpkmap"
    l_0_4.dlpfac = "dlpfac"
    l_0_4.ca_inoculateit = "ca_inoculateit"
    l_0_4["jdnfile.identifier"] = "jdnfile"
    local l_0_5 = l_0_4[l_0_3]
    if l_0_5 ~= nil then
      (mp.set_mpattribute)("Lua:Context/FileInADS.A!commonadslist")
      ;
      (mp.set_mpattribute)("Lua:Context/FileInADS.A!" .. l_0_5)
    end
    local l_0_6 = (string.sub)(l_0_0, 0, l_0_2)
    if l_0_6 ~= nil and #l_0_6 > 5 then
      local l_0_7 = {}
      l_0_7["cngsvc.exe:"] = "countertack"
      local l_0_8 = l_0_7[l_0_6]
      if l_0_8 ~= nil then
        (mp.set_mpattribute)("Lua:Context/FileInADS.A!commonadslist")
        ;
        (mp.set_mpattribute)("Lua:Context/FileInADS.A!" .. l_0_8)
      end
      if l_0_6 == "system32:" and #l_0_3 >= 40 and (string.sub)(l_0_3, 0, 1) == "$" then
        (mp.set_mpattribute)("Lua:Context/FileInADS.A!commoninwindir")
      end
    end
    do
      do
        if (mp.get_mpattribute)("BM_MZ_FILE") then
          (mp.set_mpattribute)("Lua:Context/PeFileInADS.A")
        end
        do return mp.INFECTED end
        return mp.CLEAN
      end
    end
  end
end

