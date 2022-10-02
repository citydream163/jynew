if UseItem(132) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(132, -1);
    Talk(41, "公子请往里面走，岛主已恭候多时了。", "", 0);
    DarkScence();
    ModifyEvent(-2, -2, -2, -2, 351, -1, -1, 5146, 5146, 5146, -2, 30, 50);
	jyx2_FixMapObject("侠客岛弟子让路",1);
    LightScence();
	zCountxk = jyx2_CheckEventCount(70,999,0);--天数计数器取值
	pCountxk = jyx2_CheckEventCount(70,998,0);--战斗计数器取值
	rCountxk = jyx2_CheckEventCount(70,997,0);--休息计数器取值
	t = 0;
	if (zCountxk + pCountxk + rCountxk) < 7 then
	t = 7 - (zCountxk + pCountxk + rCountxk);
	elseif (zCountxk + pCountxk + rCountxk) > 7 then
	t = 37 - (zCountxk + pCountxk + rCountxk) % 30;
	end;
	Add3EventNum(70,999,t,0,0);
	z2Countxk = jyx2_CheckEventCount(70,999,0);
	yCountxk = jyx2_CheckEventCount(70,999,1);
	yCountxk = yCountxk + (z2Countxk + pCountxk + rCountxk) // 30;
	m = 0;
	if yCountxk < 11 then
	m = 11 - yCountxk;
	elseif yCountxk > 11 then
	m = 11 - yCountxk % 12;
	end;
	Add3EventNum(70,999,0,m,0);
do return end;
