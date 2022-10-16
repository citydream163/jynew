Talk(0, "<color=Red>白驼山</color>美女如云。", "", 1);

if InTeam(61) == true then goto label0 end;
do return end;
::label0::
    Talk(61, "公子若在此小歇，可叫婢女们服侍。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "多谢欧阳公子，我们还是赶路要紧。", "", 1);
    do return end;
::label1::
	Talk(0, "多谢欧阳公子，我们就在此少歇片刻。", "", 1);
    DarkScence();
    Rest();
    SetRoleFace(3);
    LightScence();

	if InTeam(29) == false then goto label3 end;
	AddEthics(-1);
	Talk(29, "千里独行不如众人同乐。", "", 0);
::label3::	
	if JudgeFemaleInTeam() == false then goto label2 end;
	AddEthics(-1);
	Talk(0, "欧阳公子调教的好。", "", 1);
do return end;
::label2::
	Talk(0, "欧阳公子真是客气。", "", 1);
do return end;
