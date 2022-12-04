ModifyEvent(-2, -2, 0, 0, 931, -1, -1, -1, -1, -1, -2, -2, -2);--清空本事件,更新为正常睡觉
if AskRest() == true then goto  label0 end;
do return end;
::label0::
Talkplus(4147);--0, "为了走更远的路，适当的休息也是必须的。我就好好的睡一觉吧！"
DarkScence();
SetRoleFace(1);
PlayWave(104);--狗旺旺
jyx2_Wait(0.5);
jyx2_ReplaceSceneObject("","NPC/小白","");--不显示小白
if JudgeEthics(0, 0, 50) == true then
	for i = 1,GetRoleLevel(0)-1 do
		Levelup(330);
	end
	AddHpWithoutHint(330,Calendar(2)-jyx2_CheckEventCount(70,333,2)+jyx2_CheckEventCount(70,333,0));
	JoinWithoutHint(330);
else
	for i = 1,GetRoleLevel(0)-1 do
		Levelup(329);
	end
	AddHpWithoutHint(329,Calendar(2)-jyx2_CheckEventCount(70,333,2)+jyx2_CheckEventCount(70,333,0));
	JoinWithoutHint(329);
end;
LightScence();
jyx2_WalkFromTo(-1,3);
Talkplus(4148);--0, "咦，我的小白怎么不见了！你又是谁？");
Talkplus(4149);--330, "我是天天陪着你的朋友啊，是不是睡糊涂了？");
Talkplus(4150);--0, "我怎么不记得有一个朋友了，不过我最近正缺帮手，有人帮忙也是好事一桩啊。");
if jyx2_CheckEventCount(70,330,0) == 0 then Add3EventNum(70,330,Calendar(2),0,0) end;--初识翡冷翠计数器
do return end;