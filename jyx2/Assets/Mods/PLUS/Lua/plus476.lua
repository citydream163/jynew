Talkplus(2183);--0, "这位小哥，我初到此地，不知这附近有哪里好玩的。"
Talkplus(2184);--53, "我听人家说，西去有个无量山，风景清幽，在下也正准备前往一游。"
Talkplus(2185);--0, "不知兄台如何称呼，怎么一人在外游荡？"
Talkplus(2186);--53, "在下姓段，单名一个誉字。其实，我是从家里面逃出来的。"
Talkplus(2187);--0, "你干么要从家里逃出来？"
Talkplus(2188);--53, "爹爹要教我练武功，我不大想练。后来他逼的紧了，我只得逃走。"
Talkplus(2189);--0, "你爹爹教你什么武功？"
Talkplus(2190);--53, "叫什么“六脉神剑”的。"
Talkplus(2191);--0, "这武功听起来好像很厉害的样子，你为什么不肯学，是怕辛苦吗？"
Talkplus(2192);--53, "辛苦我才不怕呢。我从小受了佛戒，这十多年来，我学的都是儒家的仁人之心，推己及人。佛家的戒杀戒嗔，慈悲为怀。忽然爹爹要我练武，学打人杀人的法子，我自然觉得不对头。"
Talkplus(2193);--0, "可是如果你不会武功，看见有人被欺负，而你又想救他时，怎么办？"
Talkplus(2194);--53, "那我会大大的晓谕他一番，不许他们这样胡乱杀人。要知冤家宜解不宜结，何况凶杀斗狠，有违国法，若叫官府知道，大大的不妥。"
Talkplus(2195);--0, "＜这小子似乎有点秀逗＞"
ModifyEvent(-2, 0, -2, -2, 477, -2, -2, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 8, -2, -2, 477, -2, -2, -2, -2, -2, -2, -2, -2);
if (difficulty == 2) then
	OpenScene(42);--开放无量山洞
end;
if jyx2_CheckEventCount(53,333,0) == 0 then Add3EventNum(53,333,Calendar(2),0,0) end;--初识段誉计数器
if AskJoin() == true then goto label0 end;
Talkplus(2196);--0, "好了，不打扰兄台了。他日有缘，再一同游山玩水吧。"
do return end;
::label0::
Talkplus(2197);--0, "不知兄台是否愿与我同行，前往那无量山一游？"
if JudgeEthics(0, 40, 100) == true then goto label1 end;
Talkplus(2198);--53, "嗯……我还有些事要办，恐怕无法与阁下同行。"
do return end;
::label1::
if TeamIsFull() == false then goto label2 end;
Talkplus(2199);--53, "你的队伍已满，我无法加入。"
do return end;
::label2::
Talkplus(2200);--53, "好啊，有个人做伴，路上也有个照应。"
DarkScence();
ModifyEvent(-2, 0, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 8, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/段誉", "");--段誉加入队伍
LightScence();
Join(53);
do return end;