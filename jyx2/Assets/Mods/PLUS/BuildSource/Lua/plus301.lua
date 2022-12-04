if InTeam(29) == false then goto label0 end;
Talkplus(1389);--28, "田伯光！你这恶贼，我跟你拼了！"
if TryBattle(52) == true then goto label1 end;
Dead();
do return end;
::label1::
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);--by fanyu 战斗结束，移除平一指 场景30-0
jyx2_ReplaceSceneObject("", "NPC/平一指", "");
Add3EventNum(28,995,Calendar(2),0,0);--平一指击杀计数器
LightScence();
AddEthics(-5);
SetFlag("ShowLocationName.平一指居",1);--大地图显示当前地图名
if jyx2_CheckEventCount(28,333,0) == 0 then Add3EventNum(28,333,1,0,0) end;--初识平一指计数器
do return end;
::label0::
Talkplus(1390);--0, "看先生家中摆设，似乎是位大夫。"
Talkplus(1391);--28, "小子，你到我平一指家中做什么？"
Talkplus(1392);--0, "平一指？难道你就是江湖中传说的“杀人名医”平一指。是怎么说来着，对了，“医一人，杀一人。杀一人，医一人。医人杀人一样多，蚀本生意绝不做。”"
Talkplus(1393);--28, "你是来找我求医的是吗？"
Talkplus(1394);--0, "目前小爷我身体无恙。"
Talkplus(1395);--28, "那就快滚。"
SetFlag("ShowLocationName.平一指居",1);--大地图显示当前地图名
if jyx2_CheckEventCount(28,333,0) == 0 then Add3EventNum(28,333,1,0,0) end;--初识平一指计数器
if AskJoin() == true then goto label2 end;
Talkplus(1396);--0, "滚就滚，凶什么凶，又不是死了女儿。"
ModifyEvent(-2, -2, -2, -2, 300, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本300 场景30-0
do return end;
::label2::
Talkplus(1397);--0, "虽然我目前没什么病痛，但难保以后路程上会出什么差错，你就跟着我一起走吧。"
Talkplus(1398);--28, "你知道我的外号？"
Talkplus(1399);--0, "不是“杀人名医”吗？"
Talkplus(1400);--28, "知道就好。你如果要我加入你，你得先帮我去杀一个人。"
Talkplus(1401);--0, "谁？"
Talkplus(1402);--28, "万里独行田伯光那个淫虫。"
ModifyEvent(-2, -2, -2, -2, 302, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本302 场景30-0
ModifyEvent(59, 0, -2, -2, 307, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本307 场景59-0
do return end;