-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#RtpLogSkipLinux 

-- params : ...
-- function num : 0
local l_0_0 = function(l_1_0, l_1_1)
  -- function num : 0_0
  do return l_1_1 ~= nil and l_1_0 ~= nil and #l_1_1 <= #l_1_0 and (string.sub)(l_1_0, 1, (string.len)(l_1_1)) == l_1_1 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

local l_0_1 = function(l_2_0, l_2_1)
  -- function num : 0_1
  do return l_2_1 ~= nil and l_2_0 ~= nil and #l_2_0 == #l_2_1 and l_2_0 == l_2_1 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

local l_0_2 = function(l_3_0, l_3_1)
  -- function num : 0_2
  do return l_3_1 == "" or l_3_0:sub(-#l_3_1) == l_3_1 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

local l_0_3 = (skip.get_contextdata)(skip.CONTEXT_DATA_PROCESSNAME)
local l_0_4 = (skip.get_contextdata)(skip.CONTEXT_DATA_PROCESSDEVICEPATH)
local l_0_5 = (skip.get_contextdata)(skip.CONTEXT_DATA_FILEPATH)
if l_0_0(l_0_4, "/usr/lib/gcc") and l_0_1(l_0_3, "cc1plus") then
  if l_0_0(l_0_5, "/usr/lib") then
    return 1
  end
  if l_0_0(l_0_5, "/lib") then
    return 1
  end
end
if l_0_0(l_0_5, "/var/log/") then
  if l_0_2(l_0_5, ".log") and (l_0_2(l_0_4, "/nginx") or l_0_2(l_0_4, "/httpd") or l_0_2(l_0_4, "/apache2") or l_0_2(l_0_4, "/mysqld") or l_0_2(l_0_4, "/postgres")) then
    return 1
  end
  if l_0_2(l_0_5, ".journal") and l_0_2(l_0_4, "/systemd-journald") then
    return 1
  end
end
if l_0_2(l_0_5, ".TXT") and l_0_2(l_0_4, "/bin/ucxjlx6") then
  return 1
end
return 0

