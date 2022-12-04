if UseItem(37) == true then goto label0 end;
do return end;
::label0::
AddItemWithoutHint(37, -1);
Talkplus(2765);--47, "小子，你捉到这冰蚕了。好，有了它，我这毒掌威力就更大了。"
AddAttackPoison(47,50);
AddAntiPoison(47,100);
ModifyEvent(-2, 3, -2, -2, 561, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 4, -2, -2, 562, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;