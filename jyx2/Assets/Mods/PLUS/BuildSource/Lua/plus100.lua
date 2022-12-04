Talkplus(506);--15,"你又想做什么？"
if AskBattle() == true then goto label0 end;
do return end;
::label0::
Talkplus(507);--0,"晚辈斗胆向前辈讨教讨教。"
Talkplus(508);--15,"好，咱们来玩玩。"
if TryBattle(132) == false then goto label1 end;
LightScence();
Talkplus(509);--15,"小子，过些时候，我金花婆婆再向你讨教。"
Talkplus(510);--0,"我会等您的。"
do return end;
::label1::
LightScence();
Talkplus(511);--15,"看你资质挺好的，老婆婆我不想杀你，你走吧。"
do return end;