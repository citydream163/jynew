Talkplus(1806);--64, "来来来，跟老顽童来玩两招。"
if AskBattle() == true then goto label0 end;
Talkplus(1807);--0, "前辈别开玩笑了，晚辈怎是你的对手。"
do return end;
::label0::
Talkplus(1808);--0, "那晚辈就献丑了。"
if TryBattle(67) == false then goto label1 end;
LightScence();
Talkplus(1809);--64, "小兄弟，你这是什么功夫，教教我好不好。"
Talkplus(1810);--0, "哪里，前辈承让了。晚辈功夫还差得远。"
Talkplus(1811);--64, "这样好了，我跟你磕八个响头，拜你为师，你总肯教我了吧。"
Talkplus(1812);--0, "前辈别开玩笑了，晚辈担当不起。"
do return end;
::label1::
LightScence();
Talkplus(1813);--64, "唉，你功夫还差的远了，再去练练。"
do return end;