if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "江湖上这些草莽之人，你别以为他们除了拥有一身过人武功外，就什么都不会了。其实在他们之中，也是有饱读诗书，才识渊博之人。另外还有些人则是喜欢附庸风雅，收集一些文物。这些人好比是<color=Red>绝情谷</color>的公孙谷主，<color=Red>白驼山</color>", "", 0);
	Talk(73, "的<color=Yellow>欧阳克</color>，<color=Red>福威镖局</color>少庄主，<color=Red>嵩山派</color>的左掌门，<color=Red>梅庄</color>四位庄主，以及<color=Red>燕子坞</color>的慕容世家等。", "", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
