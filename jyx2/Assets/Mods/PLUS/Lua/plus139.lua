Talkplus(666);--7,"没事就快走吧，别在此逗留。"
if AskBattle() == true then goto label0 end;
do return end;
::label0::
Talkplus(667);--0,"在下想请何掌门放过那位可怜的大夫，何况那女人长得这么丑，不要也罢。"
Talkplus(668);--7,"你说什么！"
Talkplus(669);--0,"糟了，说溜了嘴。"
if TryBattle(18) == true then goto label1 end;
Dead();
do return end;
::label1::
LightScence();
Talkplus(670);--7,"…………"
ModifyEvent(-2, 8, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/yisheng", "");--医生逃跑
ModifyEvent(-2, -2, -2, -2, 165, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 9, 0, 0, 2139, -1, -1, -1, -1, -1, -2, -2, -2);
AddEthics(2);
AddRepute(3);
do return end;