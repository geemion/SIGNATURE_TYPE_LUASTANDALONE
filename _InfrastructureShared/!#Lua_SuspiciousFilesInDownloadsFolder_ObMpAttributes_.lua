-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_SuspiciousFilesInDownloadsFolder_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_0 ~= nil and l_0_0:len() > 12 and l_0_1 ~= nil then
    local l_0_2 = false
    local l_0_3 = ""
    if l_0_0:sub(-10) == "\\downloads" then
      l_0_2 = true
      l_0_3 = "Lua:WrittenToDownloadFolder"
      ;
      (mp.set_mpattribute)(l_0_3)
    else
      if l_0_0:find("\\downloads\\%w+$") ~= nil then
        l_0_2 = true
        l_0_3 = "Lua:WrittenToDownloadFolder1Sub"
        ;
        (mp.set_mpattribute)(l_0_3)
      end
    end
    if l_0_2 == true then
      if l_0_1:len() > 64 then
        (mp.set_mpattribute)("Lua:WrittenToDownloadFolderWithLongFileName")
      end
      do
        local l_0_4, l_0_5, l_0_8 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME) or ""
        -- DECOMPILER ERROR at PC82: Confused about usage of register: R4 in 'UnsetPending'

        if l_0_4 == "" then
          l_0_3 = l_0_3 .. "ByUnknownParentProcess"
        else
          local l_0_6 = nil
          local l_0_7 = nil
          if ({["radeonsettings.exe"] = "Updater", ["razercentralservice.exe"] = "Updater", ["searchprotocolhost.exe"] = "WindowsBinary", ["explorer.exe"] = "Explorer", ["svchost.exe"] = "WindowsBinary", ["dllhost.exe"] = "WindowsBinary", ["7zg.exe"] = "Archiver", ["winzip64.exe"] = "Archiver", ["winrar.exe"] = "Archiver", ["chrome.exe"] = "Browser", ["opera.exe"] = "Browser", ["brave.exe"] = "Browser", ["bittorrent.exe"] = "Torrent", ["utorrent.exe"] = "Torrent"})[l_0_6:lower()] == nil then
            l_0_3 = l_0_3 .. "ByOtherParentProcess"
          else
            -- DECOMPILER ERROR at PC114: Confused about usage of register: R6 in 'UnsetPending'

            l_0_3 = l_0_3 .. "By" .. ({["radeonsettings.exe"] = "Updater", ["razercentralservice.exe"] = "Updater", ["searchprotocolhost.exe"] = "WindowsBinary", ["explorer.exe"] = "Explorer", ["svchost.exe"] = "WindowsBinary", ["dllhost.exe"] = "WindowsBinary", ["7zg.exe"] = "Archiver", ["winzip64.exe"] = "Archiver", ["winrar.exe"] = "Archiver", ["chrome.exe"] = "Browser", ["opera.exe"] = "Browser", ["brave.exe"] = "Browser", ["bittorrent.exe"] = "Torrent", ["utorrent.exe"] = "Torrent"})[l_0_6:lower()]
          end
        end
        do
          do
            ;
            (mp.set_mpattribute)(l_0_3)
            return mp.CLEAN
          end
        end
      end
    end
  end
end

