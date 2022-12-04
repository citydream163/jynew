Talkplus(1563);--90, "来者何人，可知这里是凌霄城。"
Talkplus(1564);--0, "小弟有事想求见贵派掌门。"
Talkplus(1565);--90, "掌门师叔现下不见客。"
Talkplus(1566);--0, "在下并无恶意，烦请这位大哥通报一声。"
Talkplus(1567);--90, "本派今有大事要办，快快离去，别在这啰嗦。"
SetFlag("ShowLocationName.凌霄城",1);--大地图显示当前地图名
if AskBattle() == true then goto label0 end;
do return end;
::label0::
Talkplus(1568);--0, "实在对不起，在下一定得见见贵派掌门。"
Talkplus(1569);--90, "好个家伙！想硬闯是不是？"
if TryBattle(58) == true then goto label1 end;
Dead();
do return end;
::label1::
ModifyEvent(-2, 0, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
DarkScence();
jyx2_ReplaceSceneObject("","NPC/天山弟子0","");
jyx2_ReplaceSceneObject("","NPC/天山弟子1","");
jyx2_ReplaceSceneObject("","NPC/天山弟子2","");
LightScence();
AddRepute(1);
do return end;