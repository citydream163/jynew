if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "在“十四天书”中有两本书的书名与“雕”有关，分别是《<color=#A564DB>射雕英雄传</color>》及《<color=#A564DB>神雕侠侣</color>》两本。江湖上人传言常在塞北看见一头大雕在那附近出没。", "", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
