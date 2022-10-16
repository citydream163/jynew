if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "你若装备了特殊武器，则在使用特定功夫时会产生额外的攻击力。<color=#F8413E>血刀</color>搭配<color=orange>血刀大法</color>，<color=#F8413E>冷月宝刀</color>搭配<color=orange>胡家刀法</color>，<color=#F8413E>霹雳狂刀</color>搭配<color=orange>霹雳刀法</color>，<color=#F8413E>玄铁剑</color>搭配<color=orange>玄铁剑法</color>，<color=#F8413E>君子剑</color>或<color=#F8413E>淑女剑</color>搭配<color=orange>玉女素心剑法</color>，<color=#F8413E>金蛇剑</color>搭配<color=orange>金蛇剑法</color>。", "", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
