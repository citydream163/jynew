Talkplus(3898);--0, "好累啊。"
if InTeam(1) == true then goto label0 end;
Talkplus(3899);--3, "行走江湖，需要注意休息！"
do return end;
::label0::
Talkplus(3900);--3, "胡兄弟，你若是需要恢复体力，可以在此稍作调息。"
Talkplus(3901);--1, "多谢苗大侠。"
if AskRest() == true then goto  label1 end;
Talkplus(3902);--0, "我们还是赶路要紧。"
do return end;
::label1::
DarkScence();
RestFight();
SetRoleFace(1);
LightScence();
Talkplus(3903);--1, "可以出发了。"
do return end;