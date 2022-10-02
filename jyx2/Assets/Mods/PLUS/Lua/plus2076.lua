if HaveItem(201) == true then goto label0 end;
ModifyEvent(-2, -2, 0, -1, 997, -1, -1, -1, -1, -1, -1, -2, -2);
	math.randomseed(tostring(os.time()):reverse():sub(1, 7));
	if math.random(1,100) >= 75 then goto label1 end;
		Talk(0, "程姑娘，我来探望你了。", "", 1);
		do return end;
	::label1::
	Talk(63, "小女子偶感风寒，不能陪公子去<color=Red>黑龙潭</color>了，这里有我根据五行八卦推演的<color=blue>黑龙潭地图</color>，公子进入<color=Red>黑龙潭</color>后在石堆前方可打开观看，想必可以相帮公子顺利通过泥潭也未可知。", "", 0);
	AddItem(201, 1);
	ModifyEvent(21, 130, 0, -1, -1, 2077, -1, -1, -1, -1, -1, -2, -2);
	
	do return end;
do return end;
::label0::
Talk(63, "小女子偶感风寒，不能陪公子去<color=Red>黑龙潭</color>了，公子可携那<color=blue>黑龙潭地图</color>，在石堆前打开观看，想必可以相帮公子顺利通过泥潭也未可知。", "", 0);
Talk(0, "程姑娘静心休养，我会再来探望你的。", "", 1);
do return end;