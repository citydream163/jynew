Talkplus(931);--22, "小兄弟，我看你武功不错，你我二人一起称霸这江湖，如何？"
Talkplus(932);--0, "你武功那么差，我看你还是安份一点。"
if HaveItem(185) then goto label2 end;
Talkplus(933);--22, "上回是老朽太轻敌了，你还想试试看吗？"
if AskBattle() == true then goto label0 end;
do return end;
::label0::
if TryBattle(38) == true then goto label1 end;
Dead();
do return end;
::label1::
LightScence();
do return end;
::label2::
Talkplus(934);--22, "小子挺猖狂。上回是老朽太轻敌了，这次让你看看老朽的实力。"
HMPUP(22,3);
if TryBattle(38) == true then goto label1 end;
AddItem(185,-1);
Talkplus(935);--22, "此物你带在身边有什么用？还是让我来研究一下吧。");
SetOneMagic(22, 0, 60, 900);
SetSexual(22, 2);
AddWuchang(22, 20);
do return end;