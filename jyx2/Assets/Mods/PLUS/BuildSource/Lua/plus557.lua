ScenceFromTo(44, 24, 36, 24);
jyx2_CameraFollow("Level/NPC/azi");
Talkplus(2731);--92, "师父有令，要我传你回去，小师妹，你要违抗师命吗？"
Talkplus(2732);--47, "二师哥，你明知道师父正大发雷霆，还要逼我回去，这不是有意要我吃苦头吗？"
Talkplus(2733);--92, "你既然执意不肯回去，那就把那件东西给我。我带回去还给师父，也好有个交代。"
Talkplus(2734);--47, "你说什么？哪个东西？对了，那个东西已经被你身后的小子拿去了。"
Talkplus(2735);--92, "小子！快将“神木王鼎”拿出来！"
ScenceFromTo(36, 24, 44, 24);
jyx2_CameraFollowPlayer();
Talkplus(2736);--0, "什么“神木……"
Talkplus(2737);--47, "二师哥，你看，就是被他抢去了，他还不拿出来。"
Talkplus(2738);--92, "那就别怪我们无理了。"
Talkplus(2739);--0, "喂，别乱打人……"
if TryBattle(87) == true then goto label0 end;
Dead();
do return end;
::label0::
ModifyEvent(-2, 5, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 6, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 7, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 8, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 9, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/星宿弟子5", "");
jyx2_ReplaceSceneObject("", "NPC/星宿弟子6", "");
jyx2_ReplaceSceneObject("", "NPC/星宿弟子7", "");
jyx2_ReplaceSceneObject("", "NPC/星宿弟子8", "");
jyx2_ReplaceSceneObject("", "NPC/星宿弟子9", "");
ModifyEvent(-2, 4, -2, -2, -2, -1, -1, 6378, 6378, 6378, -2, 35, 24);
jyx2_SwitchRoleAnimation("NPC/youtanzhi", "Assets/BuildSource/AnimationControllers/自然站立Controller.controller");
jyx2_FixMapObject("移到阿紫身边", 1);
SetScencePosition2(37, 25);
jyx2_MovePlayer("战斗后","Level/Dynamic");
LightScence();
Talkplus(2740);--0, "姑娘，这是怎么一回事？"
Talkplus(2741);--47, "我师哥他们要杀我，你跑出来救了我，就是这样啊。"
Talkplus(2742);--0, "你说我拿了什么神木王鼎，可是我并没有拿啊。"
Talkplus(2743);--47, "我骗他们的，不然你怎么会救我。"
Talkplus(2744);--0, "这……这玩笑也开的太大了吧。万一，我打不过他们呢？我岂不白白死在他们手下。"
Talkplus(2745);--47, "连他们也打不过，你不如死了算了。"
Talkplus(2746);--0, "你……你这是什么话。"
Talkplus(2747);--47, "不跟你说了。铁丑，你说“冰蚕”是在哪里抓的，我也想弄一条来练功，功效一定很好。"
Talkplus(2748);--48, "我听那捉“冰蚕”的胖和尚说，那“冰蚕”是得自昆仑山边。"
Talkplus(2749);--47, "都是你，将那“冰蚕”的精华吸入体内，害我没得练功了。"
Talkplus(2750);--48, "是，都是小的不是。"
Talkplus(2751);--0, "＜这小丫头八成在练什么阴毒的功夫＞"
Talkplus(2752);--47, "咦，你怎么还不走。还赖在这里做什么。"
Talkplus(2753);--48, "阿紫姑娘叫你走，还不走。"
Talkplus(2754);--0, "凶什么，我救了你们还这么凶，真是好心没好报。"
Talkplus(2755);--47, "呦，还挺有个性的。铁丑，把他捉起来，也帮他戴上头套，做我的奴隶。"
Talkplus(2756);--48, "阿紫姑娘，我一个人服侍你就足够了，不用再找别人。"
Talkplus(2757);--47, "你啰嗦什么，叫你做什么就做。"
Talkplus(2758);--48, "是。"
Talkplus(2759);--0, "真是欺人太甚，当我是演“限制级”片的男演员啊，给我带什么头套。"
if TryBattle(88) == true then goto label1 end;
Dead();
do return end;
::label1::
LightScence();
Talkplus(2760);--48, "阿紫姑娘，对不起，我打不过他。"
Talkplus(2761);--47, "饭桶。"
Talkplus(2762);--0, "＜真倒霉，遇到神经病＞走就走。"
ModifyEvent(-2, 3, -2, -2, 558, 560, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 4, -2, -2, 559, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 0, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
AddEthics(2);
AddRepute(2);
SetFlag("ShowLocationName.破庙",1);--大地图显示当前地图名
if jyx2_CheckEventCount(47,333,0) == 0 then Add3EventNum(47,333,Calendar(2),0,0) end;--初识阿紫计数器
if jyx2_CheckEventCount(48,333,0) == 0 then Add3EventNum(48,333,Calendar(2),0,0) end;--初识游坦之计数器
do return end;