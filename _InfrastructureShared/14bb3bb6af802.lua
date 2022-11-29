-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/14bb3bb6af802 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0["cmd.exe"] = true
l_0_0["powershell.exe"] = true
local l_0_1 = {}
l_0_1["cscript.exe"] = true
l_0_1["wscript.exe"] = true
local l_0_2 = {}
l_0_2["python.exe"] = true
l_0_2["perl.exe"] = true
l_0_2["java.exe"] = true
local l_0_3 = nil
if (this_sigattrlog[1]).matched then
  l_0_3 = (this_sigattrlog[1]).ppid
else
  return mp.CLEAN
end
local l_0_4 = nil
local l_0_5 = false
if (this_sigattrlog[2]).matched then
  local l_0_6 = (string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p2))
  if (string.find)(l_0_6, "/query", 1, true) == nil and (string.find)(l_0_6, "/delete", 1, true) == nil then
    l_0_5 = true
  end
  l_0_4 = (this_sigattrlog[2]).ppid
else
  do
    if (this_sigattrlog[3]).matched then
      l_0_5 = true
      l_0_4 = (this_sigattrlog[3]).ppid
    else
      if (this_sigattrlog[4]).matched then
        l_0_4 = (this_sigattrlog[4]).ppid
      else
        if (this_sigattrlog[5]).matched then
          l_0_4 = (this_sigattrlog[5]).ppid
        else
          if (this_sigattrlog[6]).matched then
            l_0_4 = (this_sigattrlog[6]).ppid
          else
            if (this_sigattrlog[7]).matched then
              l_0_4 = (this_sigattrlog[7]).ppid
            else
              if (this_sigattrlog[8]).matched then
                l_0_4 = (this_sigattrlog[8]).ppid
              else
                if (this_sigattrlog[9]).matched then
                  l_0_4 = (this_sigattrlog[9]).ppid
                else
                  if (this_sigattrlog[10]).matched then
                    l_0_4 = (this_sigattrlog[10]).ppid
                  else
                    if (this_sigattrlog[11]).matched then
                      l_0_4 = (this_sigattrlog[11]).ppid
                    else
                      if (this_sigattrlog[12]).matched then
                        l_0_4 = (this_sigattrlog[12]).ppid
                      else
                        return mp.CLEAN
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
    for l_0_10 = 1, 6 do
      if l_0_10 > 7 then
        return mp.CLEAN
      end
      local l_0_11, l_0_12 = (bm.get_process_relationships)(l_0_3)
      for l_0_16,l_0_17 in ipairs(l_0_12) do
        if l_0_17.image_path ~= nil and l_0_17.reason == 1 then
          if l_0_17.ppid == l_0_4 then
            return mp.CLEAN
          end
          local l_0_18 = (string.lower)((string.match)(l_0_17.image_path, "\\([^\\]+)$"))
          do
            do
              if l_0_0[l_0_18] == true or l_0_1[l_0_18] == true or l_0_2[l_0_18] == true then
                local l_0_19 = (string.lower)((mp.GetProcessCommandLine)(l_0_17.ppid))
                if l_0_19 == nil or l_0_19 == "" or (string.find)(l_0_19, "\\windows\\ccm\\systemtemp\\", 1, true) == nil and (string.find)(l_0_19, "\\windows\\ccmcache\\", 1, true) == nil then
                  if l_0_5 == true then
                    return mp.INFECTED
                  else
                    ;
                    (mp.ReportLowfi)(l_0_17.image_path, 864567885)
                  end
                end
              end
              ;
              (bm.add_related_file)(l_0_17.image_path)
              l_0_3 = l_0_17.ppid
              -- DECOMPILER ERROR at PC247: LeaveBlock: unexpected jumping out DO_STMT

              -- DECOMPILER ERROR at PC247: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC247: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
        end
      end
    end
    do return mp.CLEAN end
    -- DECOMPILER ERROR at PC253: Confused about usage of register R7 for local variables in 'ReleaseLocals'

  end
end

