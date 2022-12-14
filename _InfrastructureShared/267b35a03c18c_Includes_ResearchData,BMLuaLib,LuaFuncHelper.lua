-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/267b35a03c18c_Includes_ResearchData,BMLuaLib,LuaFuncHelper 

-- params : ...
-- function num : 0
if isFirstTimeATActive() == false then
  return mp.CLEAN
end
local l_0_0, l_0_1 = nil, nil
if (this_sigattrlog[6]).matched then
  l_0_0 = "AdvancedIPScanner"
  l_0_1 = 1
else
  if (this_sigattrlog[5]).matched then
    l_0_0 = "IObitUnlocker"
    l_0_1 = 42
  else
    if (this_sigattrlog[7]).matched then
      l_0_0 = "advanced_port_scanner.exe"
      l_0_1 = 3
    else
      if (this_sigattrlog[4]).matched then
        l_0_0 = "IObitUninstaller"
        l_0_1 = 43
      else
        if (this_sigattrlog[8]).matched then
          l_0_0 = "psexec.c"
          l_0_1 = 98
        else
          if (this_sigattrlog[9]).matched then
            l_0_0 = "psexesvc.exe"
            l_0_1 = 99
          else
            if (this_sigattrlog[10]).matched then
              l_0_0 = "MegaSync"
              l_0_1 = 109
            else
              if (this_sigattrlog[11]).matched then
                l_0_0 = "Radmin.exe"
                l_0_1 = 110
              else
                if (this_sigattrlog[12]).matched then
                  l_0_0 = "Npcap"
                  l_0_1 = 111
                end
              end
            end
          end
        end
      end
    end
  end
end
local l_0_2 = tonumber((this_sigattrlog[2]).utf8p2)
local l_0_3 = math_floor(l_0_1 / 100) + 1
local l_0_4, l_0_5, l_0_6 = getFTATData(l_0_3, l_0_1, 3, l_0_0, l_0_2)
if l_0_4 == false then
  return mp.CLEAN
end
if l_0_6 < 2592000 and l_0_6 > 0 then
  return mp.CLEAN
end
;
(bm.add_related_file)(l_0_5)
;
(bm.add_related_string)("FirstTime", l_0_4, bm.RelatedStringBMReport)
;
(bm.set_detection_string)(l_0_4)
local l_0_7, l_0_8 = (bm.get_process_relationships)()
for l_0_12,l_0_13 in ipairs(l_0_8) do
  local l_0_14 = (mp.bitand)(l_0_13.reason_ex, 1)
  if l_0_13.ppid ~= nil and l_0_13.image_path ~= nil and l_0_14 == 1 then
    (bm.add_related_file)(l_0_13.image_path)
  end
end
add_parents()
reportSessionInformation()
return mp.INFECTED

