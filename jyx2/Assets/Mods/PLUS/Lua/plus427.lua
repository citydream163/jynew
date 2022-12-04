Talkplus(1940);--65, "真希望瑛姑赶快来杀我，解除我的罪孽。"
if AskBattle() == true then goto label0 end;
Talkplus(1941);--0, "……"
do return end;
::label0::
AddEthics(-1);
if TryBattle(68) == false then goto label1 end;
ModifyEvent(21, 1, -2, -2, 420, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu|启动420脚本。场景21-编号01
ModifyEvent(-2, -2, -2, -2, -1, -1, -1, 6226, 6226, 6226, -2, -2, -2);--by fanyu|改变贴图。场景47-编号00
jyx2_SwitchRoleAnimation("NPC/一灯","Assets/BuildSource/AnimationControllers/Dead.controller");
Add3EventNum(65,995,Calendar(2),0,0);--一灯击杀计数器
LightScence();
AddEthics(-10);
AddRepute(10);
do return end;
::label1::
LightScence();
Talkplus(1942);--65, "阁下还是回去请瑛姑亲自来动手吧，我会在这等她的。"
do return end;