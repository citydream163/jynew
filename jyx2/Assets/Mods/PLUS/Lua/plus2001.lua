Talk(0, "走了这么远的路，好想休息一下呀。", "", 1);

if InTeam(1) == true then goto label0 end;
do return end;
::label0::
    Talk(1, "兄弟们，大伙在我家休息一下再走吧。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "下次再来叨扰胡大哥。", "", 1);
    do return end;
::label1::
    Talk(0, "好，尊敬不如从命，叨扰胡大哥了。", "", 1);
    DarkScence();
    Rest();
    SetRoleFace(3);
    LightScence();
	Talk(0, "多谢胡大哥招待，我们闯荡江湖去。", "", 1);
do return end;
