Talkplus(3576);--16, "少侠别来无恙？"
if AskJoin() == true then goto label0 end;
Talkplus(3577);--0, "一切还好。"
do return end;
::label0::
Talkplus(3578);--0, "少了胡先生的奇妙医术，一路上难免病痛烦身，是否可以再请胡先生帮忙呢？"
if TeamIsFull() == false then goto label1 end;
Talkplus(3579);--16, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3580);--16, "少侠有求，胡某自当效力。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/胡青牛","");
LightScence();
Join(16);
do return end;