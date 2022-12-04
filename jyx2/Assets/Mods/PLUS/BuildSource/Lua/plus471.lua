if InTeam(63) == true then goto label0 end;
Talkplus(2173);--56, "要成为一个真正的侠客，或是只想拥有高强的武功，就看你自己了。"
do return end;
::label0::
Talkplus(2174);--63, "好久不见，不知师姊过的可好？"
Talkplus(2175);--56, "师妹眉目如画，清雅秀丽，尤似当年模样。"
if InTeam(58) == false then 
	Talkplus(2176);--63, "有匪君子，终不可谖兮！"
	Talkplus(2177);--56, "师妹香闺寂寞，相思难遣。"
else
	Talkplus(2178);--63, "和这位兄弟一起纵横江湖，稍慰我心。"
end;
Talkplus(2179);--0, "黄女侠和程姑娘话多的说不完啊。"
Talkplus(2180);--56, "要成为一个真正的侠客，或是只想拥有高强的武功，就看你自己了。"
ModifyEvent(-2, -2, 0, -1, 2098, -1, -1, -1, -1, -1, -1, -2, -2);
do return end;