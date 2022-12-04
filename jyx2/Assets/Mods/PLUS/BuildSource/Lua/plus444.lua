Talkplus(2042);--0, "这位兄台，你家怎么有这么多漂亮姊姊。"
Talkplus(2043);--61, "她们都是我的弟子。"
Talkplus(2044);--0, "你这师父是教什么武功，怎么都收女弟子。难不成你这儿是“妹登风”吗？"
Talkplus(2045);--61, "什么是“妹登风”？我这里是白驼山。我是这里的少主欧阳克，我的弟子都是从各地挑选出的美女，由我亲自传授“床上功夫”。"
Talkplus(2046);--0, "＜这是限制级的游戏吗？＞你吃的消吗？分我几个好了。"
Talkplus(2047);--61, "你是谁，到我白驼山撒野。要比床上功夫前先来比一比真武艺。"
if TryBattle(69) == true then goto label0 end;
Dead();
do return end;
::label0::
LightScence();
Talkplus(2048);--0, "怎样，我的功夫比你强吧。"
Talkplus(2049);--61, "你知道我是谁吗。"
Talkplus(2050);--0, "你不是说了吗，你是白驼山的少主。"
Talkplus(2051);--61, "那你不知道我叔父是谁吗？"
Talkplus(2052);--0, "是谁？"
Talkplus(2053);--61, "江湖上人称“西毒”的欧阳锋。"
Talkplus(2054);--0, "听起来好像不好惹。"
Talkplus(2055);--61, "知道不好惹就对了。小子，我看你功夫还不错，这样子好了，我们可以找一些志同道合的人，使尽各种手段，打倒各大门派，称霸这武林。到时我们就可和我叔父他们一般，闯出一番名号，让武林中人闻之丧胆。"
Talkplus(2056);--0, "你说要不惜使用各种手段，那行为不是太卑鄙了吗？"
Talkplus(2057);--61, "这年头你还想正正当当的？那你要等到什么时候才能称霸武林。"
Talkplus(2058);--0, "我想想看……"
AddRepute(1);
ModifyEvent(-2, -2, -2, -2, 445, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 7, -2, -2, -1, -1, 473, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 8, -2, -2, -1, -1, 473, -2, -2, -2, -2, -2, -2);
SetFlag("ShowLocationName.白驼山",1);--大地图显示当前地图名
if jyx2_CheckEventCount(61,333,0) == 0 then Add3EventNum(61,333,Calendar(2),0,0) end;--初识欧阳克计数器
if AskJoin() == true then goto label1 end;
Talkplus(2059);--0, "不行，我还是想当个大侠，不肖与你这个人为伍。"
Talkplus(2060);--61, "真是可惜，本来还想跟你研究研究“床上功夫”呢。"
do return end;
::label1::
Talkplus(2061);--0, "好吧，那我们就一起称霸武林吧。反正有句名言不是说“好人早死，坏人较长命”。"
if JudgeFemaleInTeam() == true then goto label2 end;
Talkplus(2062);--61, "不行，不行，我们同伴中没有女的我会受不了，等你找到女的再说。"
do return end;
::label2::
if TeamIsFull() == false then goto label3 end;
Talkplus(2063);--61, "你的队伍已满，我无法加入。";
do return end;
::label3::
Talkplus(2064);--61, "走吧，再去找一些邪恶的人来加入。"
DarkScence();
jyx2_ReplaceSceneObject("", "NPC/欧阳克", "");--欧阳克加入队伍
jyx2_ReplaceSceneObject("", "NPC/欧阳克婢女", "");
ModifyEvent(-2, 0, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 2, -2, -2, 472, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 3, -2, -2, 472, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 4, -2, -2, 472, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 5, -2, -2, 472, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 6, -2, -2, 472, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 7, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 8, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
LightScence();
Join(61);
AddEthics(-6);
do return end;