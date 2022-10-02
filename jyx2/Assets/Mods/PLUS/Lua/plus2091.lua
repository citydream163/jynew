if UseItem(174) == true then goto label0
elseif UseItem(95) == true then goto label11
elseif UseItem(202) == true then goto label12 end;
do return end;
::label0::
math.randomseed(tostring(os.time()):reverse():sub(1, 7));
if HaveItem(143) == true then goto label2 end;
    if JudgeMoney(5) == true then goto label1 end;
        Talk(401, "小哥你这么点钱，就想打发我半仙啊。", "", 0);
        do return end;
::label1::
AddItemWithoutHint(174, -math.random(1,5));
Talk(0,"快把这几个钱拿去，随便相一相，主要<color=blue>神游券</color>要保真啊。","", 1);
if JudgeIQ(0,100,100) == true then goto label3 end;
if JudgeIQ(0,0,29) == true then goto label4 end;
if JudgeIQ(0,30,49) == true then goto label5 end;
if JudgeIQ(0,50,69) == true then goto label6 end;
if JudgeIQ(0,70,89) == true then goto label7 end;
if JudgeIQ(0,90,99) == true then goto label8 end;
Talk(401, "你开修改器了吧，这种资质的人我没见过。", "", 0);
Talk(0,"可别瞎说，我怎么会作弊呢。","", 1);
do return end;
::label3::
Talk(401,"哎呀呀，小哥真是聪明绝顶呀！世上罕见，罕见呀。","", 0);
Talk(0,"真的假的啊，不会是看我钱给的多乱说的吧。","", 1);
goto label9
do return end;
::label4::
Talk(401,"恕在下冒昧直言，虽然表面看起来小哥比较愚蠢，但是通过努力可以创造一个奇迹也说不定呢。","", 0);
Talk(0,"胡说八道！我哪里蠢了？你才是蠢货，我要和别人说你算的不准，看你还怎么在这里混。","", 1);
goto label9
do return end;
::label5::
Talk(401,"虽说小哥有些愚钝，但总比愚蠢的人好些。说不定哪天有奇遇。","", 0);
Talk(0,"也不知道算的准不准啊。","", 1);
goto label9
do return end;
::label6::
Talk(401,"小哥和我们大家一样都是普通人，这世上最多的就是普通百姓。","", 0);
Talk(0,"做普通人挺好的，免去了很多烦恼。","", 1);
goto label9
do return end;
::label7::
Talk(401,"半仙我一打眼就知道小哥是个聪明人，习武学文样样在行啊。","", 0);
Talk(0,"借你吉言，我学习确实比普通人好些。","", 1);
goto label9
do return end;
::label8::
Talk(401,"小哥哥真是人中龙凤，气宇非凡，肯定可以成就一番大事业。","", 0);
Talk(0,"多谢半仙吉言，我这就去闯荡江湖了。","", 1);
goto label9
do return end;
::label2::
AddItem(174, -2000);
Talk(401, "半仙我多谢武林盟主赏赐！", "", 0);
DarkScence();
jyx2_ReplaceSceneObject("", "NPC/算命先生", "");
jyx2_ReplaceSceneObject("", "Triggers/20", "");
LightScence();
Talk(0, "眼前一黑，人跑的挺快啊。地上是什么？", "", 1);
AddItem(202, math.random(7,12));
IcanFly = 2;
Talk(0,"他跑得太快了，<color=blue>神游券</color>掉了一地。","", 1);
do return end;
::label9::
if HaveItem(202) == true then goto label10 end;
Talk(401,"正所谓生死有命富贵在天，只要……","", 0);
Talk(0,"身随心走，闯荡天下。","", 1);
AddItem(202, 1);
IcanFly = 1;
ModifyEvent(1000, 1, -2, -2, -2, 2092, -2, -2, -2, -2, -2, -2, -2);--河洛客栈树林触发器
ModifyEvent(1000, 3, -2, -2, -2, 2105, -2, -2, -2, -2, -2, -2, -2);--有间客栈树林触发器
ModifyEvent(1000, 40, -2, -2, -2, 2108, -2, -2, -2, -2, -2, -2, -2);--悦来客栈树林触发器
ModifyEvent(1000, 60, -2, -2, -2, 2111, -2, -2, -2, -2, -2, -2, -2);--龙门客栈树林触发器
ModifyEvent(1000, 61, -2, -2, -2, 2114, -2, -2, -2, -2, -2, -2, -2);--高升客栈树林触发器
do return end;
::label10::
Talk(401,"正所谓生死有命富贵在天……","", 0);
AddItem(202, 1);
IcanFly = 1;
Talk(0,"神游神游，我要神游。","", 1);
do return end;
::label11::
Talk(401, "他强由他强，清风拂山岗；他横由他横，明月照大江。他自狠来他自恶，我自一口真气足。", "", 0);
Talk(0,"先生真有点学问。","", 1);
do return end;
::label12::
AddItemWithoutHint(202, -1);
Talk(401, "你在这游戏里已度过<color=red>"..yend.."</color>天，胡混了<color=yellow>"..zCountend.."</color>天，战斗了<color=blue>"..pCountend.."</color>场，休息了<color=green>"..rCountend.."</color>天。", "", 1);
Talk(0,"是吗？你是怎么知道的？","", 1);
do return end;