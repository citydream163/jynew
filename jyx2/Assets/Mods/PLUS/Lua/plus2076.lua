if HaveItem(201) == true then goto label0 end;
ModifyEvent(-2, -2, 0, -1, 997, -1, -1, -1, -1, -1, -1, -2, -2);
	if math.random(1,100) >= 75 then goto label1 end;
		Talkplus(4094);--0, "程姑娘，我来探望你了。"
		do return end;
	::label1::
	Talkplus(4095);--63, "小女子偶感风寒，不能陪公子去黑龙潭了，这里有我根据五行八卦推演的黑龙潭地图，公子进入黑龙潭后在石堆前方可打开观看，想必可以相帮公子顺利通过泥潭也未可知。"
	AddItem(201, 1);
	ModifyEvent(21, 130, 0, -1, -1, 2077, -1, -1, -1, -1, -1, -2, -2);
	do return end;
do return end;
::label0::
Talkplus(4096);--63, "小女子偶感风寒，不能陪公子去黑龙潭了，公子可携那黑龙潭地图，在石堆前打开观看，想必可以相帮公子顺利通过泥潭也未可知。"
Talkplus(4097);--0, "程姑娘静心休养，我会再来探望你的。"
do return end;