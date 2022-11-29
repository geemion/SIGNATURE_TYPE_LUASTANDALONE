-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8db3fda88bfc 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil and (string.len)(l_0_0) >= 15 then
  local l_0_1 = {}
  l_0_1["services.exe"] = true
  l_0_1["msmpeng.exe"] = true
  l_0_1["trustedinstaller.exe"] = true
  l_0_1["tiworker.exe"] = true
  l_0_1["poqexec.exe"] = true
  l_0_1["mbamservice.exe"] = true
  l_0_1["osrssinst.exe"] = true
  l_0_1["core.exe"] = true
  l_0_1["instup.exe"] = true
  l_0_1["tguard.exe"] = true
  l_0_1["nortonsecurity.exe"] = true
  l_0_1["mfehidin.exe"] = true
  l_0_1["mfeamcin.exe"] = true
  l_0_1["avp.exe"] = true
  l_0_1["computerztray.exe"] = true
  l_0_1["w32tm.exe"] = true
  l_0_1["printisolationhost.exe"] = true
  l_0_1["xlserviceplatform.exe"] = true
  l_0_1["zhudongfangyu.exe"] = true
  l_0_1["qqlivesetupex.exe"] = true
  local l_0_2 = l_0_0:match("\\([^\\]+)$")
  if l_0_2 ~= nil then
    l_0_2 = (string.lower)(l_0_2)
    if l_0_1[l_0_2] then
      return mp.CLEAN
    end
  end
end
do
  local l_0_3 = nil
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    l_0_3 = (string.lower)((this_sigattrlog[1]).utf8p2)
  end
  if l_0_3:find("\\spool\\drivers\\x64\\3\\printconfig.dll") then
    return mp.CLEAN
  else
    if l_0_3:find("\\windows\\system32\\hpzipm12.dll") then
      return mp.CLEAN
    end
  end
  if l_0_3 ~= nil then
    local l_0_4 = (mp.GetExecutablesFromCommandLine)(l_0_3)
    for l_0_8,l_0_9 in ipairs(l_0_4) do
      l_0_9 = (mp.ContextualExpandEnvironmentVariables)(l_0_9)
      if (sysio.IsFileExists)(l_0_9) then
        (bm.add_related_file)(l_0_9)
      end
    end
  end
  do
    l_0_4 = MpCommon
    l_0_4 = l_0_4.GetPersistContextNoPath
    l_0_4 = l_0_4("ServiceCreationScript")
    local l_0_10 = nil
    if l_0_4 then
      l_0_10 = ipairs
      l_0_10 = l_0_10(l_0_4)
      for l_0_14,l_0_15 in l_0_10 do
        local l_0_15 = nil
        l_0_15 = sysio
        l_0_15 = l_0_15.IsFileExists
        l_0_15 = l_0_15(l_0_14)
        if l_0_15 then
          l_0_15 = bm
          l_0_15 = l_0_15.add_related_file
          l_0_15(l_0_14)
        end
      end
    end
    do
      do return mp.INFECTED end
      -- DECOMPILER ERROR at PC135: Confused about usage of register R3 for local variables in 'ReleaseLocals'

    end
  end
end

