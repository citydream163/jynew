if InTeam(63) == true then goto label0 end;
Talkplus(2150);--56, "听了郭大侠说了这么多教，记着没有。"
do return end;
::label0::
Talkplus(2151);--63, "好久不见，不知师姊过的可好？"
Talkplus(2152);--56, "师妹娇脸凝脂，眉黛鬓青，宛然仍是十多年前的好女儿颜色。"
if InTeam(58) == true then 
	Talkplus(2153);--63, "有君子相伴，纵横江湖，不甚快哉。"
	Talkplus(2154);--56, "师妹开心最好。"
else
	Talkplus(2155);--63, "和这位兄弟一起纵横江湖，稍慰我心。"
end;
Talkplus(2156);--0, "黄女侠和程姑娘姐妹情深啊。"
Talkplus(2157);--56, "听了郭大侠说了这么多教，记着没有。"
ModifyEvent(-2, -2, 0, -1, 2096, -1, -1, -1, -1, -1, -1, -2, -2);
do return end;