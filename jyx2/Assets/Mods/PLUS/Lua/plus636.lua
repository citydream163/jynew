if HaveItem(110) == true then goto label0 end;
    Talk(54, "完成前两道考验后，再回来<color=Red>浡泥岛</color>上。", "", 0);
    do return end;
::label0::
    Talk(0, "袁兄，我找到金蛇山洞了，而且将<color=#F8413E>金蛇剑</color>给拔了出来。我已经通过了前两道考验。", "", 1);
    Talk(54, "很好，接下来让我看看你在江湖上的表现。", "", 0);
    if JudgeEthics(0, 80, 100) == false then goto label1 end;
        Talk(54, "很好，你在江湖中行走这么久，还能保持在正道上，很好。《<color=#A564DB>碧血剑</color>》一书就拿去吧。", "", 0);
        AddItem(156, 1);
        ModifyEvent(-2, -2, -2, -2, 638, -1, -1, -2, -2, -2, -2, -2, -2);
        do return end;
::label1::
        Talk(54, "可惜呀可惜。虽然有了智慧和勇气，但是“仁义”方面还要加强。", "", 0);
        ModifyEvent(-2, -2, -2, -2, 637, -1, -1, -2, -2, -2, -2, -2, -2);
        if AskBattle() == true then goto label2 end;
            do return end;
::label2::
            Talk(0, "袁兄，我没什么时间去增加“仁义”点数了，只好得罪了。", "", 1);
            if TryBattle(101) == true then goto label3 end;
                ModifyEvent(-2, -2, -2, -2, 637, -1, -1, -2, -2, -2, -2, -2, -2);
                LightScence();
                Talk(54, "我还是劝你多做些侠义之事才是。", "", 0);
                do return end;
::label3::
                ModifyEvent(-2, -2, -2, -2, 639, -1, -1, -2, -2, -2, -2, -2, -2);
                LightScence();
                Talk(54, "唉！你又往邪道走近一步，武功这么好，为什么不用在正途上呢？", "", 0);
                AddItem(156, 1);
                AddRepute(2);
do return end;
