Talkplus(3630);--44, "徒弟呀，你来看为师了。"
if AskJoin() == true then goto label0 end;
Talkplus(3631);--0, "有没有搞错，徒弟是你，我才是你师父。"
do return end;
::label0::
Talkplus(3632);--0, "有没有搞错，徒弟是你，我才是你师父。走吧，师父我最近少个人伺候，总觉得浑身不对劲。"
if TeamIsFull() == false then goto label1 end;
Talkplus(3633);--44, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3634);--44, "我就知道找我没好事。"
DarkScence();
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
jyx2_ReplaceSceneObject("","NPC/NanHaiEShen","");
LightScence();
Join(44);
do return end;