Talkplus(3860);--0, "白驼山美女如云。"
if InTeam(61) == true then goto label0 end;
do return end;
::label0::
Talkplus(3861);--61, "公子若在此小歇，可叫婢女们服侍。"
if AskRest() == true then goto  label1 end;
Talkplus(3862);--0, "多谢欧阳公子，我们还是赶路要紧。"
do return end;
::label1::
Talkplus(3863);--0, "多谢欧阳公子，我们就在此稍少歇片刻。"
DarkScence();
Rest();
SetRoleFace(3);
LightScence();
if InTeam(29) == false then goto label3 end;
AddEthics(-1);
Talkplus(3864);--29, "万里独行不如众人同乐。"
::label3::	
if JudgeFemaleInTeam() == false then goto label2 end;
AddEthics(-1);
Talkplus(3865);--0, "欧阳公子调教的好。"
do return end;
::label2::
Talkplus(3866);--0, "欧阳公子真是客气。"
do return end;