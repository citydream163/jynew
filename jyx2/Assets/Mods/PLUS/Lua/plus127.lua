Talk(8, "小兄弟别在<color=Red>崆峒派</color>逗留了，我六大派即将围攻魔教总坛<color=Red>光明顶</color>了。", "", 0);
if AskBattle() == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "在下愿领教领教<color=Red>崆峒派</color>的<color=#A564DB>七伤拳</color>绝技。", "", 1);
    Talk(8, "小子，你自寻死路。", "", 0);
    if TryBattle(16) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        LightScence();
        Talk(0, "<color=#A564DB>七伤拳</color>也不过如此。", "", 1);
        Talk(8, "哼！小兄弟留下个字号，他日我<color=Yellow>唐文亮</color>再向你请教。", "", 0);
        Talk(0, "字号？好吧，记着，“软世派河洛分舵”金庸堂堂主是也。", "", 1);
        Talk(8, "“软世派河洛分舵”？没听过。", "", 0);
        ModifyEvent(-2, -2, -2, -2, 128, -1, -1, -2, -2, -2, -2, -2, -2);
        AddRepute(3);
do return end;
