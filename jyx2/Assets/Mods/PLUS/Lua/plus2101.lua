SetFlag("ShowLocationName.桃花岛",1);--大地图显示当前地图名
if InTeam(63) == true then goto label0 end;
Talkplus(4157);--0, "这扇大门是关着的。"
do return end;
::label0::
Talkplus(4158);--0, "这么一大片桃林啊。"
Talkplus(4159);--63, "家乡的桃树已结实，这里桃花甫开，我要折一枝把玩。问花花不语，为谁落，为谁开？算春色三分，半随流水，半入尘埃。"
Talkplus(4160);--0, "姑娘真是好文采。"
Talkplus(4161);--63, "好久没来桃花岛了，不知师姊过的可好。"
Talkplus(4162);--0, "这扇大门是关着的。"
Talkplus(4163);--63, "师父擅九宫八卦之术，只需依后天八卦配九宫奇门之术，即可开此门。"
Talkplus(4164);--0, "还请姑娘赐教。"
Talkplus(4165);--63, "这八卦按乾☰六、兑☱七、离☲九、震☳三、巽☴四、坎☵一、艮☶八、坤☷二之数；配以洛书九宫合一十五之数当可开此门。"
Talkplus(4166);--0, "六加九为一十五，只要从乾☰门进离☲门出就可以了吧？"
Talkplus(4167);--63, "不是的，中宫数五，不用计算，只要先在其他八门中任选两门合十之数，再走到中宫即可打开此门。"
Talkplus(4168);--0, "这样啊，我来走走看。"
jyx2_ReplaceSceneObject("4", "Dynamic/Tree/Peach1", "1");--昆仑仙境桃子1
--jyx2_ReplaceSceneObject("4", "Bake/Static/Plant/Tree_09/Peach (1)", "1");--昆仑仙境桃子yuan
jyx2_ReplaceSceneObject("4", "Dynamic/Tree/Peach2", "1");--昆仑仙境桃子2
jyx2_ReplaceSceneObject("4", "Dynamic/Tree/Peach3", "1");--昆仑仙境桃子3
jyx2_ReplaceSceneObject("4", "Dynamic/Tree/Peach4", "1");--昆仑仙境桃子4
--jyx2_ReplaceSceneObject("4", "Bake/Static/Plant/Tree_09/Peach (5)", "1");--昆仑仙境桃子yuan
jyx2_ReplaceSceneObject("4", "Dynamic/Tree/Peach5", "1");--昆仑仙境桃子5
jyx2_ReplaceSceneObject("4", "Dynamic/Tree/Peach6", "1");--昆仑仙境桃子6
jyx2_ReplaceSceneObject("4", "Dynamic/Tree/Peach7", "1");--昆仑仙境桃子7
jyx2_ReplaceSceneObject("4", "Triggers/41", "1");
jyx2_ReplaceSceneObject("4", "Triggers/42", "1");
jyx2_ReplaceSceneObject("4", "Triggers/43", "1");
jyx2_ReplaceSceneObject("4", "Triggers/44", "1");
jyx2_ReplaceSceneObject("4", "Triggers/45", "1");
jyx2_ReplaceSceneObject("4", "Triggers/46", "1");
jyx2_ReplaceSceneObject("4", "Triggers/47", "1");
--jyx2_ReplaceSceneObject("", "Dynamic/Gate", "");
ModifyEvent(-2, -2, 0, -1, 2143, -1, -1, -1, -1, -1, -1, -2, -2);
do return end;