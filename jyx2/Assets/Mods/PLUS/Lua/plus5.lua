Talkplus(22);--1,"小兄弟，再次造访，是否练就了更高深的武功？胡某候教。"
if AskBattle() == true then goto label0 end;
do return end;
::label0::
Talkplus(23);--0,"晚辈斗胆向前辈讨教讨教。"
if TryBattle(7) == false then goto label1 end;
LightScence();
Talkplus(24);--1,"可恨啊！可恨！只恨胡某刀谱不全，未能练成我祖传之胡家刀法……"
ModifyEvent(-2, -2, -2, -2, 3, -2, -2, -2, -2, -2, -2, -2, -2);
do return end;
::label1::
LightScence();
Talkplus(25);--1,"小兄弟，功夫虽有精进，但火候仍嫌不够。"
Talkplus(26);--0,"他日再向胡大哥领教刀法。"
ModifyEvent(-2, -2, -2, -2, 4, -2, -2, -2, -2, -2, -2, -2, -2);
do return end;