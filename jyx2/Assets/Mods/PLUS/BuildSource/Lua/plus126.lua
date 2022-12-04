Talkplus(610);--0,"前辈是崆峒派掌门吧。晚辈云游江湖，听闻崆峒派七伤拳神乎奇技，不知是否有荣幸见识见识。"
Talkplus(611);--8,"小兄弟，还算有点见识，知道我七伤拳的奥妙。要知我七伤拳中拳力刚中有柔，柔中有刚，七般拳劲各不相同，吞吐闪烁，变化百端，敌手委实难防难挡……小兄弟还是别见识的好。"
SetFlag("ShowLocationName.崆峒派",1);--大地图显示当前地图名
if InTeam(9) == true then goto label0 end;
if AskBattle() == true then goto label1 end;
ModifyEvent(-2, -2, -2, -2, 127, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;
::label1::
Talkplus(612);--0,"该不会是掌门您七伤拳练的火候不够，才不敢拿出来见人吧？"
Talkplus(613);--8,"小子，你自寻死路。"
if TryBattle(16) == true then goto label2 end;
Dead();
do return end;
::label2::
LightScence();
Talkplus(614);--0,"我说你火候不够还不相信，再多练个几年吧。"
Talkplus(615);--8,"哼！小兄弟留下个字号，他日我唐文亮再向你请教。"
Talkplus(616);--0,"字号？好吧，记着，“软世派河洛分舵”金庸堂堂主是也。"
Talkplus(617);--8,"“软世派河洛分舵”？没听过。"
ModifyEvent(-2, -2, -2, -2, 128, -1, -1, -2, -2, -2, -2, -2, -2);
AddRepute(3);
do return end;
::label0::
Talkplus(618);--9,"大哥，我听我义父说过，这七伤拳若是内力修为不足之人练之，练之反而有害。我看这崆峒掌门显然已受了内伤，七伤拳想必修练的也不怎么样，不看也罢。"
Talkplus(619);--8,"不知这位兄弟的义父是谁，竟能对我崆峒派的绝技有高明意见。"
Talkplus(620);--0,"他义父是金毛狮王谢……"
Talkplus(621);--8,"魔教的谢逊在哪里？你是他的义子，先拿下再说。"
Talkplus(622);--0,"完了，说溜了嘴。"
Talkplus(623);--9,"大哥，打就打吧。"
if TryBattle(16) == true then goto label3 end;
Dead();
do return end;
::label3::
LightScence();
Talkplus(624);--0,"贤弟，果真不怎么样。"
Talkplus(625);--8,"哼！你们现在不杀我，到时我六大派联手，非把你魔教剿灭不可。"
ModifyEvent(-2, -2, -2, -2, 128, -1, -1, -2, -2, -2, -2, -2, -2);
AddRepute(3);
do return end;