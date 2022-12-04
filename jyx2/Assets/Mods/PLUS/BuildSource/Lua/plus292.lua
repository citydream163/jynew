if jyx2_CheckEventCount(36,440,0) == 0 then
Add3EventNum(36,444,1,0,0);--青城四秀计数器
Add3EventNum(36,440,jyx2_CheckEventCount(36,444,0),0,0);--青城一秀点击顺序计数器
end;
Talkplus(1338);--86, "这里是四川青城派，闲杂人等不得进入。"
Talkplus(1339);--0, "在下久仰四川青城松风观，余观主及手下四大弟子之名声已久，今特地前来拜访。"
Talkplus(1340);
--Talk(86, "是吗？算你还有点见识。我就是“青城四秀”中的"..qcsxName(jyx2_CheckEventCount(36,440,0),0).."。");
Talkplus(1341);
--Talk(0, "“英雄豪杰，青城四秀”，今日得见"..qcsxName(jyx2_CheckEventCount(36,440,0),1).."，实是小弟三生之幸。");
Talkplus(1342);--86, "本派近日有大事要办，家师也不见客，你参观参观就走吧。"
Talkplus(1343);--0, "是，是，是。"
SetFlag("ShowLocationName.青城派",1);--大地图显示当前地图名
do return end;