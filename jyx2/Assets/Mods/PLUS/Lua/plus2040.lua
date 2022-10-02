Talk(56, "记着郭大侠说过的话，可在此稍作休整。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "多谢黄女侠。", "", 1);
    do return end;
::label1::
    DarkScence();
    RestFight();
    SetRoleFace(3);
    LightScence();
	Talk(0, "黄女侠告辞，我要去闯荡江湖了。", "", 1);
do return end;
