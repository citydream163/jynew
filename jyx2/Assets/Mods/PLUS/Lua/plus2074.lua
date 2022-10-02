if HaveItem(143) == true then goto label0 end;
Talk(401, "这位小哥，要不要看看面相呀？", "", 0);
Talk(0, "我听说算命的都是骗子。", "", 1);
Talk(401, "我刘半仙说话算话，如果我算的不准不要钱。", "", 0);
ModifyEvent(-2, -2, -2, -2, 2074, 2075, -1, -2, -2, -2, -2, -2, -2);
do return end;
::label0::
Talk(401, "我刘半仙说的没错吧，通过一番努力，这位少侠已是武林盟主之尊了。", "", 0);
do return end;