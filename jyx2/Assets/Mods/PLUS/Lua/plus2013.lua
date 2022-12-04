Talkplus(3872);--0, "这里有张床。"
if InTeam(44) == true then goto label0 end;
do return end;
::label0::
Talkplus(3873);--44, "徒弟，你要是累了可以在这里休息一下。"
if AskRest() == true then goto  label1 end;
Talkplus(3874);--0, "你是我徒弟好不好，师父不累。"
do return end;
::label1::
Talkplus(3875);--0, "你是我徒弟好不好，师父还真有点累，好好服侍师父休息。"
DarkScence();
Rest();
SetRoleFace(1);
LightScence();
Talkplus(3876);--0, "乖徒弟招待的还不错。"
do return end;