Talkplus(3823);--0, "苗家陈设确实与众不同。"
if InTeam(25) == true then goto label0 end;
do return end;
::label0::
Talkplus(3824);--25, "公子若不嫌弃，可在此小憩。"
if AskRest() == true then goto  label1 end;
Talkplus(3825);--0, "蓝教主的好意在下心领了，我还急着赶路。"
do return end;
::label1::
Talkplus(3826);--0, "多谢蓝教主招待。"
DarkScence();
Rest();
SetRoleFace(3);
LightScence();
Talkplus(3827);--0, "神清气爽。"
do return end;