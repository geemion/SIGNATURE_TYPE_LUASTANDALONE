-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/254053470526 

-- params : ...
-- function num : 0
do
  if not (mp.get_mpattribute)("attrmatch_rescan_notmyapp") then
    local l_0_0 = pe.query_import
    if l_0_0(pe.IMPORT_STATIC, 4288984855) == 0 then
      return mp.CLEAN
    end
    if l_0_0(pe.IMPORT_STATIC, 3419395426) == 0 and l_0_0(pe.IMPORT_STATIC, 1058758707) == 0 then
      return mp.CLEAN
    end
    if l_0_0(pe.IMPORT_STATIC, 1881577768) == 0 then
      return mp.CLEAN
    end
    if l_0_0(pe.IMPORT_STATIC, 2560256095) == 0 then
      return mp.CLEAN
    end
    if l_0_0(pe.IMPORT_STATIC, 1256947212) == 0 then
      return mp.CLEAN
    end
    if l_0_0(pe.IMPORT_STATIC, 453198482) == 0 then
      return mp.CLEAN
    end
    if l_0_0(pe.IMPORT_STATIC, 133826329) == 0 then
      return mp.CLEAN
    end
    ;
    (mp.set_mpattribute)("attrmatch_rescan_notmyapp")
    ;
    (pe.reemulate)()
  end
  return mp.INFECTED
end

