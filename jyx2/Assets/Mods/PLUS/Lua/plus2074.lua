if (difficulty == 2) then
	ModifyEvent(-2, 31, -2, -2, -2, -2, 2103, -2, -2, -2, -2, -2, -2);
end;
if HaveItem(143) == true then goto label0 end;
if (jyx2_CheckEventCount(1,999,0) == 0) then goto label1
elseif (jyx2_CheckEventCount(1,999,0) == 1) then goto label2
elseif (jyx2_CheckEventCount(1,999,0) == 2) then goto label3
else
	Talk(401, "这位小哥，不要累坏了。");
	Talk(0, "不用你操心，<color=blue>神游券</color>，快。");
	Talk(401, "看完面相就给你。");
end;
do return end;
::label1::
Talk(401, "这位小哥，要不要看看面相呀？");
Talk(0, "我听说算命的都是骗子。");
Talk(401, "我刘半仙说话算话，如果我算的不准不要钱。");
--Innid = {1,3,40,60,61};--客栈编号
	if (difficulty == 0) then
		for i, v in pairs(Innid) do
			ModifyEvent(v, 30, -2, -2, 2074, 2075, -1, -2, -2, -2, -2, -2, -2);
		end;
	elseif (difficulty == 1 or difficulty == nil) then
		for i, v in pairs(Innid) do
			if (v == GetCurrentGameMapid()) then
				ModifyEvent(-2, -2, -2, -2, 2074, 2075, -1, -2, -2, -2, -2, -2, -2);
			else
				jyx2_ReplaceSceneObject(v,"NPC/算命先生","");
				ModifyEvent(v, 30, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
			end;
		end;		
	elseif (difficulty == 2) then
		ModifyEvent(-2, -2, -2, -2, 2074, 2075, -1, -2, -2, -2, -2, -2, -2);
	end;
do return end;
::label2::
Talk(401, "这位小哥，又要看面相呀？");
Talk(0, "这次还送<color=blue>神游券</color>吧？");
Talk(401, "那是自然了，老顾客了，看完面相还能拿到<color=blue>神游券</color>，多划算啊。");
do return end;
::label3::
Talk(401, "这位小哥，风尘满面呀。");
Talk(0, "再来几张<color=blue>神游券</color>。");
Talk(401, "老规矩，看完面相才能拿到<color=blue>神游券</color>。");
::label0::
Talk(401, "我刘半仙说的没错吧，通过一番努力，这位少侠已是武林盟主之尊了。");
do return end;