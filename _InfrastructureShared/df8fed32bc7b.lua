-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/df8fed32bc7b 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("AGGR:XlsHasMacroSheet") ~= true and (mp.get_mpattribute)("MpExcelFormulaRoutines") ~= true then
  return mp.CLEAN
end
local l_0_0 = 0
local l_0_1 = (hstrlog[6]).hitcount + (hstrlog[5]).hitcount
if l_0_1 >= 5 then
  (mp.set_mpattribute)("XlmMacro/FormulaFuncGTE5")
  ;
  (mp.set_mpattribute)("XlmMacro/FormulaFunc:" .. l_0_1)
  l_0_0 = l_0_0 + 1
end
if (hstrlog[1]).hitcount >= 30 then
  (mp.set_mpattribute)("XlmMacro/CharConcatGTE30")
  ;
  (mp.set_mpattribute)("XlmMacro/CharConcat:" .. (hstrlog[1]).hitcount)
  l_0_0 = l_0_0 + 1
end
if (hstrlog[2]).hitcount >= 1 then
  (mp.set_mpattribute)("XlmMacro/CharAdditionGTE10")
  ;
  (mp.set_mpattribute)("XlmMacro/CharAddition:" .. (hstrlog[2]).hitcount)
  l_0_0 = l_0_0 + 1
end
if (hstrlog[3]).hitcount >= 1 then
  (mp.set_mpattribute)("XlmMacro/CharSubtractGTE10")
  ;
  (mp.set_mpattribute)("XlmMacro/CharSubtract:" .. (hstrlog[3]).hitcount)
  l_0_0 = l_0_0 + 1
end
if (hstrlog[7]).hitcount >= 5 then
  (mp.set_mpattribute)("XlmMacro/runFuncGTE5")
  ;
  (mp.set_mpattribute)("XlmMacro/runFunc:" .. (hstrlog[7]).hitcount)
  l_0_0 = l_0_0 + 1
end
if (hstrlog[8]).hitcount >= 1 then
  (mp.set_mpattribute)("XlmMacro/execFuncGTE1")
  ;
  (mp.set_mpattribute)("XlmMacro/execFunc:" .. (hstrlog[8]).hitcount)
  l_0_0 = l_0_0 + 1
end
if (hstrlog[9]).hitcount >= 1 then
  (mp.set_mpattribute)("XlmMacro/registerFuncGTE1")
  ;
  (mp.set_mpattribute)("XlmMacro/registerFunc:" .. (hstrlog[9]).hitcount)
  l_0_0 = l_0_0 + 1
end
local l_0_2 = (hstrlog[10]).hitcount + (hstrlog[11]).hitcount + (hstrlog[12]).hitcount + (hstrlog[13]).hitcount
if l_0_2 >= 1 then
  (mp.set_mpattribute)("XlmMacro/callFuncGTE1")
  ;
  (mp.set_mpattribute)("XlmMacro/callFunc:" .. l_0_2)
  l_0_0 = l_0_0 + 1
end
if (hstrlog[14]).hitcount >= 1 then
  (mp.set_mpattribute)("XlmMacro/evalConcatFuncGTE1")
  ;
  (mp.set_mpattribute)("XlmMacro/evalConcatFunc:" .. (hstrlog[14]).hitcount)
  l_0_0 = l_0_0 + 1
end
if (hstrlog[4]).hitcount >= 1 then
  (mp.set_mpattribute)("XlmMacro/fileDeleteFuncGTE1")
  ;
  (mp.set_mpattribute)("XlmMacro/fileDeleteFunc:" .. (hstrlog[4]).hitcount)
  l_0_0 = l_0_0 + 1
end
if (hstrlog[15]).hitcount >= 1 then
  (mp.set_mpattribute)("XlmMacro/concatOperatorX5")
  ;
  (mp.set_mpattribute)("XlmMacro/concatOperatorX5:" .. (hstrlog[15]).hitcount)
  l_0_0 = l_0_0 + 1
end
local l_0_3 = (hstrlog[16]).hitcount + (hstrlog[17]).hitcount + (hstrlog[18]).hitcount + (hstrlog[19]).hitcount + (hstrlog[20]).hitcount + (hstrlog[21]).hitcount + (hstrlog[22]).hitcount
if l_0_3 >= 4 then
  (mp.set_mpattribute)("XlmMacro/concatenateFuncGTE4")
  ;
  (mp.set_mpattribute)("XlmMacro/concatenateFunc:" .. l_0_3)
  l_0_0 = l_0_0 + 1
end
if l_0_0 >= 4 then
  return mp.LOWFI
end
return mp.CLEAN

