if HaveItem(143) == false then goto label0 end;
    do return end;
::label0::	
Talk(72, "年轻人，漂泊至此，可以先休息一下恢复恢复。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "多谢孔堂主，我急着要去闯荡江湖。", "", 1);
    do return end;
::label1::
    DarkScence();
    Rest();
    SetRoleFace(1);
    LightScence();
	Talk(0, "谢谢孔堂主，我要继续闯荡江湖去。", "", 1);
do return end;
