-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/215b394af5a87 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 600000000 then
  return mp.CLEAN
end
local l_0_0, l_0_1 = nil, nil
if (this_sigattrlog[15]).matched and (this_sigattrlog[15]).utf8p2 ~= nil then
  l_0_0 = (string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[15]).utf8p2))
  if (string.find)(l_0_0, "/upload", 1, true) ~= nil then
    return mp.CLEAN
  end
  l_0_1 = (string.match)(l_0_0, "\\([^\\]+)$")
else
  return mp.CLEAN
end
do
  if (this_sigattrlog[16]).matched and (this_sigattrlog[16]).utf8p2 ~= nil then
    local l_0_2 = (string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[16]).utf8p2))
    if (string.find)(l_0_2, l_0_1, 1, true) ~= nil then
      return mp.INFECTED
    end
  end
  do
    if (this_sigattrlog[17]).matched and (this_sigattrlog[17]).utf8p2 ~= nil then
      local l_0_3 = (string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[17]).utf8p2))
      if (string.find)(l_0_3, l_0_1, 1, true) ~= nil then
        return mp.INFECTED
      end
    end
    do
      if (this_sigattrlog[18]).matched and (this_sigattrlog[18]).utf8p2 ~= nil then
        local l_0_4 = (string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[18]).utf8p2))
        if (string.find)(l_0_4, l_0_1, 1, true) ~= nil then
          return mp.INFECTED
        end
      end
      do
        if (this_sigattrlog[19]).matched and (this_sigattrlog[19]).utf8p2 ~= nil then
          local l_0_5 = (string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[19]).utf8p2))
          if (string.find)(l_0_5, l_0_1, 1, true) ~= nil then
            return mp.INFECTED
          end
        end
        do
          if (this_sigattrlog[20]).matched and (this_sigattrlog[20]).utf8p2 ~= nil then
            local l_0_6 = (string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[20]).utf8p2))
            if (string.find)(l_0_6, l_0_1, 1, true) ~= nil then
              return mp.INFECTED
            end
          end
          return mp.CLEAN
        end
      end
    end
  end
end

