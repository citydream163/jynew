Talkplus(1867);--64, "来来来，跟老顽童来玩两招。"
if AskBattle() == true then goto label0 end;
Talkplus(1868);--0, "前辈别开玩笑了，晚辈怎是你的对手。"
do return end;
::label0::
Talkplus(1869);--0, "那晚辈就献丑了。"
if TryBattle(135) == false then goto label1 end;
LightScence();
Talkplus(1870);--64, "小兄弟，你这是什么功夫，教教我好不好。"
Talkplus(1871);--0, "哪里，前辈承让了。晚辈功夫还差得远。"
Talkplus(1872);--64, "这样好了，我跟你磕八个响头，拜你为师，你总肯教我了吧。"
Talkplus(1873);--0, "前辈别开玩笑了，晚辈担当不起。"
do return end;
::label1::
LightScence();
Talkplus(1874);--64, "唉，你功夫还差的远了，再去练练。"
do return end;