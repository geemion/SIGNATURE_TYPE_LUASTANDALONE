-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/353789d67f9cf_Flags_1 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 4 then
  (mp.changedetectionname)(805306394)
  return mp.INFECTED
end
if (hstrlog[14]).matched then
  (mp.changedetectionname)(805306403)
end
if (hstrlog[6]).matched or (hstrlog[7]).matched or (hstrlog[9]).matched then
  if (hstrlog[1]).matched then
    local l_0_0 = (string.format)("HSTR:VirTool:Win32/Obfuscator.ZG_%08X_02_0100", (hstrlog[1]).VA + 6)
    ;
    (mp.set_mpattribute)(l_0_0)
  else
    do
      if (hstrlog[2]).matched then
        local l_0_1 = (string.format)("HSTR:VirTool:Win32/Obfuscator.ZG_%08X_02_0200", (hstrlog[2]).VA + 40)
        ;
        (mp.set_mpattribute)(l_0_1)
      else
        do
          if (hstrlog[3]).matched then
            local l_0_2 = (string.format)("HSTR:VirTool:Win32/Obfuscator.ZG_%08X_02_0200", (hstrlog[3]).VA + 35)
            ;
            (mp.set_mpattribute)(l_0_2)
          else
            do
              do
                if (hstrlog[5]).matched then
                  local l_0_3 = (string.format)("HSTR:VirTool:Win32/Obfuscator.ZG_%08X_02_0200", (hstrlog[5]).VA + 15)
                  ;
                  (mp.set_mpattribute)(l_0_3)
                end
                return mp.SUSPICIOUS
              end
            end
          end
        end
      end
    end
  end
end

