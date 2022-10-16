Talk(0, "杨兄，长年待在这<color=Red>古墓</color>中，你受的了吗？", "", 1);
Talk(58, "习惯就好了，龙儿还从小就住在这呢，这是我们古墓派的传统。", "", 0);
Talk(0, "兄弟近来如何？", "", 1);
ModifyEvent(-2, -2, -2, -2, 439, -1, -1, -2, -2, -2, -2, -2, -2);
if AskJoin () == true then goto label0 end;
    Talk(0, "一切顺利，你夫妇俩可还好吧。", "", 1);
    Talk(58, "托你的福，一切还好。", "", 0);
    do return end;
::label0::
    Talk(0, "近日旅途有些不顺，此次前来是想请杨兄加入，助我一臂之力。", "", 1);
    Talk(58, "那有什么问题，别的没有，就是有“一臂”。", "", 0);
    Talk(0, "杨兄说笑了。", "", 1);
    Talk(58, "此次重出江湖，正好试试新练成的“<color=orange>黯然销魂掌</color>”。", "", 0);
    Talk(0, "那就走吧。", "", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(58, "你的队伍已满，我无法加入。", "", 0);
        do return end;
::label1::
        DarkScence();
        jyx2_ReplaceSceneObject("", "NPC/杨过", "");--杨过加入队伍       
        ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);      
        LightScence();
        Join(58);

do return end;
