if HaveItem(202) == true then goto label0 end;
    do return end;
:: label0 ::
AddItemWithoutHint(202, -1);
math.randomseed(tostring(os.time()):reverse():sub(1, 7));
if (IcanFly == 1) then goto label2 end;--跳转到瞬移
Talk(0,"真有半仙说的那么玄吗？快试试看。","", 1);
--构造数组
arr = {}
arr[1] = 1;
arr[2] = 40;
arr[3] = 60;
arr[4] = 61;
jyx2_WalkFromTo(-1, arr[math.random(1,#arr)]);
Talk(0,"哎呀，怎么一跑起来就停不下来了，可累死我了，不过沿途的风景还真不错。这是哪里呀，去打听一下。","", 1);
ModifyEvent(1, 20, -2, -2, 2089, 2088, -2, -2, -2, -2, -2, -2, -2);
do return end;
:: label2 ::
Talk(0,"真有半仙说的那么玄吗？快试试看。","", 1);
--构造数组
arr = {};
arr[1] = 0;
arr[2] = 8;
arr[3] = 24;
arr[4] = 29;
arr[5] = 30;
arr[6] = 34;
arr[7] = 36;
arr[8] = 37;
arr[9] = 39;
arr[10] = 43;
arr[11] = 48;
arr[12] = 50;
arr[13] = 54;
arr[14] = 56;
arr[15] = 59;
arr[16] = 63;
arr[17] = 64;
arr[18] = 69;
--DarkScence();
target = "".. arr[math.random(1,#arr)] .. "";
jyx2_MovePlayer(target,"Level/NavigateObjs");
--jyx2_Wait(2);
--LightScence();
Talk(0,"哎呀，怎么一下子跑到这里来了，这是哪里呀，去打听一下。","", 1);
ModifyEvent(1, 20, -2, -2, 2089, 2088, -2, -2, -2, -2, -2, -2, -2);
do return end;