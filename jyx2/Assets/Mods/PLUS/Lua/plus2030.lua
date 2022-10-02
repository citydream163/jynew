Talk(0, "如此清幽之地。", "", 1);
	Talk(52, "小兄弟若想在此钻研棋弈，老朽自当奉陪。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "多谢老先生美意，我们还要赶路，下次专程来和您探讨棋弈。", "", 1);
    do return end;
::label1::
    DarkScence();
    RestFight();
    SetRoleFace(1);
    LightScence();
	Talk(0, "钻研棋弈需要耐心。", "", 1);
do return end;

