-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/Detrahere 

-- params : ...
-- function num : 0
Infrastructure_ScanDetrahere = function()
  -- function num : 0_0
  (MpDetection.ScanResource)("regkeyvalue://HKLM\\SYSTEM\\CurrentControlSet\\Control\\Network\\\\set_pt")
end


