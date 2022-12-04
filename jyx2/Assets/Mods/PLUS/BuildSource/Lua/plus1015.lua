ModifyEvent(-2, 35, 1, 1, -1, -1, -1, 8246, 8246, 8246, -2, -2, -2);
ModifyEvent(-2, 36, 1, 1, -1, -1, -1, 8248, 8248, 8248, -2, -2, -2);
ModifyEvent(-2, 37, 1, 1, -1, -1, -1, 8250, 8250, 8250, -2, -2, -2);
ModifyEvent(-2, 38, 1, 1, -1, -1, -1, 8252, 8252, 8252, -2, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/四大金刚", "1");
ModifyEvent(-2, 4, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 5, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
Talkplus(3723);--0, "门总算开了，终于可以回去了。可是，心里面好像怪怪的，总觉得好像少了件什么事……"
if JudgeEthics(0, 0, 50) == true then goto label0 end;
Talkplus(3724);--60, "小子，别想走。"
Talkplus(3725);--0, "真的发生事情了。"
DarkScence();
ModifyEvent(-2, 25, 1, 1, -1, -1, -1, 8206, 8206, 8206, -2, -2, -2);
ModifyEvent(-2, 26, 1, 1, -1, -1, -1, 8208, 8208, 8208, -2, -2, -2);
ModifyEvent(-2, 27, 1, 1, -1, -1, -1, 8210, 8210, 8210, -2, -2, -2);
ModifyEvent(-2, 28, 1, 1, -1, -1, -1, 8212, 8212, 8212, -2, -2, -2);
ModifyEvent(-2, 29, 1, 1, -1, -1, -1, 8214, 8214, 8214, -2, -2, -2);
ModifyEvent(-2, 30, 1, 1, -1, -1, -1, 8216, 8216, 8216, -2, -2, -2);
ModifyEvent(-2, 31, 1, 1, -1, -1, -1, 8218, 8218, 8218, -2, -2, -2);
ModifyEvent(-2, 32, 1, 1, -1, -1, -1, 8220, 8220, 8220, -2, -2, -2);
ModifyEvent(-2, 33, 1, 1, -1, -1, -1, 8222, 8222, 8222, -2, -2, -2);
ModifyEvent(-2, 34, 1, 1, -1, -1, -1, 8224, 8224, 8224, -2, -2, -2);  
jyx2_ReplaceSceneObject("", "NPC/反派NPC", "1");
SetRoleFace(1);
LightScence();
Talkplus(3726);--0, "我就知道，每次在结局前，总是少不了一场大混战。"
Talkplus(3727);--67, "小子，你武功那么强，一定是从“十四天书”中领悟到什么奥妙。"
Talkplus(3728);--71, "快将它说出来，否则……"
Talkplus(3729);--0, "否则怎样？你们个个都是小侠我的手下败将，还想怎样？"
Talkplus(3730);--22, "一个人打不过你，那十个人呢？"
Talkplus(3731);--0, "不会吧！你们个个都是武林中有名的夙宿，不会联合起来打我一个人吧？传了出去，你们以后怎么做人？"
Talkplus(3732);--19, "事到如此，还管得了这么许多吗？"
Talkplus(3733);--51, "何况，把你杀了后，也没人会传出去了。"
Talkplus(3734);--62, "别说废话了。动手吧！"
if InTeam(329) and InTeam(27) then
	goto  label11
elseif  InTeam(330) and InTeam(27) then
	goto  label12
elseif  InTeam(27) then
	goto  label13
elseif InTeam(329) then
	goto  label6
elseif  InTeam(330) then
	goto  label7
end;	
if TryBattle(133) == true then goto label1 end;
Dead();
do return end;
::label6::		
if TryBattle(355) == true then goto label1 end;
Dead();
do return end;
::label7::		
if TryBattle(356) == true then goto label1 end;
Dead();
do return end;
::label11::		
if TryBattle(361) == true then goto label1 end;
Dead();
do return end;
::label12::		
if TryBattle(362) == true then goto label1 end;
Dead();
do return end;
::label13::		
if TryBattle(363) == true then goto label1 end;
Dead();
do return end;
::label1::
LightScence();
Talkplus(3735);--60, "哼！算你厉害。我们走。"
DarkScence();
ModifyEvent(-2, 25, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 26, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 27, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 28, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 29, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 30, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 31, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 32, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 33, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 34, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/反派NPC", "");
LightScence();
Talkplus(3736);--0, "总算料理完毕了。咦！好像又有声音。"
DarkScence();
RestFight();
jyx2_ReplaceSceneObject("", "NPC/昔日恶友", "1");
jyx2_Wait(1);
SetRoleFace(1);
LightScence();
Talkplus(3737);--58, "兄弟慢走。"
Talkplus(3738);--53, "公子，我们来送送你。"
Talkplus(3739);--25, "负心汉，你终究还是要走吗？"
if  InTeam(329) and InTeam(27) then
	goto  label14
elseif  InTeam(330) and InTeam(27) then
	goto  label15
elseif  InTeam(27) then
	goto  label16
elseif InTeam(329) then
	goto  label9
elseif  InTeam(330) then
	goto  label10
end;
if TryBattle(200) == true then goto label4 end;
Dead();
do return end;
::label9::
if TryBattle(358) == true then goto label4 end;
Dead();
do return end;
::label10::
if TryBattle(359) == true then goto label4 end;
Dead();
do return end;
::label14::
if TryBattle(364) == true then goto label4 end;
Dead();
do return end;
::label15::
if TryBattle(365) == true then goto label4 end;
Dead();
do return end;
::label16::
if TryBattle(366) == true then goto label4 end;
Dead();
do return end;
::label4::
LightScence();
Talkplus(3740);--25, "我在苗寨等你回来。"
DarkScence();
jyx2_ReplaceSceneObject("", "NPC/昔日恶友", "");
LightScence();
Talkplus(3741);--0, "总算料理完毕了。咦！好像又有声音。"
PlayWave(23);
DarkScence();
SetScenceMap(-2, 1, 18, 25, 4062);
SetScenceMap(-2, 1, 18, 26, 4062);
jyx2_MovePlayer("战斗后","Level/Dynamic");
jyx2_FixMapObject("圣堂开门",0);
LightScence();
Talkplus(3742);--0, "怎么门又关起来了。这次大概真的结束了。走吧，我得赶快了。"
do return end;
::label0::
Talkplus(3743);--57, "小子，你想就这样子走了吗？"
Talkplus(3744);--0, "真的发生事情了。"
DarkScence();
ModifyEvent(-2, 25, 1, 1, -1, -1, -1, 8226, 8226, 8226, -2, -2, -2);
ModifyEvent(-2, 26, 1, 1, -1, -1, -1, 8228, 8228, 8228, -2, -2, -2);
ModifyEvent(-2, 27, 1, 1, -1, -1, -1, 8230, 8230, 8230, -2, -2, -2);
ModifyEvent(-2, 28, 1, 1, -1, -1, -1, 8232, 8232, 8232, -2, -2, -2);
ModifyEvent(-2, 29, 1, 1, -1, -1, -1, 8234, 8234, 8234, -2, -2, -2);
ModifyEvent(-2, 30, 1, 1, -1, -1, -1, 8236, 8236, 8236, -2, -2, -2);
ModifyEvent(-2, 31, 1, 1, -1, -1, -1, 8238, 8238, 8238, -2, -2, -2);
ModifyEvent(-2, 32, 1, 1, -1, -1, -1, 8240, 8240, 8240, -2, -2, -2);
ModifyEvent(-2, 33, 1, 1, -1, -1, -1, 8242, 8242, 8242, -2, -2, -2);
ModifyEvent(-2, 34, 1, 1, -1, -1, -1, 8244, 8244, 8244, -2, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/正派NPC", "1");
SetRoleFace(1);
LightScence();
Talkplus(3745);--0, "我就知道，每次在结局前，总是少不了一场大混战。"
Talkplus(3746);--69, "在这武林中，你干下了多少坏事。"
Talkplus(3747);--3, "看看你的道德指数吧，你都干了些什么？"
Talkplus(3748);--55, "练武是为了什么？行侠仗义，济弱扶倾的目的你都忘了吗？"
Talkplus(3749);--64, "你在武林中混了这么久，尽学一些坏东西。"
Talkplus(3750);--56, "是我们错了，没能把你教好。"
Talkplus(3751);--70, "但我们也不能让你就这样一走了之。"
Talkplus(3752);--50, "别怪我们出手太重，你留在这世间也只是个祸害。"
Talkplus(3753);--69, "动手吧。"
Talkplus(3754);--70, "阿弥陀佛！"
if InTeam(27) and InTeam(329)then
	goto  label17
elseif InTeam(27) and InTeam(330) then
	goto  label18
elseif InTeam(329)then
	goto  label19
elseif InTeam(330) then
	goto  label20
elseif InTeam(27) then
	goto  label5
end;
if TryBattle(134) == true then goto label2 end;
Dead();
do return end;
::label5::				
if TryBattle(357) == true then goto label2 end;
Dead();
do return end;
::label17::				
if TryBattle(367) == true then goto label2 end;
Dead();
do return end;	
::label18::				
if TryBattle(368) == true then goto label2 end;
Dead();
do return end;	
::label19::				
if TryBattle(369) == true then goto label2 end;
Dead();
do return end;	
::label20::				
if TryBattle(370) == true then goto label2 end;
Dead();
do return end;	
::label2::
LightScence();
Talkplus(3755);--55, "我们已经尽力了，还是无法消灭你这祸害。"
Talkplus(3756);--70, "阿弥陀佛！这是众生的浩劫呀！"
Talkplus(3757);--69, "杀不了你这个大魔头。唉！或许是天意吧！我们走吧。"
DarkScence();
RestFight();
ModifyEvent(-2, 25, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 26, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 27, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 28, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 29, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 30, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 31, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 32, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 33, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 34, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/正派NPC", "");
LightScence();
Talkplus(3758);--0, "总算料理完毕了。咦！好像又有声音。"
DarkScence();
jyx2_ReplaceSceneObject("", "NPC/昔日好友", "1");
jyx2_Wait(1);
SetRoleFace(1);
LightScence();
Talkplus(3759);--58, "兄弟慢走。"
Talkplus(3760);--53, "公子，我们来送送你。"
Talkplus(3761);--9, "依武林规矩，咱们以武会友。"
if InTeam(27) and InTeam(329) then
	goto  label21
elseif InTeam(27) and InTeam(330) then
	goto  label22
elseif InTeam(329) then
	goto  label23
elseif InTeam(330) then
	goto  label24
elseif InTeam(27) then
	goto  label8
end;
if TryBattle(201) == true then goto label3 end;
Dead();
do return end;
::label8::
if TryBattle(360) == true then goto label3 end;
Dead();
do return end;
::label21::
if TryBattle(371) == true then goto label3 end;
Dead();
do return end;
::label22::
if TryBattle(372) == true then goto label3 end;
Dead();
do return end;
::label23::
if TryBattle(373) == true then goto label3 end;
Dead();
do return end;
::label24::
if TryBattle(374) == true then goto label3 end;
Dead();
do return end;
::label3::
LightScence();
Talkplus(3762);--9, "兄弟一路顺风。"
DarkScence();
jyx2_ReplaceSceneObject("", "NPC/昔日好友", "");
LightScence();
Talkplus(3763);--0, "总算料理完毕了。咦！好像又有声音。"
PlayWave(23);
DarkScence();
SetScenceMap(-2, 1, 18, 25, 4062);
SetScenceMap(-2, 1, 18, 26, 4062);
jyx2_MovePlayer("战斗后","Level/Dynamic");
jyx2_FixMapObject("圣堂开门",0);
LightScence();
Talkplus(3764);--0, "怎么门又关起来了。这次大概真的结束了。走吧，我得赶快了。"
do return end;