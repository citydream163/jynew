Talk(0, "<color=Red>蝴蝶谷</color>好去处。", "", 1);

if InTeam(16) == true then goto label0 end;
	if InTeam(17) == true then goto label2 end;
	do return end;
::label2::
    Talk(17, "少侠若倦了，可在弊处歇息一晚再走。", "", 0);
	if AskRest() == true then goto  label3 end;
	Talk(0, "多谢王前辈，我们还是赶路要紧。", "", 1);
    do return end;
::label3::
    Talk(0, "多谢王前辈，叨扰了。", "", 1);
    DarkScence();
    Rest();
    SetRoleFace(0);
    LightScence();
	Talk(0, "身上轻松多了。", "", 1);
do return end;

do return end;
::label0::
    Talk(16, "少侠若倦了，可在弊处歇息一晚再走。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "多谢胡先生，我们还是赶路要紧。", "", 1);
    do return end;
::label1::
    Talk(0, "多谢胡先生，叨扰了。", "", 1);
    DarkScence();
    Rest();
    SetRoleFace(0);
    LightScence();
	Talk(0, "身上舒服多了。", "", 1);
do return end;
