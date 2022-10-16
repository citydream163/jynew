math.randomseed(tostring(os.time()):reverse():sub(1, 7));
if math.random(1,100) > 70 then goto label4 end;
if InTeam(29) == true then goto label0 end;--田伯光
	if InTeam(61) == true then goto label1 end;--欧阳克
	Talk(77, "魔教妖邪，替我师父偿命来。", "", 0);
	if TryBattle(21) == true then goto label2 end;--峨嵋派战峨嵋弟子300
Dead();
do return end;

::label0::
Talk(29, "小尼姑，我带你去过好日子。", "", 0);
AddEthics(-1);
if InTeam(61) == false then goto label3 end;
Talk(61, "这妮子不错。", "", 0);
AddEthics(-1);
::label3::
Talk(77, "小师妹，我们来救你。", "", 0);--峨嵋弟子
if TryBattle(21) == true then goto label2 end;--峨嵋派战峨嵋弟子300
Dead();
do return end;
		
::label1::
Talk(61, "带几个妮子回<color=Red>白驼山</color>做我的徒弟。", "", 0);
Talk(0, "这个主意不赖。", "", 1);
AddEthics(-1);
if InTeam(29) == false then goto label5 end;
Talk(29, "这妮子我要了。", "", 0);
AddEthics(-1);
::label5::
Talk(77, "魔教的淫徒，纳命来。", "", 0);--峨嵋弟子
if TryBattle(21) == true then goto label2 end;--峨嵋派战峨嵋弟子300
Dead();
do return end;

::label2::
LightScence();
AddEthics(-1);
Talk(0, "人太多了，还是快跑吧。", "", 1);
do return end;

::label4::
if InTeam(61) == true then goto label1 end;--欧阳克
Talk(77, "魔教妖邪，替我师父偿命来。", "", 0);
if TryBattle(21) == true then goto label2 end;--峨嵋派战峨嵋弟子300
Dead();
do return end;