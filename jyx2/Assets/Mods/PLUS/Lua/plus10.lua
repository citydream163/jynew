if UseItem(133) == true then goto label0 end;
    do return end;
::label0::
    ModifyEvent(-2, -2, -2, -2, 11, -2, -2, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 1, -2, -2, -2, -2, 7, -2, -2, -2, -2, -2, -2);
    AddItemWithoutHint(133, -1);
    Talk(1, "咦？这……这是……", "", 0);
    Talk(0, "此两页刀法乃是从江南恶霸<color=Yellow>阎基</color>家中所得。难道这就是你所失之物？", "", 1);
    Talk(1, "正是家传胡氏刀谱的总诀。多年来寻觅不得，不料今日被你找到。小时候我曾听平四叔说，偷我胡家刀谱的人，也是我的杀父仇人之一。今后我定要勤练<color=orange>胡家刀法</color>，再找那<color=Yellow>苗人凤</color>及恶霸<color=Yellow>阎基</color>报杀父之仇。", "", 0);
	Talk(1, "小兄弟，你的盛情，我<color=Yellow>胡斐</color>不知如何言谢！有什么需要我效劳的，尽管说吧！", "", 0);
    Talk(0, "找到了你<color=orange>胡家刀法</color>的缺页，我却还没找到《<color=#A564DB>雪山飞狐</color>》一书，唉！", "", 1);
    Talk(1, "我<color=Yellow>胡斐</color>虽不知该书的下落，但我曾经想过，为什么我的名字与这本书名这么相似？莫非家父当初跟此书有什么关联？这样吧！若你有需要的话，尽管讲一声，我就陪你找上一找。我正好也想到江湖上去历练一下，找害死我父亲的<color=Yellow>苗人凤</color>报仇。", "", 0);
	Talk(1, "当然，还得先找那偷我<color=orange>胡家刀法</color>的<color=Yellow>阎基</color>报仇，害我一直无法练功。走，找他去。而我屋内的东西，你若有需要，也可自行拿取。", "", 0);
	SetFlag("ShowLocationName.胡斐居",1);--大地图显示当前地图名
    if JudgeEventNum(2, -1) == true then goto label1 end;
        ModifyEvent(-2, 2, -2, -2, 833, -1, -1, -2, -2, -2, -2, -2, -2);
::label1::
        if JudgeEventNum(3, -1) == true then goto label2 end;
            ModifyEvent(-2, 3, -2, -2, 834, -1, -1, -2, -2, -2, -2, -2, -2);
::label2::
            AddEthics(2);
            if AskJoin () == true then goto label3 end;
                do return end;
::label3::
                Talk(0, "胡大哥肯随我闯荡江湖否？", "", 1);
                if TeamIsFull() == false then goto label4 end;
                    Talk(1, "你的队伍已满，我无法加入。", "", 0);
                    do return end;
::label4::
                    Talk(1, "好！我就随你一走。", "", 0);
                    Talk(0, "胡大哥肯随我闯荡江湖帮这个忙，那再好也不过了。", "", 1);
                    DarkScence();
                    ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
                    jyx2_ReplaceSceneObject("", "NPC/胡斐",""); 
                    LightScence();
                    ModifyEvent(-2, 1, -2, -2, -2, -2, 7, -2, -2, -2, -2, -2, -2);
                    --jyx2_ReplaceSceneObject("","NPC/胡斐","");

                    Join(1);
                    AddEthics(1);
					ModifyEvent(-2, 4, -2, -2, -1, -1, 2001, -2, -2, -2, -2, -2, -2);--by citydream启动脚本-2001。场景00-4
do return end;
