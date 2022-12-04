if UseItem(186) == true then goto label0 end;
do return end;
::label0::
AddItemWithoutHint(186, -1);
Talkplus(3362);--73, "嵩山大会何时召开？或许等你拜访完五岳剑派其它四派掌门后就召开了。"
Add3EventNum(-2, 0, 0, 1, -1);
do return end;