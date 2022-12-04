Talkplus(2849);--0, "贤弟，我们走了吧。"
if TeamIsFull() == false then goto label0 end;
Talkplus(2850);--49, "你的队伍已满，我无法加入。"
do return end;
::label0::
DarkScence();
jyx2_ReplaceSceneObject("", "NPC/xuzhu", "");--虚竹加入
ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
LightScence();
if (difficulty == 2) then
	for j = 1,math.random(10, 18) do
		Levelup(49);
	end
elseif (difficulty == 1) then
	for j = 1,2 do
		HMPUP(49);
	end
	AddAttack(49, math.random(28, 32));
	AddSpeed(49, math.random(18, 22));
else
	AddMp(49, 300);
	AddHp(49, 200);
	AddAttack(49, 30);
	AddSpeed(49, 20);
end
LearnMagic2(49, 15, 0);
SetPersonMPPro(49,2);
Join(49);
do return end;