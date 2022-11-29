-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_FilePathAttributes_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1, l_0_2 = l_0_0:match("(.+\\)([^\\]+)$")
if l_0_1 == nil or l_0_2 == nil then
  return mp.CLEAN
end
if (string.match)(l_0_1, "\\appdata\\") then
  (mp.set_mpattribute)("Lua:FileInsideAppDataFolder")
  if (string.match)(l_0_1, "\\appdata\\local\\") then
    (mp.set_mpattribute)("Lua:FileInsideAppDataLocalFolder")
    if (string.match)(l_0_1, "\\appdata\\local\\temp\\") then
      (mp.set_mpattribute)("Lua:FileInsideAppDataLocalTempFolder")
    end
  else
    if (string.match)(l_0_1, "\\appdata\\roaming\\") then
      (mp.set_mpattribute)("Lua:FileInsideAppDataRoamingFolder")
    end
  end
else
  if (string.match)(l_0_1, "\\program files\\") then
    (mp.set_mpattribute)("Lua:FileInsideProgramFilesFolder")
  else
    if (string.match)(l_0_1, "\\program files (x86)\\") then
      (mp.set_mpattribute)("Lua:FileInsideProgramFilesX86Folder")
    else
      if (string.match)(l_0_1, "\\programdata\\") then
        (mp.set_mpattribute)("Lua:FileInsideProgramDataFolder")
      else
        if (string.match)(l_0_1, "\\windows\\system32\\") then
          (mp.set_mpattribute)("Lua:FileInsideSystemFolder")
        else
          if (string.match)(l_0_1, "c:\\windows\\") then
            (mp.set_mpattribute)("Lua:FileInsideWindowsFolder")
          else
            if (string.match)(l_0_1, "\\users\\[^\\]+\\") then
              (mp.set_mpattribute)("Lua:FileInsideUserProfileFolder")
              if (string.match)(l_0_1, "\\users\\[^\\]+\\documents\\") then
                (mp.set_mpattribute)("Lua:FileInsideUserDocumentFolder")
              else
                if (string.match)(l_0_1, "\\users\\[^\\]+\\downloads\\") then
                  (mp.set_mpattribute)("Lua:FileInsideUserDownloadFolder")
                else
                  if (string.match)(l_0_1, "\\users\\[^\\]+\\desktop\\") then
                    (mp.set_mpattribute)("Lua:FileInsideUserDesktopFolder")
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
return mp.CLEAN

