Talkplus(802);--0,"天门老道，近来可好？"
Talkplus(803);--23,"哼！你来做什么。是不是岳不群派你来的，显显他五岳派掌门的威风。"
if AskBattle() == true then goto label0 end;
do return end;
::label0::
Talkplus(804);--0,"听你的口气似乎很不服气，咱们就再来玩玩。"
if TryBattle(40) == true then goto label1 end;
Dead();
do return end;
::label1::
LightScence();
AddEthics(-1);
do return end;