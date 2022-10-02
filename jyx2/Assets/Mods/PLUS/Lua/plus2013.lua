Talk(0, "这里有张床。", "", 1);

if InTeam(44) == true then goto label0 end;
do return end;
::label0::
    Talk(44, "徒弟，你要是累了可以在这里休息一下。", "", 0);
	if AskRest() == true then goto  label1 end;
	Talk(0, "你是我徒弟好不好，师父不累。", "", 1);
    do return end;
::label1::
    Talk(0, "你是我徒弟好不好，师父还真有点累，好好服侍师父休息。", "", 1);
    DarkScence();
    Rest();
    SetRoleFace(1);
    LightScence();
	Talk(0, "乖徒弟招待的还不错。", "", 1);
do return end;
