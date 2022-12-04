Talkplus(519);--15,"你又想做什么？"
if AskBattle() == true then goto label0 end;
do return end;
::label0::
Talkplus(520);--0,"晚辈斗胆向前辈讨教讨教。"
Talkplus(521);--15,"好，咱们来玩玩。"
if TryBattle(14) == false then goto label1 end;
ModifyEvent(-2, -2, -2, -2, 100, -1, -1, -2, -2, -2, -2, -2, -2);
SetScenceMap(-2, 1, 21, 17, 0);
jyx2_FixMapObject("灵蛇岛开门",1);
LightScence();
Talkplus(522);--0,"老婆婆，我想请问你天有多高，地有多厚啊？我真的不知道耶！"
Talkplus(523);--15,"哼！"
AddRepute(3);
do return end;
::label1::
LightScence();
Talkplus(524);--15,"看你资质挺好的，老婆婆我不想杀你，你走吧。"
do return end;