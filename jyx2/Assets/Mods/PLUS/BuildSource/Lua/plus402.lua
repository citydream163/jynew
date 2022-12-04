Talkplus(1767);--63, "这位公子，不知来小女子<color=Yellow>程英</color>家中所为何事？"
Talkplus(1768);--0, "在下浪迹天涯寻找一些书，途经姑娘家门外，想说进来碰碰运气。"
Talkplus(1769);--63, "不知公子找些什么东西？"
Talkplus(1770);--0, "不瞒姑娘，在下找寻的是江湖中传说的“十四天书”。"
Talkplus(1771);--63, "“十四天书”？我也曾听人提起过，听说是很久以前的一位前辈所遗留下来的。不过我倒是不知这些书的下落。"
Talkplus(1772);--0, "是啊，知道这些书下落的人也不多。姑娘家中就只一个人吗？"
Talkplus(1773);--63, "自从和家师黄岛主分开后，我就一个人在此定居。"
Talkplus(1774);--0, "原来姑娘是东邪<color=Yellow>黄药师</color>的高徒，那武功一定不错了。"
Talkplus(1775);--63, "哪里，我资质太差，没能学到师父武功的精髓，只学会一些奇门五行之术。"
Talkplus(1776);--0, "原来姑娘还懂奇门五行之术，这对闯荡江湖很有用呢。"
Talkplus(1777);--63, "是有点用处，有些平常人看不出的布局，我略懂一些。"
ModifyEvent(-2, -2, -2, -2, 403, -1, -1, -2, -2, -2, -2, -2, -2);
SetFlag("ShowLocationName.程英居",1);--大地图显示当前地图名
if jyx2_CheckEventCount(63,333,0) == 0 then Add3EventNum(63,333,Calendar(2),0,0) end;--初识程英计数器
if AskJoin() == true then goto label0 end;
Talkplus(1778);--0, "打扰姑娘多时，在下告退。"
do return end;
::label0::
Talkplus(1779);--0, "那程姑娘可否与在下一游，帮忙在下寻找那十四天书？"
if JudgeEthics(0, 65, 100) == true then goto label1 end;
Talkplus(1780);--63, "我看公子脸上泛有戾气，公子还是多做些善事才是。"
do return end;
::label1::
if TeamIsFull() == false then goto label2 end;
Talkplus(1781);--63, "你的队伍已满，我无法加入。"
do return end;
::label2::
Talkplus(1782);--63, "嗯！好吧。反正我一人在此也是无聊，就随公子一游吧。"
DarkScence();
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/程英", "");--程英加入队伍
LightScence();
Join(63);
AddEthics(2);
do return end;