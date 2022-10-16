if GetTeamMembersCount() > 1 then
	Talk(0,"小白小白，我们回来了，今天乖不乖啊。");
else
	Talk(0,"小白小白，我回来了，今天乖不乖啊。");
end;
PlayWave(103);
jyx2_Wait(0.5);
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
do return end;