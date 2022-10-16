if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "相传有一对宝刀上藏有无敌于天下的秘密，这一对刀分别是“<color=blue>鸳刀</color>”与“<color=blue>鸯刀</color>”。相信这两把刀与《<color=#A564DB>鸳鸯刀</color>》一书也有着极大的关连。", "", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
