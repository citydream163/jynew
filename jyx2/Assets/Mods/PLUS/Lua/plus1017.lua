xCountend = jyx2_CheckEventCount(70,999,2);--季计数器取值
yCountend = jyx2_CheckEventCount(70,999,1);--月计数器取值
zCountend = jyx2_CheckEventCount(70,999,0);--日计数器取值
pCountend = jyx2_CheckEventCount(70,998,0);--战计数器取值
rCountend = jyx2_CheckEventCount(70,997,0);--休计数器取值
yend = xCountend * 90 + yCountend * 30 + zCountend + pCountend + rCountend;--合计游戏日
Talk(0, "我在这游戏里共度过<color=red>"..yend.."</color>天，胡混了<color=yellow>"..zCountend.."</color>天，战斗了<color=blue>"..pCountend.."</color>场，休息了<color=green>"..rCountend.."</color>天。", "", 1);
Talk(0, "看来这奇怪的机器就是能带我回家的设备。不知道会不会痛。好了，我要进去了，在此之前，我要说一句话……“再见了，各位金庸笔下的人物，有机会我会再回来这奇妙的武林世界！再见！”", "", 1);
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
EndAmination(0, 8054, 8128, 1, 8130, 8204, -1);
jyx2_PlayTimelineSimple("[Timeline]ka1017_圣堂_小虾米吸入", true);
jyx2_Wait(9);
jyx2_ShowEndScene();
do return end;
