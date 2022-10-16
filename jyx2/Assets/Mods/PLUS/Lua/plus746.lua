if UseItem(186) == true then goto label0 end;
    do return end;
::label0::
    AddItemWithoutHint(186, -1);
    Talk(73, "要拿到《<color=#A564DB>笑傲江湖</color>》一书，你必需先拿到梅庄四友所喜欢的东西，拿给这四人。然后在梅庄地牢中得到“<color=blue>黑木令牌</color>”以便进入<color=Red>黑木崖</color>，因为书是在<color=Red>黑木崖</color>上的。不过梅庄四友所喜欢的东西中，有一样是在<color=Red>嵩山派</color>内，所以你必需参加嵩山大会。", "", 0);
    Add3EventNum(-2, 0, 0, 1, -1)
do return end;
