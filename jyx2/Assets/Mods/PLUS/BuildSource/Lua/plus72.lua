Talkplus(329);--9,"你能带我去找义父吗？"
if AskJoin() == true then goto label0 end;
Talkplus(330);--0,"这恐怕不行，我还有许多要事在身，无法带你去找他。"
Talkplus(331);--9,"…………"
do return end;
::label0::
Talkplus(332);--0,"好啊，我就带你去找他。"
if TeamIsFull() == false then goto label1 end;
Talkplus(333);--9,"你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(334);--9,"谢谢这位大哥。"
DarkScence();
jyx2_ReplaceSceneObject("", "NPC/张无忌", ""); 
ModifyEvent(-2, -2, 0, -1, -1, -1, -1, -1, -1, -1, -1, -2, -2);
LightScence();
Join(9);
AddEthics(2);
do return end;