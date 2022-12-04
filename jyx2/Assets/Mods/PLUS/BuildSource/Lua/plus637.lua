Talkplus(3130);--0, "袁兄，你看我现在符合“仁义”的资格了吗？"
if JudgeEthics(0, 80, 100) == false then goto label0 end;
Talkplus(3131);--54, "很好，你在江湖中行走这么久，还能保持在正道上，很好。《碧血剑》一书就拿去吧。"
AddItem(156, 1);
ModifyEvent(-2, -2, -2, -2, 638, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;
::label0::
Talkplus(3132);--54, "可惜呀可惜。虽然有了智慧和勇气，但是“仁义”方面还要加强。"
if AskBattle() == true then goto label1 end;
do return end;
::label1::
Talkplus(3133);--0, "袁兄，我没什么时间去增加“仁义”点数了，只好得罪了。"
if (GetRoleLevel(0) > (GetRoleLevel(54) + 1) and difficulty == 2) then
	for i = 1,(GetRoleLevel(0) - GetRoleLevel(54) - 1) do
		Levelup(54);
	end
end
if TryBattle(101) == true then goto label2 end;
LightScence();
Talkplus(3134);--54, "我还是劝你多做些侠义之事才是。"
do return end;
::label2::
ModifyEvent(-2, -2, -2, -2, 639, -1, -1, -2, -2, -2, -2, -2, -2);
LightScence();
Talkplus(3135);--54, "唉！你又往邪道走近一步，武功这么好，为什么不用在正途上呢？", "", 0);
AddItem(156, 1);
AddRepute(2);
do return end;