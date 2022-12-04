if math.random(1,100) > 70 then goto label4 end;
	if InTeam(29) == true then goto label0 end;--田伯光
		if InTeam(61) == true then goto label1 end;--欧阳克
			Talkplus(3965);--77, "魔教妖邪，替我师父偿命来。"
			if TryBattle(21) == true then goto label2 end;--峨嵋派战峨嵋弟子300
Dead();
do return end;
::label0::
Talkplus(3966);--29, "小尼姑，我带你去过好日子。"
AddEthics(-1);
if InTeam(61) == false then goto label3 end;
Talkplus(3967);--61, "这妮子不错。"
AddEthics(-1);
::label3::
Talkplus(3968);--77, "小师妹，我们来救你。"--峨嵋弟子
if TryBattle(21) == true then goto label2 end;--峨嵋派战峨嵋弟子300
Dead();
do return end;
::label1::
Talkplus(3969);--61, "带几个妮子回白驼山做我的徒弟。"
Talkplus(3970);--0, "这个主意不赖。"
AddEthics(-1);
if InTeam(29) == false then goto label5 end;
Talkplus(3971);--29, "这妮子我要了。"
AddEthics(-1);
::label5::
Talkplus(3972);--77, "魔教的淫徒，纳命来。"--峨嵋弟子
if TryBattle(21) == true then goto label2 end;--峨嵋派战峨嵋弟子300
Dead();
do return end;
::label2::
LightScence();
AddEthics(-1);
Talkplus(3973);--0, "人太多了，还是快跑吧。"
do return end;
::label4::
if InTeam(61) == true then goto label1 end;--欧阳克
Talkplus(3974);--77, "魔教妖邪，替我师父偿命来。"
if TryBattle(21) == true then goto label2 end;--峨嵋派战峨嵋弟子300
Dead();
do return end;