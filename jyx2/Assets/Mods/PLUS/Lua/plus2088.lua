ModifyEvent(-2, -2, 0, 0, 931, -1, -1, -1, -1, -1, -2, -2, -2);--清空本事件,更新为正常睡觉
if AskRest() == true then goto  label0 end;
do return end;
::label0::
Talkplus(4135);--0, "为了走更远的路，适当的休息也是必须的。我就好好的睡一觉吧！"
DarkScence();
SetRoleFace(1);
LightScence();
PlayWave(104);--狗旺旺
jyx2_Wait(0.5);
Talkplus(4136);--0, "什么声音？"
if TryBattle(333) == true then goto label1 end;
Talkplus(4137);--0, "哎呀，好痛哦！"
do return end;
::label1::
Add3EventNum(70,333,1,0,0);--小白计数器
if jyx2_CheckEventCount(70,333,2) == 0 then Add3EventNum(70,333,0,0,Calendar(2)) end;--初识小白计数器
AddHpWithoutHint(0,math.random(10,30)+moRenshuzhi*3);
jyx2_ReplaceSceneObject("","NPC/小白","1");--显示小白
ModifyEvent(-2, 18, 0, 0, -1, -1, 2089, -1, -1, -1, -2, -2, -2);
LightScence();
jyx2_WalkFromTo(-1,3);
do return end;