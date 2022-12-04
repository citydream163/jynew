if InTeam(47) == false then goto label0 end;
Talkplus(2687);--46, "阿紫，你居然还敢回来。“神木王鼎”呢？"
jyx2_ReplaceSceneObject("","NPC/阿紫2","1");
::label0::
Talkplus(2688);--0, "＜怎么长的好像小孩子，莫非真练到返老还童了？＞丁春秋，你认得这七宝指环吗？"
Talkplus(2689);--46, "你是谁，怎么会有这东西。"
Talkplus(2690);--0, "见到掌门还不跪下。"
Talkplus(2691);--46, "这逍遥派掌门的信物是哪偷来的？"
Talkplus(2692);--0, "是你师父给的，他还要我们来替他清理门户，除去你这武林败类。"
Talkplus(2693);--46, "那老贼被我打落山崖，居然还没死，竟然还将这七宝指环给了你。也好，你亲自来送死，也免得我去找这七宝指环了。"
Talkplus(2694);--92, "师父功力，震烁古今，你竟敢和我们作对，这叫萤火虫与日月争光！"
Talkplus(2695);--92, "螳臂挡车，自不量力，可笑啊！可笑！"
Talkplus(2696);--92, "我师父谈笑之间，便可将你们这一干妖魔小丑置之死地……"
Talkplus(2697);--0, "你们烦不烦，要打就快打，别在那大吹法螺。"
if TryBattle(86) == true then goto label1 end;
Dead();
do return end;
::label1::
ModifyEvent(-2, 0, 1, 1, 590, -1, -1, 6600, 6600, 6600, -2, 39, 28);
ModifyEvent(-2, 1, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_FixMapObject("丁春秋战死",1);
jyx2_SwitchRoleAnimation("NPC/dingchunqiu", "Assets/BuildSource/AnimationControllers/Dead-FaceUp.controller");
jyx2_ReplaceSceneObject("","NPC/阿紫2","");
Add3EventNum(46,995,Calendar(2),0,0);--丁春秋击杀计数器
ModifyEvent(-2, 4, -2, -2, 547, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 5, -2, -2, 548, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 6, -2, -2, 549, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 7, -2, -2, 550, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 8, -2, -2, 547, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 9, -2, -2, 548, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 10, -2, -2, 549, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 12, -2, -2, 550, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 13, -2, -2, 547, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, 14, -2, -2, 548, -1, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(53, 0, -2, -2, 538, -1, -1, -2, -2, -2, -2, -2, -2);
LightScence();
Talkplus(2698);--0, "好不容易解决了这老怪。"
Talkplus(2699);--92, "少侠英雄无敌，小人忠诚归附，死心塌地，愿为主人效犬马之劳。"
Talkplus(2700);--92, "这天下盟主一席，非少侠莫属。只须主人下令动手，小人赴汤蹈火，万死不辞。"
Talkplus(2701);--92, "丁春秋这灯烛之火，居然也敢和日月争光。"
Talkplus(2702);--92, "少侠德配天地，威震当世，古今无比。"
Talkplus(2703);--0, "这些家伙转的真快，不愧是星宿派的弟子。不过听了虽有点肉麻，但也蛮舒服的。"
AddEthics(10);
AddRepute(6);
do return end;