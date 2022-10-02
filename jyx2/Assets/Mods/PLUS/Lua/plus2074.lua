if HaveItem(143) == true then goto label0 end;
if jyx2_CheckEventCount(1,999,0) == 0 then goto label1
elseif jyx2_CheckEventCount(1,999,0) == 1 then goto label2
elseif jyx2_CheckEventCount(1,999,0) == 2 then goto label3
else
	Talk(401, "这位小哥，不要累坏了。", "", 0);
	Talk(0, "不用你操心，<color=blue>神游券</color>，快。", "", 1);
	Talk(401, "看完面相就给你。", "", 0);
end;
do return end;
::label1::
Talk(401, "这位小哥，要不要看看面相呀？", "", 0);
Talk(0, "我听说算命的都是骗子。", "", 1);
Talk(401, "我刘半仙说话算话，如果我算的不准不要钱。", "", 0);
ModifyEvent(-2, -2, -2, -2, 2074, 2075, -1, -2, -2, -2, -2, -2, -2);
do return end;
::label2::
Talk(401, "这位小哥，又要看面相呀？", "", 0);
Talk(0, "这次还送<color=blue>神游券</color>吧？", "", 1);
Talk(401, "那是自然了，老顾客了，看完面相还能拿到<color=blue>神游券</color>，多划算啊。", "", 0);
do return end;
::label3::
Talk(401, "这位小哥，风尘满面呀。", "", 0);
Talk(0, "再来几张<color=blue>神游券</color>。", "", 1);
Talk(401, "老规矩，看完面相才能拿到<color=blue>神游券</color>。", "", 0);
::label0::
Talk(401, "我刘半仙说的没错吧，通过一番努力，这位少侠已是武林盟主之尊了。", "", 0);
do return end;