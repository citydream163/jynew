Talk(20, "小子，你擅闯我衡山，是何用意？莫非是<color=Yellow>左冷禅</color>派来的奸细。", "", 0);
if TryBattle(28) == true then goto label0 end;
    Dead();
    do return end;
::label0::
    ModifyEvent(-2, -2, -2, -2, 191, -1, -1, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 19, -2, -2, -1, -1, 222, -2, -2, -2, -2, -2, -2);
    ModifyEvent(-2, 21, -2, -2, -1, -1, 222, -2, -2, -2, -2, -2, -2);
    LightScence();
    Talk(20, "回去告诉<color=Yellow>左冷禅</color>，下月十五在嵩山召开的大会，我<color=Yellow>莫大</color>一定到场。我倒要看看其它三派的掌门怎么说。", "", 0);
    AddItem(69, 1);
    AddRepute(3);
do return end;
