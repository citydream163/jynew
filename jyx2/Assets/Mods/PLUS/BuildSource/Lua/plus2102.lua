Talkplus(4169);--0, "想不到此处遍布奇门五行。"
if InTeam(63) == true then goto label0 end;
do return end;
::label0::
Talkplus(4170);--63, "公子若在此小歇，可恢复状态。"
if AskRest() == true then goto  label1 end;
Talkplus(4171);--0, "程姑娘真是有心之人，我们还是先赶路吧。"
do return end;
::label1::
Talkplus(4172);--0, "程姑娘有心了，给程姑娘添麻烦了。"
DarkScence();
Rest();
SetRoleFace(3);
LightScence();
if InTeam(29) == false then goto label2 end;
AddEthics(-1);
Talkplus(4173);--29, "五行八卦，奇门遁甲。"
::label2::
if InTeam(61) == false then goto label3 end;
AddEthics(-2);
Talkplus(4174);--61, "美人如斯，后会有期。"
::label3::	
Talkplus(4175);--0, "真是神清气爽呢。"
do return end;