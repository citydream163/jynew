Talkplus(782);--21,"阁下又来我恒山派做什么？我定闲可是不承认这五岳派的。"
if AskBattle() == true then goto label0 end;
do return end;
::label0::
Talkplus(783);--0,"好啊，你居然不承认我五岳派，看来得再教训教训你。"
if TryBattle(39) == true then goto label1 end;
Dead();
do return end;
::label1::
LightScence();
AddEthics(-1);
do return end;