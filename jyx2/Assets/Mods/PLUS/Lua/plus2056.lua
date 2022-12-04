ModifyEvent(-2, -2, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
if HaveItem(149) == false then goto label20 end;
Talkplus(3998);--0, "这箱子是空的。"
do return end;
::label20::
AddItem(149, 1);
do return end;