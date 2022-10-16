Talk(21, "阁下又来我<color=Red>恒山派</color>做什么？我<color=Yellow>定闲</color>可是不承认这五岳派的。", "", 0);
if AskBattle() == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "好啊，你居然不承认我五岳派，看来得再教训教训你。", "", 1);
    if TryBattle(39) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        LightScence();
        AddEthics(-1);
do return end;
