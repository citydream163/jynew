Talk(0, "头有点晕。", "", 1);

if InTeam(2) == true then goto label0 end;
do return end;
::label0::
if InTeam(1) == true then goto label2 end;
Talk(2, "多吃药！", "", 0);
do return end;
::label2::
    Talk(2, "胡大哥，你若是倦了就在这里休息一会吧。", "", 0);
	Talk(1, "多谢灵姑娘。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "我们还是赶路要紧。", "", 1);
    do return end;
::label1::
	--Talk(1, "那就劳烦灵姑娘了。", "", 0);
    DarkScence();
    Rest();
    SetRoleFace(1);
    LightScence();
	Talk(1, "我们出发吧。", "", 0);
do return end;

