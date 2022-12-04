Talkplus(733);--5,"小兄弟想要与老朽切磋武学的奥妙吗？"
if AskBattle() == true then goto label0 end;
do return end;
::label0::
Talkplus(734);--0,"还望前辈指导。"
if TryBattle(22) == false then goto label1 end;
LightScence();
Talkplus(735);--5,"少侠武功已到如此境界，老朽也没什么好教你的了。"
ModifyEvent(-2, -2, -2, -2, 158, -1, -1, -2, -2, -2, -2, -2, -2);
AddRepute(20);
do return end;
::label1::
LightScence();
if JudgeEthics(0, 50, 100) == true then goto label2 end;
Talkplus(736);--5,"小兄弟，看来你还需再下一番努力才是。"
do return end;
::label2::
if JudgeAttack(0, 0, 100) == true then goto label3 end;
Talkplus(737);--5,"小兄弟，看来你还需再下一番努力才是。"
do return end;
::label3::
Talkplus(738);--5,"小兄弟资质不错，我这有一些提升轻功的心得，你拿去好好参详吧。"
Talkplus(739);--0,"谢谢前辈。"
AddItem(45, 1);
ModifyEvent(-2, -2, -2, -2, 156, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;