Talk(0, "前辈是<color=Red>崆峒派</color>掌门吧。晚辈云游江湖，听闻<color=Red>崆峒派</color><color=#A564DB>七伤拳</color>神乎奇技，不知是否有荣幸见识见识。", "", 1);
Talk(8, "小兄弟，还算有点见识，知道我<color=#A564DB>七伤拳</color>的奥妙。要知我<color=#A564DB>七伤拳</color>中拳力刚中有柔，柔中有刚，七般拳劲各不相同，吞吐闪烁，变化百端，敌手委实难防难挡……小兄弟还是别见识的好。", "", 0);
if InTeam(9) == true then goto label0 end;
    if AskBattle() == true then goto label1 end;
        ModifyEvent(-2, -2, -2, -2, 127, -1, -1, -2, -2, -2, -2, -2, -2);
        do return end;
::label1::
        Talk(0, "该不会是掌门您<color=#A564DB>七伤拳</color>练的火候不够，才不敢拿出来见人吧？", "", 1);
        Talk(8, "小子，你自寻死路。", "", 0);
        if TryBattle(16) == true then goto label2 end;
            Dead();
            do return end;
::label2::
            LightScence();
            Talk(0, "我说你火候不够还不相信，再多练个几年吧。", "", 1);
            Talk(8, "哼！小兄弟留下个字号，他日我<color=Yellow>唐文亮</color>再向你请教。", "", 0);
            Talk(0, "字号？好吧，记着，“软世派河洛分舵”金庸堂堂主是也。", "", 1);
            Talk(8, "“软世派河洛分舵”？没听过。", "", 0);
            ModifyEvent(-2, -2, -2, -2, 128, -1, -1, -2, -2, -2, -2, -2, -2);
            AddRepute(3);
            do return end;
::label0::
            Talk(9, "大哥，我听我义父说过，这<color=#A564DB>七伤拳</color>若是内力修为不足之人练之，练之反而有害。我看这崆峒掌门显然已受了内伤，<color=#A564DB>七伤拳</color>想必修练的也不怎么样，不看也罢。", "", 1);
            Talk(8, "不知这位兄弟的义父是谁，竟能对我<color=Red>崆峒派</color>的绝技有高明意见。", "", 0);
            Talk(0, "他义父是金毛狮王谢……", "", 1);
            Talk(8, "魔教的<color=Yellow>谢逊</color>在哪里？你是他的义子，先拿下再说。", "", 0);
            Talk(0, "完了，说溜了嘴。", "", 1);
            Talk(9, "大哥，打就打吧。", "", 1);
            if TryBattle(16) == true then goto label3 end;
                Dead();
                do return end;
::label3::
                LightScence();
                Talk(0, "贤弟，果真不怎么样。", "", 1);
                Talk(8, "哼！你们现在不杀我，到时我六大派联手，非把你魔教剿灭不可。", "", 0);
                ModifyEvent(-2, -2, -2, -2, 128, -1, -1, -2, -2, -2, -2, -2, -2);
                AddRepute(3);
do return end;
