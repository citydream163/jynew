Talk(15, "你又想做什么？", "", 0);
if AskBattle() == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "晚辈斗胆向前辈讨教讨教。", "", 1);
    Talk(15, "好，咱们来玩玩。", "", 0);
    if TryBattle(132) == false then goto label1 end;
        LightScence();
        Talk(15, "小子，过些时候，我<color=Yellow>金花婆婆</color>再向你讨教。", "", 0);
        Talk(0, "我会等您的。", "", 1);
        do return end;
::label1::
        LightScence();
        Talk(15, "看你资质挺好的，老婆婆我不想杀你，你走吧。", "", 0);
do return end;
