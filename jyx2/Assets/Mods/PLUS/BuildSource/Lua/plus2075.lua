if (difficulty == 2) then
	ModifyEvent(-2, 31, -2, -2, -2, -2, 2103, -2, -2, -2, -2, -2, -2);
end;
if UseItem(41) == true then goto label41
elseif UseItem(95) == true then goto label95
elseif UseItem(174) == true then goto label174
elseif UseItem(182) == true then goto label182
elseif UseItem(202) == true then goto label202
elseif UseItem(204) == true then goto label204
elseif UseItem(205) == true then goto label205
elseif UseItem(37) == true then goto label37
elseif UseItem(237) == true then goto label237
else
	Talkplus(4044);--401, "让我再研究研究。"
end;
do return end;
::label174::
if HaveItem(143) == true then goto label2 end;
if (jyx2_CheckEventCount(1,999,0) > 3) then goto label15 end;
    if JudgeMoney(5) == true then goto label1 end;
        Talkplus(4045);--401, "小哥你这么点钱，就想打发我半仙啊。"
        do return end;
::label1::
AddItemWithoutHint(174, -math.random(1,5));
if (jyx2_CheckEventCount(1,999,0) == 0) then 
	goto label21
elseif (jyx2_CheckEventCount(1,999,0) == 1) then 
	goto label22
elseif (jyx2_CheckEventCount(1,999,0) == 2) then 
	goto label23
else
	Talkplus(4046);--0,"能不能不看面相只要神游券啊。"
	goto label24
end;
do return end;
::label21::
Talkplus(4047);--0,"这几个钱拿去，帮我好好相一相啊。"
goto label24
do return end;
::label22::
Talkplus(4048);--0,"这几个钱拿去，再帮我相一相啊。"
goto label24
do return end;
::label23::
Talkplus(4049);--0,"快把这几个钱拿去，随便相一相，主要神游券要保真啊。"
goto label24
do return end;
::label24::
if JudgeIQ(0,100,100) == true then goto label3
elseif JudgeIQ(0,0,29) == true then goto label4
elseif JudgeIQ(0,30,49) == true then goto label5
elseif JudgeIQ(0,50,69) == true then goto label6
elseif JudgeIQ(0,70,89) == true then goto label7
elseif JudgeIQ(0,90,99) == true then goto label8
else
	Talkplus(4050);--401, "你开修改器了吧，这种资质的人我没见过。"
	Talkplus(4051);--0,"可别瞎说，我怎么会作弊呢。"
end;
do return end;
::label3::
Talkplus(4052);--401,"哎呀呀，小哥真是聪明绝顶呀！世上罕见，罕见呀。"
Talkplus(4053);--0,"真的假的啊，不会是看我钱给的多乱说的吧。"
goto label9
do return end;
::label4::
Talkplus(4054);--401,"恕在下冒昧直言，虽然表面看起来小哥比较愚蠢，但是通过努力可以创造一个奇迹也说不定呢。"
Talkplus(4055);--0,"胡说八道！我哪里蠢了？你才是蠢货，我要和别人说你算的不准，看你还怎么在这里混。"
goto label9
do return end;
::label5::
Talkplus(4056);--401,"虽说小哥有些愚钝，但总比愚蠢的人好些。说不定哪天有奇遇。"
Talkplus(4057);--0,"也不知道算的准不准啊。"
goto label9
do return end;
::label6::
Talkplus(4058);--401,"小哥和我们大家一样都是普通人，这世上最多的就是普通百姓。"
Talkplus(4059);--0,"做普通人挺好的，免去了诸多烦恼。"
goto label9
do return end;
::label7::
Talkplus(4060);--401,"半仙我一打眼就知道小哥是个聪明人，习武学文样样在行啊。"
Talkplus(4061);--0,"借你吉言，我学习确实比普通人好些。"
goto label9
do return end;
::label8::
Talkplus(4062);--401,"小哥哥真是人中龙凤，气宇非凡，肯定可以成就一番大事业。"
Talkplus(4063);--0,"多谢半仙吉言，我这就去闯荡江湖了。"
goto label9
do return end;
::label2::
if (jyx2_CheckEventCount(1,999,0) == 0) then
	yMoney = -1000;
	xNum = 3;
	yNum = 7;
elseif (jyx2_CheckEventCount(1,999,0) == 1) then
	yMoney = -1500;
	xNum = 5;
	yNum = 10;
elseif (jyx2_CheckEventCount(1,999,0) == 2) then
	yMoney = -2000;
	xNum = 7;
	yNum = 12;
else
	yMoney = -3000;
	xNum = 10;
	yNum = 15;
end;
AddItem(174, yMoney);
Talkplus(4064);--401, "半仙我多谢武林盟主赏赐！"
DarkScence();
jyx2_ReplaceSceneObject("", "NPC/算命先生", "");
jyx2_ReplaceSceneObject("", "Triggers/20", "");
LightScence();
Talkplus(4065);--0, "眼前一黑，人跑的挺快啊。地上是什么？"
AddItem(202, math.random(xNum,yNum));
IcanFly = 2;
Talkplus(4066);--0,"他跑得太快了，神游券掉了一地。"
do return end;
::label9::
if (jyx2_CheckEventCount(1,999,0) == 0) then 
	tTalk1 = 4067;--401,"正所谓生死有命富贵在天，只要小哥大展拳脚，定能有一番大作为。半仙我游遍山南海北，小哥喜欢旅游吧？我送你一张<color=blue>神游券</color>。使用方法：在大地图中客栈附近树林中打开本券，可以神游到任意地方。"
	tTalk2 = 4068;--0,"这话听着还算顺耳，什么<color=blue>神游券</color>，有那么厉害吗？我去试试看。"
	tTalk3 = 4069;--401,"正所谓生死有命富贵在天，只要小哥大展拳脚，定能有一番大作为。我再送你一张<color=blue>神游券</color>。"
	tTalk4 = 4070;--0,"这话听着还算顺耳，人生一世草木一秋，过自己想要的生活才最重要。"
elseif (jyx2_CheckEventCount(1,999,0) == 1) then
	tTalk1 = 4071;--401,"正所谓生死有命富贵在天，只要小哥大展拳脚，定能……"
	tTalk2 = 4072;--0,"哎呀呀，这些话我都听腻了，<color=blue>神游券</color>，快把<color=blue>神游券</color>拿来。"
	tTalk3 = 4073;--401,"正所谓生死有命富贵在天，只要小哥大展拳脚……"
	tTalk4 = 4074;--0,"哎呀呀，别啰嗦，快把<color=blue>神游券</color>拿来。"
elseif (jyx2_CheckEventCount(1,999,0) == 2) then
	tTalk1 = 4075;--401,"正所谓生死有命富贵在天，只要……"
	tTalk2 = 4076;--0,"身随心走，闯荡天下。"
	tTalk3 = 4077;--401,"正所谓生死有命富贵在天……"
	tTalk4 = 4078;--0,"神游神游，我要神游。"
else
	tTalk1 = 4079;--401,"正所谓生死有命……富贵在天……"
	tTalk2 = 4080;--0,"快把<color=blue>神游券</color>拿来。"
	tTalk3 = 4081;--401,"正所谓……"
	tTalk4 = 4082;--0,"所谓你个头。"
end;
if HaveItem(202) == true then goto label10 end;
Talkplus(tTalk1);
AddItem(202, 1);
IcanFly = 1;
if (jyx2_CheckEventCount(1,999,0) < 3) then Add3EventNum(1,999,1,0,0); end;--次数计数器加1
Talkplus(tTalk2);
--Innid = {1,3,40,60,61};--客栈编号
for i, v in pairs(Innid) do
	if (v == GetCurrentGameMapid()) then
		ModifyEvent(1000, v, -2, -2, 2130, 2085, -2, -2, -2, -2, -2, -2, -2);--当前客栈树林触发器
	else
		ModifyEvent(1000, v, -2, -2, 2086, 2085, -2, -2, -2, -2, -2, -2, -2);--其他客栈树林触发器
	end;
end;
do return end;
::label10::
Talkplus(tTalk3);
AddItem(202, 1);
IcanFly = 1;
Talkplus(tTalk4);
do return end;
::label15::
sTaget = ShowSelectPanel(401,"命数早已注定，多算无益，有缘人再来些<color=blue>神游券</color>吧？", {"是(Y)","否(N)"});
if (sTaget == 0) then goto label16 end;
do return end;
::label16::
sNum = ShowSelectPanel(401,"请选择数量。", {"取消","5","10","15","20"});
if not(sNum == 0) then
	if JudgeMoney(5 * sNum) == true then goto label17 end;
        Talkplus(4083);--401, "小哥你没那么多钱，就别浪费我的时间了。"
end;
do return end;
::label17::
if (sNum == 1) then
	tsNum = 5;
elseif (sNum == 2) then
	tsNum = 9;
elseif (sNum == 3) then
	tsNum = 12;
elseif (sNum == 4) then
	tsNum = 14;
end;
tMoney = math.random(1,5) * tsNum;
AddItemWithoutHint(174, -tMoney);
AddItem(202, sNum * 5);
IcanFly = 1;
do return end;
::label41::
Talkplus(4084);--401, "这是十八泥偶，修炼以后可以调和内力。如果没用了，也可以拿去炼化。"
Sbno = 1;
do return end;
::label65::
Talkplus(4085);--401, "这是星宿海掌门练化功大法之物，修炼以后可以加功夫带毒。如果不用了，也可以拿去炼化。"
Smwd = 1;
do return end;
::label37::
Talkplus(4086);--401, "这是千年冰蚕，毒性极高，可使练毒者功力大增。其实也可以自用啊。"
AddItemWithoutHint(37, -1);
AddItemWithoutHint(237, 1);
do return end;
::label237::
Talkplus(4087);--401, "这是千年冰蚕，毒性极高，可使练毒者功力大增。不想自用也可以送人啊。"
AddItemWithoutHint(237, -1);
AddItemWithoutHint(37, 1);
do return end;
::label95::
Talkplus(4088);--401, "他强由他强，清风拂山岗；他横由他横，明月照大江。他自狠来他自恶，我自一口真气足。"
Talkplus(4089);--0,"先生真有点学问。"
do return end;
::label182::
Talkplus(4090);--401, "这是罗盘，可显示当前坐标和小船位置以及小地图。可以去南贤居控制小地图开关。"
do return end;
::label202::
Talkplus(4091);--Talk(401, "你在这游戏里已度过"..Calendar(2).."天，胡混了"..Calendar(3).."天，共战斗"..Calendar(4).."场，休息了"..Calendar(5).."天。");
Talkplus(4092);--0,"是吗？你是怎么知道的？"
do return end;
::label204::
Talkplus(4093);--401, "这是客栈导游券，可在客栈外树林中使用，由你自行指定目的地。"
do return end;
::label205::
Talkplus(4760);--401, "这是观光券，可在客栈外树林中使用，由你自行指定游览的景点数量。"
do return end;