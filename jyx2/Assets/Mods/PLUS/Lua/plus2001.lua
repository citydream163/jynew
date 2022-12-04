Talkplus(3790);--0, "走了这么远的路，好想休息一下呀。"
if InTeam(1) == true then goto label0 end;
do return end;
::label0::
Talkplus(3791);--1, "兄弟们，大伙在我家休息一下再走吧。"
if AskRest() == true then goto  label1 end;
Talkplus(3792);--0, "下次再来叨扰胡大哥。"
do return end;
::label1::
Talkplus(3793);--0, "好，尊敬不如从命，叨扰胡大哥了。"
DarkScence();
Rest();
SetRoleFace(3);
LightScence();
Talkplus(3794);--0, "多谢胡大哥招待，我们闯荡江湖去。"
do return end;