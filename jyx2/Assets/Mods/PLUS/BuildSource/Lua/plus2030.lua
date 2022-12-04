Talkplus(3961);--0, "竟有如此清幽之地。"
Talkplus(3962);--52, "小兄弟若想在此钻研棋弈，老朽自当奉茶相陪。"
if AskRest() == true then goto  label1 end;
Talkplus(3963);--0, "多谢老先生美意，我们还要赶路，下次专程来和您讨教棋弈。"
do return end;
::label1::
DarkScence();
RestFight();
SetRoleFace(1);
LightScence();
Talkplus(3964);--0, "钻研棋弈需要静心。"
do return end;