Talk(0, "这雕像中的女子倒也美丽……咦！这下面写着几个字……“磕首千遍，供我驱策，遵行我命，百死无悔”……＜神经病，谁要对着个石像磕头＞", "", 1);
if InTeam(53) == true then goto label0 end;
    do return end;
::label0::
    jyx2_ReplaceSceneObject("", "NPC/段誉11", "1");--段誉出现
    Talk(53, "神仙姊姊，小生<color=Yellow>段誉</color>今日得睹芳容，死而无憾。姊姊在此离世独居，不也太寂寞了吗？", "", 1);
    Talk(0, "段兄，你该不会在跟这玉像说话吧。＜这人真是呆得可以＞", "", 1);
    Talk(53, "藐姑射之山，有神人居焉，肌肤若冰雪，绰约若处子，不食五谷，吸风饮露。神仙姊姊，你若能活过来跟我说一句话，我便为你死一千遍，一万遍，也如身登极乐，欢喜无限。磕首千遍，原本就是天经地义之事……", "", 1);
    DarkScence();
    ModifyEvent(-2, 0, -2, -2, -2, -2, -2, 6316, 6316, 6316, -2, -2, -2);
    jyx2_SwitchRoleAnimation("NPC/段誉11", "Assets/BuildSource/AnimationControllers/跪拜Controller.controller");
	jyx2_MovePlayer("观看段誉磕头","Level/Dynamic");
    LightScence();
    PlayAnimation(0, 6316, 6334);
    PlayAnimation(0, 6316, 6334);
    jyx2_SwitchRoleAnimation("NPC/段誉11", "Assets/BuildSource/AnimationControllers/备份/段誉跪拜Controller.controller");
    Talk(0, "兄弟，你干么？你真的要磕一千下呀！", "", 1);
    Talk(53, "十，十一，十二……", "", 1);
    PlayAnimation(0, 6316, 6334);
    PlayAnimation(0, 6316, 6334);
    PlayAnimation(0, 6316, 6334);
    Talk(0, "我的妈呀！", "", 1);
    DarkScence();
    ModifyEvent(-2, 0, -2, -2, -2, -2, -2, 6338, 6338, 6338, -2, -2, -2);
	jyx2_ReplaceSceneObject("", "Dynamic/Chair_11", "");--需要替换破烂的蒲团
    ModifyEvent(-2, 11, -2, -2, -2, -2, -2, 6312, 6312, 6312, -2, -2, -2);
    jyx2_SwitchRoleAnimation("NPC/段誉11", "Assets/BuildSource/AnimationControllers/备份/段誉Controller.controller");
    LightScence();
    Talk(0, "兄弟，你还真磕了一千下，你的头还好吧。你看，蒲团都被你磕破了。", "", 1);
    Talk(53, "咦！这蒲团中似乎藏有一个绸包，这上面还有写字……“汝既磕首千遍，自当供我驱策，终身无悔。此卷为我逍遥派武功精要，每日卯午酉三时，务须用心修习一次……”", "", 1);
    Talk(0, "这里面好像有两本册子，一本叫“<color=orange>北冥神功</color>”，另一本叫“<color=orange>凌波微步</color>”。", "", 1);
    Talk(53, "＜我不想学武功，可是神仙姊姊的命令焉可不遵？我向她磕足一千个头，便是答允供他驱策，奉行她的命令。我就先看看书上写些什么＞“穷发之北有冥海者…………北冥神功系引世人之力而为我有。北冥大水，非由自生。语云：百川汇海，大海之水以容百川而得。汪洋巨浸，端在积聚。此手太阴肺经为北冥神功第一课………………这上面还附有一些穴道图，上面有条绿线………………咦！我体内怎么有点热热的…………另外一本“<color=orange>凌波微步</color>”中，上面画着好多脚印，而且还注明着一些易经中的方位，正好前几日刚钻研过易经，这看起来容易多了…………", "", 1);
    DarkScence();
    LightScence();
    Talk(53, "神仙姊姊，你吩咐我朝午晚三次练功，<color=Yellow>段誉</color>不敢有违。", "", 1);
    Talk(0, "段兄想通了，肯练武了。", "", 1);
    Talk(53, "但今后我会对人加倍客气，别人不会来打我，我自然也不会去吸他的内力。至于这“<color=orange>凌波微步</color>”我更要用心练熟，眼见不对，立刻溜之大吉。", "", 1);
    Talk(0, "随便你了，我们走吧。", "", 1);
    DarkScence();
    ModifyEvent(-2, 11, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
    jyx2_ReplaceSceneObject("", "NPC/段誉11", "");--段誉归队
    LightScence();
    AddItem(63, 1);
    AddItem(47, 1);
    LearnMagic2(53, 29, 0);
    AddSpeed(53, 30);
    AddAttack(53, 10);
    AddAptitude(53, 20);
    SetPersonMPPro(53,2);
    ModifyEvent(-2, 1, -2, -2, 485, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 2, 1, 1, -1, -1, -1, 6752, 6752, 6752, -2, -2, -2);
    jyx2_ReplaceSceneObject("", "NPC/蟒牯朱蛤", "1");
    ModifyEvent(-2, 3, -2, -2, -1, -1, 486, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 4, -2, -2, -1, -1, 486, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 5, -2, -2, -1, -1, 486, -2, -2, -2, -2, -2, -2);
    SetScenceMap(52, 1, 27, 28, 1842);
    SetScenceMap(52, 1, 27, 20, 1838);
    SetScenceMap(52, 1, 27, 29, 0);
	jyx2_FixMapObject("燕子坞开门",1);
	jyx2_ReplaceSceneObject("52", "NPC/王语嫣1", "");--初识王语嫣失效
	ModifyEvent(52, 7, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);--初识王语嫣失效
	jyx2_ReplaceSceneObject("52", "NPC/王语嫣", "1");--显示王语嫣
    PlayWave(21);
	SetFlag("ShowLocationName.无量山洞",1);--大地图显示当前地图名
do return end;
