Talkplus(673);--7,"不知少侠光临我三圣坳有何贵事？"
if AskBattle() == true then goto label0 end;
Talkplus(674);--0,"我是来叮咛你的，以后要跟明教和平相处哦！不要再互相残杀了。"
Talkplus(675);--7,"哼！"
do return end;
::label0::
Talkplus(676);--0,"我想找你练练功，赚些经验点数。"
Talkplus(677);--7,"哼！那就来吧。"
if TryBattle(19) == true then goto label1 end;
Dead();
do return end;
::label1::
LightScence();
Talkplus(678);--0,"嗯，这经验点数还真好赚。"
AddEthics(-1);
do return end;