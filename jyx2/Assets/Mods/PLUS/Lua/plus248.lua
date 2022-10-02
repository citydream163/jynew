if UseItem(180) == true then goto label0 end;
    do return end;
::label0::
    Talk(31, "啊！这是北宋范宽的真迹“<color=blue>溪山行旅图</color>”，你……你是从何处得来的？", "", 0);
    Talk(0, "这个你不必管。我听江湖上传言，<color=Red>梅庄</color>四庄主好酒，好画，好剑，人称三绝。那想必对我这幅画定是“哈”死了！", "", 1);
    Talk(31, "你这小子，到底有什么企图？", "", 0);
    Talk(0, "“企图”没有，“行旅图”倒是有一幅。", "", 1);
    Talk(31, "小子，少贫嘴，找死嘛？", "", 0);
    Talk(0, "就凭你？帮我搔痒还差不多。", "", 1);
    Talk(31, "啊！气死我了！", "", 0);
    if TryBattle(43) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        LightScence();
        Talk(31, "真是长江后浪推前浪，今日败在你的手里，我也没话可说。", "", 0);
        Talk(0, "承让了，四庄主。", "", 1);
        Talk(31, "小子，你等着，待我去请我三哥。", "", 0);
        DarkScence();
        ModifyEvent(-2, 3, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
        SetScenceMap(-2, 1, 37, 42, 0);
        jyx2_ReplaceSceneObject("", "Dynamic/Door_027", "");--秃笔翁开门
		jyx2_FixMapObject("梅庄求助秃笔翁",1);
        ModifyEvent(-2, 8, 1, 1, 251, -1, -1, 6048, 6048, 6048, -2, -2, -2);
        LightScence();
        AddRepute(2);
        ModifyEvent(-2, 4, 0, 0, 249, -1, -1, -1, -1, -1, -2, -2, -2); --可以拿梨花酒
do return end;
