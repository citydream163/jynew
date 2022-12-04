Talkplus(2651);--0, "贤弟，这是怎么一回事？那躺在地上的老人又是谁？"
Talkplus(2652);--49, "我自己也迷糊了。我走进这房子后，屋内有个老人，他说我福缘深厚，破解了这盘棋局。接着硬化去了我原有的武功，并将他七十余年的功力注入我体内。"
Talkplus(2653);--0, "有这种事。"
Talkplus(2654);--49, "他还叫我去杀了星宿老怪丁春秋。"
Talkplus(2655);--0, "苏前辈，这是怎么回事？"
Talkplus(2656);--52, "事情是这样子的。本派乃逍遥派，师父收了我和丁春秋两个弟子。我师父有个规矩，因他所学甚杂，谁要做掌门，各种本事都要比试，不但比武，还得比琴棋书画。"
Talkplus(2657);--52, "但丁春秋于各种杂学一窍不通，眼见掌门人无望，竟忽施暗算将师父打落深谷，又将我打得重伤。"
Talkplus(2658);--0, "这人真是可恶。"
Talkplus(2659);--52, "后来师父趁机诈死，又设下了这个棋局，想藉此找出悟性高的人。立他为掌门，并传他功力，将来好除去丁春秋这恶贼。今天，我们终于出现了能破解此珍珑的人，师父在传完他功力后也仙逝了。掌门师弟，我逍遥派的门户就靠你清理了。"
Talkplus(2660);--49, "我是误打误撞的，并没有什么悟性。更何况我是少林弟子，怎能改投别派。"
Talkplus(2661);--0, "贤弟悟性没有，“误”性却很高，我看你别当和尚了，做个掌门不是很好。"
Talkplus(2662);--49, "可是……"
Talkplus(2663);--0, "别可是了，你看，这位老前辈因为要传你毕生功力而逝去，你还忍心拒绝人家吗。况且，那丁春秋也是个无恶不作，罪无可赦的恶徒呀。"
Talkplus(2664);--49, "……"
Talkplus(2665);--0, "好，我看就这样了。苏前辈，我们会去找那星宿老怪，杀了他替你师父报仇。"
Talkplus(2666);--52, "老朽谢谢这位少侠的帮忙。掌门师弟，此去路上一切要小心，丁春秋那老贼行事卑鄙……对了，我有一个徒弟医术高明，人称“阎王敌”的薛神医，你可以去找他帮忙。见到他时只要出示掌门信物的“七宝指环”即可。"
DarkScence();
ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/xiaoyaozi", "");--逍遥子1
ModifyEvent(-2, 2, 1, 1, 581, -1, -1, 6522, 6522, 6522, -2, -2, -2);
ModifyEvent(-2, 3, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 0, 1, 1, 537, -1, -1, 6340, 6340, 6340, -2, -2, -2);
ModifyEvent(35, 3, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_FixMapObject("逍遥子传功完毕",0);
jyx2_SwitchRoleAnimation("NPC/suxinghe", "Assets/BuildSource/AnimationControllers/sit_on_chair.controller");
jyx2_ReplaceSceneObject("35","NPC/星宿弟子3","");
NPCAddItem(49, 128, 1);
NPCAddItem(49, 56, 1);
NPCAddItem(49, 40, 1);
LightScence();
Talkplus(2667);--0, "贤弟，我们走了吧。"
if TeamIsFull() == false then goto label0 end;
Talkplus(2668);--49, "你的队伍已满，我无法加入。"
do return end;
::label0::
DarkScence();
jyx2_ReplaceSceneObject("", "NPC/xuzhu", "");--虚竹加入
ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
LightScence();
if (difficulty == 2) then
	for j = 1,math.random(10, 18) do
		Levelup(49);
	end
elseif (difficulty == 1) then
	for j = 1,2 do
		HMPUP(49);
	end
	AddAttack(49, math.random(28, 32));
	AddSpeed(49, math.random(18, 22));
else
	AddMp(49, 300);
	AddHp(49, 200);
	AddAttack(49, 30);
	AddSpeed(49, 20);
end
LearnMagic2(49, 15, 0);
SetPersonMPPro(49,2);
Join(49);
ModifyEvent(28, 0, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(28, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(28, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 6, -2, -2, 2030, -1, -1, -2, -2, -2, -2, -2, -2);--by citydream 启动脚本2030 场景53-编号6
ModifyEvent(-2, 7, -2, -2, 2030, -1, -1, -2, -2, -2, -2, -2, -2);--by citydream 启动脚本2030 场景53-编号7
ChangeMMapMusic(3);
do return end;