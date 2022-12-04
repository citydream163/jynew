Talkplus(4180);--27, "想不到你还记得来看我。"--东方不败
if TryBattle(241) == true then goto label0 end;--梅庄战东方不败5000
Dead();
do return end;
::label0::
SetRoleFace(1);
--if JudgeEthics(0, 0, 50) == true and (GetTeamMembersCount() == 1 or (GetTeamMembersCount() == 2 and InTeam(329)) or (GetTeamMembersCount() == 2 and InTeam(330))) then goto label1 end;
if (GetTeamMembersCount() == 1 or (GetTeamMembersCount() == 2 and InTeam(329)) or (GetTeamMembersCount() == 2 and InTeam(330))) then goto label1 end;
Talkplus(4181);--0, "告辞。"
do return end;
::label1::
Talkplus(4182);--27, "想不到久未离开黑木崖，江湖上早已是新人胜旧人了。阁下武功如此高强，本人深感钦佩，你就做我的莲弟吧。"--东方不败
DarkScence();
 jyx2_ReplaceSceneObject("", "NPC/东方不败", ""); 
 LightScence();
 Join(27);
 AddEthics(-10);
 ModifyEvent(-2, -2, -1, -1, -1, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;