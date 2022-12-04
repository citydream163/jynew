if UseItem(202) == true then goto label0 
elseif UseItem(204) == true then goto label1
elseif UseItem(205) == true then goto label6
end;
do return end;
:: label0 ::
if (jyx2_CheckEventCount(1,999,0) == 1) then
	tTalk0 = 4125;--0,"真有半仙说的那么玄吗？快试试看。"
	oTalk0 = 4126;--0,"哎呀，怎么一下子跑到这里来了，这是哪里呀，去打听一下。"
elseif (jyx2_CheckEventCount(1,999,0) == 2) then
	tTalk0 = 4127;--0,"<color=blue>神游券</color>真神奇，快点继续跑啊。"
	oTalk0 = 4128;--0,"哈哈哈哈，遨游寰宇，神游天下，爽啊。还得找那半仙多拿几张<color=blue>神游券</color>去。"
elseif (jyx2_CheckEventCount(1,999,0) == 3) then
	tTalk0 = 4129;--0,"跑的有点慢啊，飞起来。"
	oTalk0 = 4130;--0,"风在脑后，鸟在身旁。让我飞起来吧。"
Add3EventNum(1,999,1,0,0);--次数计数器加1
else
	tTalk0 = 4131;--0,"我飞……"
	oTalk0 = 4132;--0,"我……"
end;
AddItemWithoutHint(202, -1);
if (IcanFly == 1) then goto label2 end;--跳转到瞬移
Talkplus(tTalk0);
PlayWave(102);
--构造数组
arrf = {}
arrf[1] = 1;
arrf[2] = 3;
arrf[3] = 40;
arrf[4] = 60;
arrf[5] = 61;
:: label4 ::
fTaget = arrf[math.random(1,#arrf)];
if (fTaget == GetCurrentEventID()) then goto label4 end;
RunTo(fTaget);--走
--jyx2_MovePlayer(""..fTaget.."","Level/NavigateObjs");--飞
jyx2_Wait(1);
--Talkplus(4133);--0,"哎呀，怎么一跑起来就停不下来了，可累死我了，不过沿途的风景还真不错。这是哪里呀，去打听一下。"
Talkplus(oTalk0);
--ModifyEvent(1, 20, -2, -2, 2089, 2088, -2, -2, -2, -2, -2, -2, -2);
do return end;
:: label2 ::
Talkplus(tTalk0);
--构造数组
arr = {};
arr[1] = {1,3,0};--第1次,有间客栈附近,胡斐居
arr[2] = {2,3,6};
arr[3] = {1,60,8};
arr[4] = {3,60,12};
arr[5] = {2,60,16};
arr[6] = {3,60,17};
arr[7] = {3,3,19};
arr[8] = {3,61,21};
arr[9] = {2,3,23};
arr[10] = {1,40,24};
arr[11] = {3,40,28};
arr[12] = {1,40,29};
arr[13] = {1,40,38};
arr[14] = {2,3,31};
arr[15] = {3,40,32};
arr[16] = {1,40,34};
arr[17] = {3,60,11};
arr[18] = {1,61,37};
arr[19] = {1,61,39};
arr[20] = {1,40,43};
arr[21] = {3,40,20};
arr[22] = {2,61,45};
arr[23] = {1,61,48};
arr[24] = {2,1,49};
arr[25] = {1,1,52};
arr[26] = {3,40,51};
arr[27] = {2,3,53};
arr[28] = {1,3,54};
arr[29] = {1,1,56};
arr[30] = {2,40,57};
arr[31] = {1,1,55};
arr[32] = {2,3,62};
arr[33] = {1,1,63};
arr[34] = {1,1,64};
arr[35] = {3,60,68};
arr[36] = {1,61,69};
--DarkScence();
:: label3 ::
tarr = math.random(1,#arr);
if ((jyx2_CheckEventCount(1,999,0) == nil) or (jyx2_CheckEventCount(1,999,0) == 0)) then Add3EventNum(1,999,1,0,0); end;
	if (arr[tarr][1] > jyx2_CheckEventCount(1,999,0)) then goto label3 end;
	if (arr[tarr][2] == GetCurrentEventID()) then goto label3 end;
target = "".. arr[tarr][3] .. "";
jyx2_MovePlayer(""..target.."","Level/NavigateObjs");
jyx2_Wait(1);
--LightScence();
Talkplus(oTalk0);
--ModifyEvent(1, 20, -2, -2, 2089, 2088, -2, -2, -2, -2, -2, -2, -2);
do return end;
:: label1 ::
-- InnId = {};
-- InnId[1] = {1, "河洛客栈",{8,7,5,4}};
-- InnId[2] = {3, "有间客栈",{8,5,3,4}};
-- InnId[3] = {40, "悦来客栈",{7,5,2,3}};
-- InnId[4] = {60, "龙门客栈",{5,3,2,1}};
-- InnId[5] = {61, "高升客栈",{4,4,3,1}};
arrm = {};
taget = {};
j = 1;
for i = 1, #InnId do
	if (InnId[i][1] == GetCurrentEventID()) then
		months = InnId[i][3];
	else
		arrm[j] = InnId[i][1];
		taget[j] = InnId[i][2];
		j = j + 1;
	end;
end;
tTaget = ShowSelectPanel(0,"去哪里？", {"取消",""..taget[1].."", ""..taget[2].."", ""..taget[3].."",""..taget[4]..""});
if not(tTaget == 0) then
	AddItemWithoutHint(204, -1);
	RunTo(arrm[tTaget]);--走
	--jyx2_MovePlayer(""..arrm[tTaget].."","Level/NavigateObjs");--飞
	Add3EventNum(70,999,0,months[tTaget],0);--旅行日程计数器
end;
do return end;
:: label5 ::
Talkplus(4134);--106,"客倌见谅，因车马费谈不拢，本服务暂停，何时恢复营业请留意本店公告栏。"
do return end;
:: label6 ::
arr = {};
arr[1] = {1,3,0};--第1次,有间客栈附近,胡斐居
arr[2] = {2,3,6};
arr[3] = {1,60,8};
arr[4] = {3,60,12};
arr[5] = {2,60,16};
arr[6] = {3,60,17};
arr[7] = {3,3,19};
arr[8] = {3,61,21};
arr[9] = {2,3,23};
arr[10] = {1,40,24};
arr[11] = {3,40,28};
arr[12] = {1,40,29};
arr[13] = {1,40,38};
arr[14] = {2,3,31};
arr[15] = {3,40,32};
arr[16] = {1,40,34};
arr[17] = {3,60,11};
arr[18] = {1,61,37};
arr[19] = {1,61,39};
arr[20] = {1,40,43};
arr[21] = {3,40,20};
arr[22] = {2,61,45};
arr[23] = {1,61,48};
arr[24] = {2,1,49};
arr[25] = {1,1,52};
arr[26] = {3,40,51};
arr[27] = {2,3,53};
arr[28] = {1,3,54};
arr[29] = {1,1,56};
arr[30] = {2,40,57};
arr[31] = {1,1,55};
arr[32] = {2,3,62};
arr[33] = {1,1,63};
arr[34] = {1,1,64};
arr[35] = {3,60,68};
arr[36] = {1,61,69};
Tourtimes = ShowSelectPanel(0,"游览几个景点？", {"取消","一", "二", "三","五"});
if Tourtimes == 4 then Tourtimes = 5; end;
i = 0;
	:: label7 ::
if i < Tourtimes then
	:: label8 ::
	t = math.random(1,#arr);
	if i > 0 and p == arr[t][2] then goto label8 elseif arr[t][2] == GetCurrentEventID() then goto label8 end;
--if i > 0 then RunTo(p);RunTo(arr[t][2]); end;
	RunTo(arr[t][3]);
	i=i+1;
	p = arr[t][2];
	Tips("第"..tostring(i).."个景点");
	jyx2_Wait(0.5);
	goto label7
end;
Add3EventNum(70,999,Tourtimes,0,0);--旅行日程计数器
do return end;