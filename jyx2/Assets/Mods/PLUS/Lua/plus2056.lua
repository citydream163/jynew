ModifyEvent(-2, -2, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
if HaveItem(149) == false then goto label20 end;
Talk(0, "这箱子是空的。", "", 1);
do return end;
::label20::
AddItem(149, 1);
do return end;
