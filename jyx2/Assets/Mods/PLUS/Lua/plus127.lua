Talkplus(626);--8,"小兄弟别在崆峒派逗留了，我六大派即将围攻魔教总坛光明顶了。"
if AskBattle() == true then goto label0 end;
do return end;
::label0::
Talkplus(627);--0,"在下愿领教领教崆峒派的七伤拳绝技。"
Talkplus(628);--8,"小子，你自寻死路。"
if TryBattle(16) == true then goto label1 end;
Dead();
do return end;
::label1::
LightScence();
Talkplus(629);--0,"七伤拳也不过如此。"
Talkplus(630);--8,"哼！小兄弟留下个字号，他日我唐文亮再向你请教。"
Talkplus(631);--0,"字号？好吧，记着，“软世派河洛分舵”金庸堂堂主是也。"
Talkplus(632);--8,"“软世派河洛分舵”？没听过。"
ModifyEvent(-2, -2, -2, -2, 128, -1, -1, -2, -2, -2, -2, -2, -2);
AddRepute(3);
do return end;