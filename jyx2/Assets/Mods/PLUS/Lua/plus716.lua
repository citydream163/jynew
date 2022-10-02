if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "在南海上有个<color=Red>侠客岛</color>，岛上每十年就派出赏善罚恶两使者到中土上，邀请各派掌门前去岛上喝一碗<color=#FD726F>腊八粥</color>。今年正好是第十年，有机会你可以上<color=Red>侠客岛</color>上看一看，或许有《<color=#A564DB>侠客行</color>》一书的消息。", "", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
