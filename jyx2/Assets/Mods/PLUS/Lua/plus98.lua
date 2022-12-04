Talkplus(490);--0,"老婆婆，这岛很美，您一个人住着吗？"
Talkplus(491);--15,"小子，来我岛上寻晦气的吗？"
Talkplus(492);--0,"没的事，我只是四处旅游，无意间来到这岛上的。"
Talkplus(493);--15,"说实话，你是哪一派的弟子？到这岛上来做什么？"
Talkplus(494);--0,"我无门无派，无师自通，自己四处“练练功”罢了。"
Talkplus(495);--15,"自已四处练练？那好，我老太婆就来陪你玩玩。"
if AskBattle() == true then goto label0 end;
ModifyEvent(-2, -2, -2, -2, 99, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;
::label0::
Talkplus(496);--0,"好啊！闲来无事，就跟您老人家练练功增加些经验点数吧。"
if TryBattle(14) == false then goto label1 end;
ModifyEvent(-2, -2, -2, -2, 100, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 4, -2, -2, 2024, -1, -1, -2, -2, -2, -2, -2, -2);--by citydream 启动脚本2024 场景73-编号4
ModifyEvent(-2, 5, -2, -2, 2024, -1, -1, -2, -2, -2, -2, -2, -2);--by citydream 启动脚本2024 场景73-编号5
SetScenceMap(-2, 1, 21, 17, 0); --打开门
jyx2_FixMapObject("灵蛇岛开门",1);
LightScence();
Talkplus(497);--15,"好小子，有你的。真是长江后浪推前浪。你是来救王难姑的吧，既然打输了你，老婆婆我就改天再寻他们的晦气。"
Talkplus(498);--0,"＜什么救不救人的？我都搞糊涂了。＞"
AddRepute(3);
SetFlag("ShowLocationName.灵蛇岛",1);--大地图显示当前地图名
do return end;
::label1::
ModifyEvent(-2, -2, -2, -2, 99, -1, -1, -2, -2, -2, -2, -2, -2);
LightScence();
Talkplus(499);--15,"看你资质挺好的，老婆婆我不想杀你，你走吧。"
do return end;