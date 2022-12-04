if InTeam(29) == false then goto label0 end;
Talkplus(1380);--28, "田伯光！你这恶贼，我跟你拼了！"
if TryBattle(52) == true then goto label1 end;
Dead();
do return end;
::label1::
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 战斗结束，移除平一指 场景30-0
jyx2_ReplaceSceneObject("", "NPC/平一指", "");
Add3EventNum(28,995,Calendar(2),0,0);--平一指击杀计数器
LightScence();
AddEthics(-5);
do return end;
::label0::
Talkplus(1381);--28, "你还在这做什么？"
if AskJoin() == true then goto label2 end;
Talkplus(1382);--0, "没事逛逛。"
do return end;
::label2::
Talkplus(1383);--0, "虽然我目前没什么病痛，但难保以后路程上会出什么差错，你就跟着我一起走吧。"
Talkplus(1384);--28, "你知道我的外号？"
Talkplus(1385);--0, "不是“杀人名医”吗？"
Talkplus(1386);--28, "知道就好。你如果要我加入你，你得先帮我去杀一个人。"
Talkplus(1387);--0, "谁？"
Talkplus(1388);--28, "万里独行田伯光那个淫虫。"
ModifyEvent(-2, -2, -2, -2, 302, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本302 场景30-0
ModifyEvent(59, 0, -2, -2, 307, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本307 场景59-0
do return end;