if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "《<color=#A564DB>连城诀</color>》一书是藏在某个地方，但它的埋藏地点却是记录在一本书里。一本很普通的书。", "", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
