Talkplus(500);--15,"你又想做什么？"
if AskBattle() == true then goto label0 end;
do return end;
::label0::
Talkplus(501);--0,"晚辈斗胆向前辈讨教讨教。"
Talkplus(502);--15,"好，咱们来玩玩。"
if TryBattle(14) == false then goto label1 end;
ModifyEvent(-2, -2, -2, -2, 100, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 4, -2, -2, 2024, -1, -1, -2, -2, -2, -2, -2, -2);--by citydream 启动脚本2024 场景73-编号4
ModifyEvent(-2, 5, -2, -2, 2024, -1, -1, -2, -2, -2, -2, -2, -2);--by citydream 启动脚本2024 场景73-编号5
SetScenceMap(-2, 1, 21, 17, 0); --开门
jyx2_FixMapObject("灵蛇岛开门",1); 
LightScence();
Talkplus(503);--15,"好小子，有你的。真是长江后浪推前浪。你是来救王难姑的吧，既然打输了你，老婆婆我就改天再寻他们的晦气。"
Talkplus(504);--0,"＜什么救不救人的？我都搞糊涂了。＞"
AddRepute(3);
SetFlag("ShowLocationName.灵蛇岛",1);--大地图显示当前地图名
do return end;
::label1::
LightScence();
Talkplus(505);--15,"看你资质挺好的，老婆婆我不想杀你，你走吧。"
do return end;