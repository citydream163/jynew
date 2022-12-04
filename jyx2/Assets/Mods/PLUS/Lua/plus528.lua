Talkplus(2562);--50, "怎么，你准备好了吗？"
if AskBattle() == true then goto label0 end;
Talkplus(2563);--0, "嗯，还没。"
Talkplus(2564);--50, "乔某随时在此等候少侠。"
do return end;
::label0::
Talkplus(2565);--0, "在下特来领教乔大侠的“降龙十八掌”。"
if TryBattle(83) == true then goto label1 end;
LightScence();
Talkplus(2566);--50, "你还不行，再回去苦练吧。"
do return end;
::label1::
LightScence();
Talkplus(2567);--50, "少侠经这多日来的修练，武功果然不凡，乔某拜服。《天龙八部》你就拿去吧。"
Talkplus(2568);--0, "哪里，乔帮主承让了。"
AddItem(147, 1);
ModifyEvent(-2, -2, -2, -2, 529, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本529 场景51-14
ModifyEvent(-2, 20, -2, -2, -1, -1, 530, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本530 场景51-20
ModifyEvent(-2, 21, -2, -2, -1, -1, 530, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本530 场景51-21
if HaveItem(183) == true then goto label2 end;
do return end;
::label2::
ModifyEvent(28, 12, -2, -2, 518, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本518 场景28-12
AddEthics(12);
AddRepute(15);
do return end;