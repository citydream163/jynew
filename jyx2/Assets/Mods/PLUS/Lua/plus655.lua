if JudgeAttack(0, 90, 1000) == true then goto label0 end;
Talkplus(3153);--0, "我看这块巨石门大有问题，后面肯定藏有宝物。"
do return end;
::label0::
if HaveItem(106) == true or HaveItem(109) == true or HaveItem(117) == true then goto label1 end;
Talkplus(3154);--0, "我看这块巨石门如此坚硬，需要强力武器才能劈开。"
do return end;
::label1::
Talkplus(3157);--0, "看我的！"
instruct_57();
ModifyEvent(-2, 2, 1, 1, -1, -1, -1, 7746, 7746, 7746, -2, -2, -2);--by fanyu|石门打开。场景14-编号02
ModifyEvent(-2, 3, 0, 0, -1, -1, -1, 7804, 7804, 7804, -2, -2, -2);--by fanyu|石门打开。场景14-编号03
ModifyEvent(-2, 4, 1, 1, -1, -1, -1, 7862, 7862, 7862, -2, -2, -2);--by fanyu|石门打开。场景14-编号04
jyx2_ReplaceSceneObject("", "Bake/Static/Door_3", ""); 
do return end;