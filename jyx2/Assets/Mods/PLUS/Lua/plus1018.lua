if (isBattle == 1) then
arr = {1,2,9,16,17,25,28,29,35,36,37,38,44,45,47,48,49,51,53,54,58,59,61,63,76};
	for i = 1, #arr do
		jyx2_ReplaceSceneObject("","NPC/"..arr[i],"");
		evt2 = i + 254;--战斗编号（=触发器编号）
		jyx2_ReplaceSceneObject("","Triggers/"..evt2,"");--隐藏触发器	
	end;
	isBattle = 0;
end;
if GetTeamMembersCount() == 1 and jyx2_CheckEventCount(70,333,0) == 0 and jyx2_CheckEventCount(70,330,0) == 0 and jyx2_CheckEventCount(38,333,0) == 1 then--初遇小白
	ModifyEvent(-2, 10, 0, 0, -1, -1, 2088, -1, -1, -1, -2, -2, -2);
	Talkplus(3785);--0, "又回家了，去睡一觉。"
	jyx2_WalkFromTo(-1,1);
end;
if jyx2_CheckBookAndRepute() == true then goto label1 end;
do return end;
::label1::
Talkplus(3786);--0, "真累啊，好想大睡一觉。"
ModifyEvent(-2, -2, -2, -2, -1, -1, 2199, -1, -1, -1, -2, -2, -2);
jyx2_WalkFromTo(-1,1);
Talkplus(3787);--0, "为了走更远的路，适当的休息也是必须的。我就好好的睡一觉吧！"
DarkScence();
Rest();
SetRoleFace(1);
jyx2_ReplaceSceneObject("","Dynamic/请帖","1");
ModifyEvent(-2, 11, 0, 0, 932, -1, -1, 7968, -1, -1, -1, -1, -1);
LightScence();
Talkplus(3788);--0, "哎呀，好睡好睡！"
ModifyEvent(-2, 10, 0, 0, 931, -1, -1, -1, -1, -1, -2, -2, -2);--刷新床为正常睡觉
jyx2_WalkFromTo(-1,2);
Talkplus(3789);--0, "咦！桌上好像有封请帖…………是今年华山论剑的邀请帖！经过这么久的努力，我终于得到认可，受邀参加今年在华山举行的武林大会。似乎已到了游戏的尽头了，只要我在武林大会中打败群雄，夺得武林盟主之位，那么我就可以得知如何离开这里的秘密。感谢各位朋友的帮忙，让我能顺利走到现在，接下来就得看我自己了。"
jyx2_ReplaceSceneObject("","Dynamic/请帖","");
AddItem(189, 1);
ModifyEvent(25, 24, -2, -2, 934, 935, -1, -2, -2, -2, -2, -2, -2);
AllLeave();
do return end;