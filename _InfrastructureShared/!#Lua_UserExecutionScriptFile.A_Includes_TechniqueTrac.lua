-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_UserExecutionScriptFile.A_Includes_TechniqueTrac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_AMSI then
  local l_0_1, l_0_2 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_APPNAME)
  local l_0_3 = {}
  l_0_3.vbs = true
  l_0_3.ps1 = true
  l_0_3[".js"] = true
  l_0_3.jse = true
  l_0_3.vbe = true
  if l_0_1 then
    local l_0_4, l_0_5 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME)
    if l_0_4 and l_0_5 ~= nil then
      local l_0_6 = (string.lower)(l_0_5)
      local l_0_7 = (string.sub)(l_0_6, -3)
      if l_0_7 ~= nil and l_0_3[l_0_7] == true then
        if l_0_6:find("\\desktop\\", 1, true) and not l_0_6:find("\\tanium\\", 1, true) and (sysio.IsFileExists)(l_0_5) then
          TrackPidAndTechnique("AMSI", "T1204", "UserExecution")
          ;
          (mp.ReportLowfi)(l_0_5, 2338371394)
          return mp.INFECTED
        else
          if l_0_6:find("\\downloads\\", 1, true) and not l_0_6:find("\\tanium\\", 1, true) and (sysio.IsFileExists)(l_0_5) then
            TrackPidAndTechnique("AMSI", "T1204", "UserExecution")
            ;
            (mp.ReportLowfi)(l_0_5, 4234643412)
            return mp.INFECTED
          end
        end
      end
    end
  end
  do
    do
      do return mp.CLEAN end
      return mp.CLEAN
    end
  end
end

