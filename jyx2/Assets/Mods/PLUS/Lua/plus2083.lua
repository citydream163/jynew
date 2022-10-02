Talk(0, "杨兄怎么跑到这里来的？", "", 1);
if AskJoin () == true then goto label0 end;
    Talk(0, "杨兄跑的真快。", "", 1);
    Talk(58, "小时候经常和姑姑这么玩。", "", 0);
    do return end;
::label0::
	if InTeam(59) == true then goto label2 end;
    Talk(0, "还是想请杨兄加入队伍，助我一臂之力。", "", 1);
    Talk(58, "那有什么问题，别的没有，就是有“一臂”。", "", 0);
    Talk(0, "那就走吧。", "", 1);
    if TeamIsFull() == false then goto label1 end;
        Talk(58, "你的队伍已满，我无法加入。", "", 0);
        do return end;	
do return end;
	::label2::
	Talk(59, "过儿快回到我的身边来。", "", 0);
    Talk(58, "姑姑我来了。", "", 0);
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
