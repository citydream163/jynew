if jyx2_CheckEventCount(1000,999,2) < 5 then goto label1 end;
::label0::
Talkplus(4281);--0,"这里有片树林。"
do return end;
::label1::
if HaveItem(204) then goto label0 end;
if math.random(0,100) > 50 then goto label0 end;
Add3EventNum(1000,999,0,0,1);--捡到客栈导游券计数器
AddItem(204,1);
Talkplus(4282);--0,"啊，运气真好，还能捡到东西。"
do return end;