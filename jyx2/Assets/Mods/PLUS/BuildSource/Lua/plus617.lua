Talkplus(3056);--25, "公子武功，品性，小女子都很欣赏的紧，真想跟公子一起闯荡江湖。"
Talkplus(3057);--0, "＜苗族女子真大胆，说话真直接。＞"
if AskJoin() == true then goto label0 end;
Talkplus(3058);--0, "姑娘好意心领了，在下一介莽夫，实不敢耽搁姑娘的青春。"
do return end;
::label0::
if TeamIsFull() == false then goto label1 end;
Talkplus(3059);--25, "你的队伍已满，我无法加入。"
do return end;
::label1::
Talkplus(3060);--0, "能有美人相伴天涯，实乃我之荣幸。"
DarkScence();
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/lanfenghuang", "");--蓝凤凰加入
ModifyEvent(-2, 0, -2, -2, 619, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 1, -2, -2, 619, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 2, -2, -2, 619, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 3, -2, -2, 619, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 4, -2, -2, 619, -1, -1, -2, -2, -2, -2, -2, -2);
LightScence();
Join(25);
do return end;