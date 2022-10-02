Talk(71, "小兄弟，得手了吗？", "", 0);
Talk(0, "哼！我差点就被你利用了。", "", 1);
Talk(71, "你都知道了。", "", 0);
Talk(0, "《<color=#A564DB>鹿鼎记</color>》是不是还在你这边，老头！", "", 1);
Talk(71, "是在我这没错，你想怎样？", "", 0);
Talk(0, "我想怎样！我想好好捶你一顿。", "", 1);
if TryBattle(95) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    ModifyEvent(-2, -2, -2, -2, 612, -1, -1, -2, -2, -2, -2, -2, -2);
    LightScence();
    AddItem(150, 1);
    AddRepute(8);
do return end;
