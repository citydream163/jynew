Talkplus(446);--0,"好啊！成昆，原来你躲在这里。怎么，几个坏蛋聚在这里，是不是又在一起商量什么坏勾当？"
Talkplus(447);--18,"哼！上次的事全被你坏了，我这次饶不了你。"
Talkplus(448);--0,"手下败将还说大话，这次得小心一点，可别再让你跑了。"
if TryBattle(13) == true then goto label0 end;
Dead();
do return end;
::label0::
ModifyEvent(-2, 0, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 3, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 4, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/成昆喽喽1", "");--非当前场景时，目前代码逻辑不会立即刷新gameobject。所以显示/隐藏当前场景人物时，不需要带场景号
jyx2_ReplaceSceneObject("", "NPC/成昆喽喽2", "");
jyx2_ReplaceSceneObject("", "NPC/成昆喽喽3", "");
jyx2_ReplaceSceneObject("", "NPC/成昆", "");
Add3EventNum(18,995,Calendar(2),0,0);--成昆击杀计数器
LightScence();
Talkplus(449);--0,"今天真是大快人心，替武林除了一个大害。"
AddItem(191, 1);
AddRepute(5);
SetFlag("ShowLocationName.成昆居",1);--大地图显示当前地图名
do return end;