if HaveItem(202) == true then goto label0 end;
    do return end;
:: label0 ::
AddItemWithoutHint(202, -1);
math.randomseed(tostring(os.time()):reverse():sub(1, 7));
if (IcanFly == 1) then goto label2 end;--跳转到瞬移
Talk(0,"<color=blue>神游券</color>真神奇，快点继续跑啊。","", 1);
--构造数组
arr = {}
arr[1] = 1;
arr[2] = 3;
arr[3] = 40;
arr[4] = 61;
jyx2_WalkFromTo(-1, arr[math.random(1,#arr)]);
Talk(0,"哈哈哈哈，遨游寰宇，神游天下，爽啊。还得找那半仙多拿几张<color=blue>神游券</color>去。","", 1);
ModifyEvent(1, 20, -2, -2, 2090, 2091, -2, -2, -2, -2, -2, -2, -2);
do return end;
:: label2 ::
Talk(0,"<color=blue>神游券</color>真神奇，再来一次。","", 1);
--构造数组
arr = {};
arr[1] = 0;
arr[2] = 6;
arr[3] = 8;
arr[4] = 16;
arr[5] = 23;
arr[6] = 24;
arr[7] = 29;
arr[8] = 30;
arr[9] = 31;
arr[10] = 34;
arr[11] = 36;
arr[12] = 37;
arr[13] = 39;
arr[14] = 43;
arr[15] = 45;
arr[16] = 48;
arr[17] = 49;
arr[18] = 50;
arr[19] = 53;
arr[20] = 54;
arr[21] = 56;
arr[22] = 57;
arr[23] = 59;
arr[24] = 62;
arr[25] = 63;
arr[26] = 64;
arr[27] = 69;
--DarkScence();
target = "".. arr[math.random(1,#arr)] .. "";
jyx2_MovePlayer(target,"Level/NavigateObjs");
--jyx2_Wait(1.5);
--LightScence();
Talk(0,"哈哈哈哈，遨游寰宇，神游天下，爽啊。还得找那半仙多拿几张<color=blue>神游券</color>去。","", 1);
ModifyEvent(1, 20, -2, -2, 2090, 2091, -2, -2, -2, -2, -2, -2, -2);
do return end;