if UseItem(202) == true then goto label0 
elseif UseItem(204) == true then goto label1
end;
do return end;
:: label0 ::
AddItemWithoutHint(202, -1);
math.randomseed(tostring(os.time()):reverse():sub(1, 7));
if (IcanFly == 1) then goto label2 end;--跳转到瞬移
Talk(0,"真有半仙说的那么玄吗？快试试看。","", 1);
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
if fTaget == GetCurrentEventID() then goto label4 end;
--jyx2_WalkFromTo(-1, fTaget);--走
jyx2_MovePlayer(""..fTaget.."","Level/NavigateObjs");--飞
--Talk(0,"哎呀，怎么一跑起来就停不下来了，可累死我了，不过沿途的风景还真不错。这是哪里呀，去打听一下。","", 1);
Talk(0,"哎呀，怎么一下子跑到这里来了，这是哪里呀，去打听一下。","", 1);
--ModifyEvent(1, 20, -2, -2, 2089, 2088, -2, -2, -2, -2, -2, -2, -2);
do return end;
:: label2 ::
Talk(0,"真有半仙说的那么玄吗？快试试看。","", 1);
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
arr[13] = {1,40,30};
arr[14] = {2,3,31};
arr[15] = {3,40,32};
arr[16] = {1,40,34};
arr[17] = {1,40,36};
arr[18] = {1,61,37};
arr[19] = {1,61,39};
arr[20] = {1,40,43};
arr[21] = {3,40,44};
arr[22] = {2,61,45};
arr[23] = {1,61,48};
arr[24] = {2,1,49};
arr[25] = {1,1,50};
arr[26] = {3,40,51};
arr[27] = {2,3,53};
arr[28] = {1,3,54};
arr[29] = {1,1,56};
arr[30] = {2,40,57};
arr[31] = {1,1,59};
arr[32] = {2,3,62};
arr[33] = {1,1,63};
arr[34] = {1,1,64};
arr[35] = {3,60,68};
arr[36] = {1,61,69};
--DarkScence();
:: label3 ::
tarr = math.random(1,#arr);
if ((jyx2_CheckEventCount(1,999,0) == nil) or (jyx2_CheckEventCount(1,999,0) == 0)) then Add3EventNum(1,999,1,0,0); end;
	if arr[tarr][1] > jyx2_CheckEventCount(1,999,0) then goto label3 end;
	if arr[tarr][2] == GetCurrentEventID() then goto label3 end;
target = "".. arr[tarr][3] .. "";
jyx2_MovePlayer(""..target.."","Level/NavigateObjs");
--jyx2_Wait(2);
--LightScence();
Talk(0,"哎呀，怎么一下子跑到这里来了，这是哪里呀，去打听一下。","", 1);
--ModifyEvent(1, 20, -2, -2, 2089, 2088, -2, -2, -2, -2, -2, -2, -2);
do return end;
:: label1 ::
local arrt = {};
arrt[1] = {1, "河洛客栈"};
arrt[2] = {3, "有间客栈"};
arrt[3] = {40, "悦来客栈"};
arrt[4] = {60, "龙门客栈"};
arrt[5] = {61, "高升客栈"};
local arrm = {};
local taget = {};
j = 1;
for i = 1, #arrt do
	if not(arrt[i][1] == GetCurrentEventID()) then
	arrm[j] = arrt[i][1];
	taget[j] = arrt[i][2];
	j = j + 1;
	end;
end;
tTaget = ShowSelectPanel(0,"去哪里？", {"取消",""..taget[1].."", ""..taget[2].."", ""..taget[3].."",""..taget[4]..""});
if not(tTaget == 0) then
	AddItemWithoutHint(204, -1);
	--jyx2_WalkFromTo(-1, arrm[tTaget]);--走
	jyx2_MovePlayer(""..arrm[tTaget].."","Level/NavigateObjs");--飞
end;
do return end;