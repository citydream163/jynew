Talkplus(3833);--0, "<color=Red>蝴蝶谷</color>好去处。"
if InTeam(16) == true then goto label0 end;
	if InTeam(17) == true then goto label2 end;
do return end;
::label2::
Talkplus(3834);--17, "少侠若倦了，可在弊处歇息一晚再走。"
if AskRest() == true then goto  label3 end;
Talkplus(3835);--0, "多谢王前辈，我们还是赶路要紧。"
do return end;
::label3::
Talkplus(3836);--0, "多谢王前辈，叨扰了。"
DarkScence();
Rest();
SetRoleFace(0);
LightScence();
Talkplus(3837);--0, "身上轻松多了。"
do return end;
::label0::
Talkplus(3838);--16, "少侠若倦了，可在弊处歇息一晚再走。"
if AskRest() == true then goto  label1 end;
Talkplus(3839);--0, "多谢胡先生，我们还是赶路要紧。"
do return end;
::label1::
Talkplus(3840);--0, "多谢胡先生，叨扰了。"
DarkScence();
Rest();
SetRoleFace(0);
LightScence();
Talkplus(3841);--0, "身上舒服多了。"
do return end;