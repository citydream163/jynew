if HaveItem(202) == true then goto label0 end;
    do return end;
:: label0 ::
AddItemWithoutHint(202, -1);
math.randomseed(tostring(os.time()):reverse():sub(1, 7));
if (IcanFly == 1) then goto label2 end;--跳转到瞬移
Talk(0,"走的有点慢啊，跑起来。","", 1);
--构造数组
arr = {}
arr[1] = 1;
arr[2] = 40;
arr[3] = 60;
arr[4] = 61;
jyx2_WalkFromTo(-1, arr[math.random(1,#arr)]);
Talk(0,"风在脑后，鸟在身旁。让我飞起来吧。","", 1);
ModifyEvent(1, 20, -2, -2, 2094, 2093, -2, -2, -2, -2, -2, -2, -2);
do return end;
:: label2 ::
Talk(0,"走的有点慢啊，跑起来。","", 1);
--构造数组
arr = {};
arr[1] = 0;
arr[2] = 6;
arr[3] = 8;
arr[4] = 12;
arr[5] = 16;
arr[6] = 17;
arr[7] = 19;
arr[8] = 21;
arr[9] = 23;
arr[10] = 24;
arr[11] = 28;
arr[12] = 29;
arr[13] = 30;
arr[14] = 31;
arr[15] = 32;
arr[16] = 34;
arr[17] = 36;
arr[18] = 37;
arr[19] = 39;
arr[20] = 43;
arr[21] = 44;
arr[22] = 45;
arr[23] = 48;
arr[24] = 49;
arr[25] = 50;
arr[26] = 51;
arr[27] = 53;
arr[28] = 54;
arr[29] = 56;
arr[30] = 57;
arr[31] = 59;
arr[32] = 62;
arr[33] = 63;
arr[34] = 64;
arr[35] = 68;
arr[36] = 69;
--DarkScence();
target = "".. arr[math.random(1,#arr)] .. "";
jyx2_MovePlayer(target,"Level/NavigateObjs");
--jyx2_Wait(1);
--LightScence();
Talk(0,"风在脑后，鸟在身旁。我会飞了吧。","", 1);
ModifyEvent(1, 20, -2, -2, 2094, 2093, -2, -2, -2, -2, -2, -2, -2);
do return end;