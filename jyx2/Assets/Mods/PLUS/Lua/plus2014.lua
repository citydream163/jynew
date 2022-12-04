Talkplus(3877);--0, "这里挺简朴。"
if InTeam(54) == true then goto label0 end;
do return end;
::label0::
Talkplus(3878);--54, "小兄弟走累了吧，可以在这里休息一程。"
if AskRest() == true then goto  label1 end;
Talkplus(3879);--0, "多谢袁兄，我还急着赶路。"
do return end;
::label1::
Talkplus(3880);--0, "多谢袁兄，我还真有点累，那就麻烦袁兄了。"
DarkScence();
Rest();
SetRoleFace(3);
LightScence();
Talkplus(3881);--0, "又可以出发了。"
do return end;