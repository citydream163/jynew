Talk(65, "阿弥陀佛，少侠功夫不错。", "", 0);
if AskBattle() == true then goto label0 end;
    Talk(0, "大师见笑了，晚辈一直在学习中。", "", 1);
    do return end;
::label0::
ModifyEvent(-2, 13, 1, 1, 2080, -1, -1, -1, -1, -1, -2, -2, -2);--激活瑛姑劝主角去休息
    Talk(0, "那晚辈就献丑了。", "", 1);
    if TryBattle(243) == false then goto label1 end;--和一灯比武800
        LightScence();
        Talk(65, "阿弥陀佛，少侠功夫了得。", "", 0);
        Talk(0, "前辈承让了。晚辈功夫还差得远。", "", 1);
        do return end;
::label1::
        LightScence();
        Talk(65, "阿弥陀佛，少侠没使真功夫，就是陪我活动一下筋骨。", "", 0);
do return end;