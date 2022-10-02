if UseItem(183) == true then goto label0 end;
    do return end;
::label0::
    AddEthics(-14);
    AddItemWithoutHint(183, -1);
    Talk(0, "<color=Yellow>乔峰</color>，你看这是什么？", "", 1);
    Talk(50, "是什么？", "", 0);
    Talk(0, "你看了便知道。", "", 1);
    DarkScence();
    PlayMusic(9);
    LightScence();
    Talk(50, "这……这是真的吗？", "", 0);
    Talk(0, "少林方丈亲笔写的，会是假的吗！", "", 1);
    Talk(50, "我……我……我不是汉人……我是契丹人……", "", 0);
    Talk(0, "<color=Yellow>乔峰</color>，你是契丹人，非我汉族人士，怎可担任这<color=Red>丐帮</color>帮主一职，保管《<color=#A564DB>天龙八部</color>》一书呢！", "", 1);
    Talk(50, "你要我怎么做！", "", 0);
    Talk(0, "辞去<color=Red>丐帮</color>帮主之位，交出《<color=#A564DB>天龙八部</color>》一书。", "", 1);
    Talk(50, "好！我今天就辞去这<color=Red>丐帮</color>帮主之位，《<color=#A564DB>天龙八部</color>》一书你拿去吧。", "", 0);
    jyx2_ReplaceSceneObject("", "NPC/qiaofeng", "");--战斗结束，乔峰离开
    DarkScence();
    ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 战斗结束，乔峰离开 场景51-14
    LightScence();
    AddItem(147, 1);
    Talk(0, "得来真是全不费功夫。", "", 1);
    Talk(93, "阁下来此，揭发<color=Yellow>乔峰</color>的真实身份，让我<color=Red>丐帮</color>不致误奉一契丹人为帮主，很是感激。", "", 0);
    Talk(0, "没什么，这是中原武林的大事，小弟应该做的。", "", 1);
    Talk(93, "但是，拜你所赐，我<color=Red>丐帮</color>也将因此事贻笑武林。你拿的《<color=#A564DB>天龙八部</color>》是<color=Red>丐帮</color>镇帮之宝，还请阁下留下。", "", 0);
    Talk(0, "怎么可以，我好不容易才拿到手的。", "", 1);
    Talk(93, "那只好得罪了。", "", 0);
    if TryBattle(84) == true then goto label1 end;
        Dead();
        do return end;
::label1::
        LightScence();
        ModifyEvent(-2, 2, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-2
        ModifyEvent(-2, 3, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-3
        ModifyEvent(-2, 4, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-4
        ModifyEvent(-2, 6, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-6
        ModifyEvent(-2, 7, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-7
        ModifyEvent(-2, 8, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-8
        ModifyEvent(-2, 9, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-9
        ModifyEvent(-2, 10, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-10
        ModifyEvent(-2, 11, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-11
        ModifyEvent(-2, 12, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-12
        ModifyEvent(-2, 13, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-13
        ModifyEvent(-2, 15, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-15
        ModifyEvent(-2, 16, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-16
        ModifyEvent(-2, 17, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-17
        ModifyEvent(-2, 18, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-18
        ModifyEvent(-2, 19, -2, -2, 532, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本532 场景51-19
        AddRepute(5);
do return end;
