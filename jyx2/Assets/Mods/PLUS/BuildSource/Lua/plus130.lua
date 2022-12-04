Talkplus(636);--8,"不知少侠来我崆峒山有何贵事？"
if AskBattle() == true then goto label0 end;
Talkplus(637);--0,"我是来叮咛你的，以后要跟明教和平相处哦！不要再互相残杀了。"
Talkplus(638);--8,"哼！"
do return end;
::label0::
Talkplus(639);--0,"我想找你练练功，赚些经验点数。"
Talkplus(640);--8,"哼！那就来吧。"
if TryBattle(17) == true then goto label1 end;
Dead();
do return end;
::label1::
LightScence();
Talkplus(641);--0,"嗯，这经验点数还真好赚。"
AddEthics(-1);
do return end;