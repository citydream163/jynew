Talkplus(3811);--0, "头有点晕。"
if InTeam(2) == true then goto label0 end;
do return end;
::label0::
if InTeam(1) == true then goto label2 end;
Talkplus(3812);--2, "多吃药！"
do return end;
::label2::
Talkplus(3813);--2, "胡大哥，你若是倦了就在这里休息一会吧。"
Talkplus(3814);--1, "多谢灵姑娘。"
if AskRest() == true then goto  label1 end;
Talkplus(3815);--0, "我们还是赶路要紧。"
do return end;
::label1::
--Talkplus(3816);--1, "那就劳烦灵姑娘了。"
DarkScence();
Rest();
SetRoleFace(1);
LightScence();
Talkplus(3817);--1, "我们出发吧。"
do return end;