Talkplus(4114);--0, "杨兄怎么跑到这里来的？"
if AskJoin() == true then goto label0 end;
Talkplus(4115);--0, "杨兄跑的真快。"
Talkplus(4116);--58, "小时候经常和姑姑这么玩。"
do return end;
::label0::
if InTeam(59) == true then goto label2 end;
Talkplus(4117);--0, "还是想请杨兄加入队伍，助我一臂之力。"
Talkplus(4118);--58, "那有什么问题，别的没有，就是有“一臂”。"
Talkplus(4119);--0, "那就走吧。"
if TeamIsFull() == false then goto label1 end;
Talkplus(4120);--58, "你的队伍已满，我无法加入。"
do return end;	
do return end;
::label2::
Talkplus(4121);--59, "过儿快回到我的身边来。"
Talkplus(4122);--58, "姑姑我来了。"
if TeamIsFull() == false then goto label1 end;
Talkplus(4123);--58, "你的队伍已满，我无法加入。"
do return end;	
::label1::
DarkScence();
jyx2_ReplaceSceneObject("", "NPC/杨过", "");--杨过加入队伍    
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2); 
LightScence();
Join(58);
do return end;