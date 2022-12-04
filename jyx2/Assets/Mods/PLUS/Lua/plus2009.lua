Talkplus(3842);--0, "此地好幽静。"
if InTeam(45) == true then goto label0 end;
do return end;
::label0::
Talkplus(3843);--45, "少侠若在此歇脚，弟子将不胜荣幸之至。"
if AskRest() == true then goto  label1 end;
Talkplus(3844);--0, "今天就不劳烦先生了，我们还是赶路要紧。"
do return end;
::label1::
Talkplus(3845);--0, "多谢先生，我们就在此处休息片刻。"
DarkScence();
Rest();
SetRoleFace(1);
LightScence();
Talkplus(3846);--0, "恢复如初。"
do return end;