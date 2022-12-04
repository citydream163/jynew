if math.random(1,100) > 33 then goto label1 end;
Talkplus(3984);--0, "这里没人。"
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
do return end;
::label1::
if InTeam(35) == true then goto label0 end;
Talkplus(3985);--30, "思过崖是练功的地方。"
if AskBattle() == false then goto label4 end;
if TryBattle(245) == true then goto label2 end;--思过崖战风清扬4800
do return end;
::label2::
Talkplus(3986);--0, "多谢前辈手下留情。"
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
do return end;
::label0::
Talkplus(3987);--30, "冲儿，我看看你的武功精进的如何了。"--风清扬
if AskBattle() == false then goto label5 end;
if TryBattle(246) == true then goto label3 end;--思过崖战风清扬4800
Talkplus(3988);--30, "冲儿，你还需多历练。"--风清扬
Talkplus(3989);--35, "弟子定当潜心练剑。"
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
do return end;
::label3::
Talkplus(3990);--35, "太师叔，你去哪里？"
Talkplus(3991);--30, "以后你可以独自行走江湖了。"--风清扬
ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
do return end;
::label4::
Talkplus(3992);--0, "晚辈哪里是前辈的对手啊。"
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
do return end;
::label5::
Talkplus(3993);--35, "太师叔，我受伤了，等我养好伤再来和你练习剑术。"
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
do return end;