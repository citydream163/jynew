if UseItem(186) == true then goto label0 end;
do return end;
::label0::
AddItemWithoutHint(186, -1);
Talkplus(3387);--74, "在极东之处有座小岛，岛上有个山洞，里面藏有你要的东西。不过你必须带一对刀去才可以。"
Add3EventNum(-2, 1, 0, 1, -1);
do return end;