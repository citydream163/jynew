if AskRest() == true then goto  label3 end;
Talkplus(4021);--0, "我不该在这里睡觉。"
do return end;
::label3::
if InTeam(29) == false then goto label0 end;--田伯光
AddEthics(-1);
Talkplus(4022);--29, "小尼姑，我带你去过好日子。"
::label0::
if InTeam(61) == false then goto label1 end;--欧阳克
AddEthics(-1);
Talkplus(4023);--61, "我也带一个回白驼山做我的徒弟吧。"
::label1::
Talkplus(4024);--0, "这床好香啊。"
Talkplus(4025);--21, "大胆淫贼，你把无色庵当作什么地方了。"
if TryBattle(24) == true then goto label2 end;
Dead();
do return end;
::label2::
LightScence();
AddEthics(-1);
Talkplus(4026);--0, "完了，把人打坏了，快溜吧。"
jyx2_WalkFromTo(-1,2526);
do return end;