Talkplus(3924);--0, "龙姑娘在此度过了一十六年的光景啊。"
if InTeam(58) == true then goto label0 end;
do return end;
::label0::
Talkplus(3925);--58, "我也想过过姑姑过过的生活。"
if AskRest() == true then goto  label1 end;
Talkplus(3926);--0, "咱们还是赶路要紧。"
do return end;
::label1::
DarkScence();
RestFight();
SetRoleFace(3);
LightScence();
if InTeam(59) == true then goto label2 end;
Talkplus(3927);--58, "白驹过隙。"
do return end;
::label2::
Talkplus(3928);--59, "我的过儿长大了。"
do return end;