Talk(1, "小兄弟，再次造访，是否练就了更高深的武功？胡某候教。", "", 0);
if AskBattle() == true then goto label0 end;
    do return end;
::label0::
    Talk(0, "晚辈斗胆向前辈讨教讨教。", "", 1);
    if TryBattle(7) == false then goto label1 end;
        LightScence();
        Talk(1, "可恨啊！可恨！只恨胡某刀谱不全，未能练成我祖传之<color=orange>胡家刀法</color>……", "", 0);
        ModifyEvent(-2, -2, -2, -2, 3, -2, -2, -2, -2, -2, -2, -2, -2);
        do return end;
::label1::
        LightScence();
        Talk(1, "小兄弟，功夫虽有精进，但火候仍嫌不够。", "", 0);
        Talk(0, "他日再向胡大哥领教刀法。", "", 1);
        ModifyEvent(-2, -2, -2, -2, 4, -2, -2, -2, -2, -2, -2, -2, -2);
do return end;
