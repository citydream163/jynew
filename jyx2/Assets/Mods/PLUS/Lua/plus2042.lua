math.randomseed(tostring(os.time()):reverse():sub(1, 7));
if math.random(1,100) > 33 then goto label1 end;
Talk(0, "这里没人。", "", 1);
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
do return end;
::label1::
if InTeam(35) == true then goto label0 end;
Talk(30, "<color=Red>思过崖</color>是练功的地方。", "", 0);--风清扬
if AskBattle() == false then goto label4 end;
if TryBattle(245) == true then goto label2 end;--思过崖战风清扬4800
do return end;
::label2::
Talk(0, "多谢前辈手下留情。", "", 1);
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
do return end;
::label0::
Talk(30, "冲儿，我看看你的武功精进的如何了。", "", 0);--风清扬
if AskBattle() == false then goto label5 end;
if TryBattle(246) == true then goto label3 end;--思过崖战风清扬4800
Talk(30, "冲儿，你还需多历练。", "", 0);--风清扬
Talk(35, "弟子定当潜心练剑。", "", 1);
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
do return end;
::label3::
Talk(35, "太师叔，你去哪里？", "", 1);
Talk(30, "以后你可以独自行走江湖了。", "", 0);--风清扬
ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
do return end;
::label4::
Talk(0, "晚辈哪里是前辈的对手啊。", "", 1);
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
do return end;
::label5::
Talk(35, "太师叔，我受伤了，等我养好伤再来和你练习剑术。", "", 1);
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
do return end;