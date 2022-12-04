if AskRest() == true then goto  label1 end;
do return end;
::label1::
Talkplus(4676);--0, "为了走更远的路，适当的休息也是必须的。我就好好的睡一觉吧！"
DarkScence();
if HaveItem(143) == true then goto label0 end;
Rest();
SetRoleFace(1);
LightScence();
Talkplus(4677);--0, "一觉起来，精神十足。走吧，继续冒险去了！"
do return end;
::label0::
jyx2_ReplaceSceneObject("25","NPC/华山弟子","1");
jyx2_ReplaceSceneObject("25","NPC/各派弟子","1");
jyx2_ReplaceSceneObject("25","NPC/昔日队友","1");
jyx2_ReplaceSceneObject("25","NPC/battleNPC","1");
jyx2_ReplaceSceneObject("25","NPC/battleNPC/灭绝","");
ModifyEvent(-2, -2, 0, 0, 931, -1, -1, -1, -1, -1, -2, -2, -2);--清空本事件，恢复休息
ModifyEvent(25, 24, 0, 0, -1, -1, 2202, -1, -1, -1, -2, -2, -2);--激活25场景24触发器的2202武道大会事件
--升级开始
--少林弟子升级
HPUP(81);
HPUP(82);
HPUP(83);
HPUP(84);
HPUP(85);
HPUP(86);
HPUP(87);
HPUP(88);
HPUP(89);
HPUP(90);
--昆仑弟子升级
HPUP(91);
HPUP(92);
HPUP(93);
HPUP(94);
HPUP(95);
HPUP(96);
HPUP(97);
HPUP(98);
HPUP(99);
HPUP(100);
SetOneMagic(91, 0, 39, 500);
SetOneMagic(92, 0, 39, 500);
SetOneMagic(93, 0, 39, 600);
SetOneMagic(94, 0, 39, 600);
SetOneMagic(95, 0, 39, 700);
SetOneMagic(96, 0, 39, 700);
SetOneMagic(97, 0, 39, 800);
SetOneMagic(98, 0, 39, 800);
SetOneMagic(99, 0, 39, 900);
SetOneMagic(100, 0, 39, 900);
--神龙教徒升级
HPUP(101);
HPUP(102);
HPUP(103);
HPUP(104);
HPUP(105);
HPUP(106);
HPUP(107);
HPUP(108);
HPUP(109);
HPUP(110);
SetOneMagic(101, 0, 69, 200);
SetOneMagic(102, 0, 69, 200);
SetOneMagic(103, 0, 69, 300);
SetOneMagic(104, 0, 69, 300);
SetOneMagic(105, 0, 69, 300);
SetOneMagic(106, 0, 69, 500);
SetOneMagic(107, 0, 69, 600);
SetOneMagic(108, 0, 69, 700);
SetOneMagic(109, 0, 69, 800);
SetOneMagic(110, 0, 69, 900);
--武当弟子升级
HPUP(131);
HPUP(132);
HPUP(133);
HPUP(134);
HPUP(135);
HPUP(136);
HPUP(137);
HPUP(138);
HPUP(139);
HPUP(140);
SetOneMagic(131, 0, 41, 500);
SetOneMagic(132, 0, 41, 500);
SetOneMagic(133, 0, 41, 900);
SetOneMagic(134, 0, 41, 850);
SetOneMagic(135, 0, 41, 900);
SetOneMagic(136, 0, 41, 770);
SetOneMagic(137, 0, 41, 800);
SetOneMagic(138, 0, 41, 800);
SetOneMagic(139, 0, 41, 900);
SetOneMagic(140, 0, 41, 900);
--峨嵋弟子升级
HPUP(141);
HPUP(142);
HPUP(143);
HPUP(144);
HPUP(145);
HPUP(146);
HPUP(147);
HPUP(148);
HPUP(149);
HPUP(150);
SetOneMagic(141, 0, 40, 500);
SetOneMagic(142, 0, 40, 500);
SetOneMagic(143, 0, 40, 600);
SetOneMagic(144, 0, 40, 600);
SetOneMagic(145, 0, 40, 700);
SetOneMagic(146, 0, 40, 700);
SetOneMagic(147, 0, 40, 850);
SetOneMagic(148, 0, 40, 800);
SetOneMagic(149, 0, 40, 800);
SetOneMagic(150, 0, 40, 900);
--崆峒弟子升级
HPUP(151);
HPUP(152);
HPUP(153);
HPUP(154);
HPUP(155);
HPUP(156);
HPUP(157);
HPUP(158);
HPUP(159);
HPUP(160);
SetOneMagic(151, 0, 90, 600);
SetOneMagic(152, 0, 90, 600);
SetOneMagic(153, 0, 90, 700);
SetOneMagic(154, 0, 90, 700);
SetOneMagic(155, 0, 90, 800);
SetOneMagic(156, 0, 90, 800);
SetOneMagic(157, 0, 90, 800);
SetOneMagic(158, 0, 90, 900);
SetOneMagic(159, 0, 90, 900);
SetOneMagic(160, 0, 90, 600);
--华山弟子升级
HPUP(161);
HPUP(162);
HPUP(163);
HPUP(164);
HPUP(165);
HPUP(166);
HPUP(167);
HPUP(168);
HPUP(169);
HPUP(170);
SetOneMagic(161, 0, 37, 700);
SetOneMagic(162, 0, 37, 700);
SetOneMagic(163, 0, 37, 700);
SetOneMagic(164, 0, 37, 800);
SetOneMagic(165, 0, 37, 800);
SetOneMagic(166, 0, 37, 800);
SetOneMagic(167, 0, 37, 800);
SetOneMagic(168, 0, 37, 900);
SetOneMagic(169, 0, 37, 900);
SetOneMagic(170, 0, 37, 900);
--衡山弟子升级
HPUP(171);
HPUP(172);
HPUP(173);
HPUP(174);
HPUP(175);
HPUP(176);
HPUP(177);
HPUP(178);
HPUP(179);
HPUP(180);
SetOneMagic(171, 0, 36, 500);
SetOneMagic(172, 0, 36, 500);
SetOneMagic(173, 0, 36, 500);
SetOneMagic(174, 0, 36, 600);
SetOneMagic(175, 0, 36, 600);
SetOneMagic(176, 0, 36, 800);
SetOneMagic(177, 0, 36, 900);
SetOneMagic(178, 0, 36, 900);
SetOneMagic(179, 0, 36, 700);
SetOneMagic(180, 0, 36, 700);
--恒山弟子升级
HPUP(181);
HPUP(182);
HPUP(183);
HPUP(184);
HPUP(185);
HPUP(186);
HPUP(187);
HPUP(188);
HPUP(189);
HPUP(190);
SetOneMagic(181, 0, 34, 600);
SetOneMagic(182, 0, 34, 600);
SetOneMagic(183, 0, 34, 600);
SetOneMagic(184, 0, 34, 700);
SetOneMagic(185, 0, 34, 700);
SetOneMagic(186, 0, 34, 700);
SetOneMagic(187, 0, 34, 700);
SetOneMagic(188, 0, 34, 800);
SetOneMagic(189, 0, 34, 800);
SetOneMagic(190, 0, 34, 800);
--嵩山弟子升级
HPUP(191);
HPUP(192);
HPUP(193);
HPUP(194);
HPUP(195);
HPUP(196);
HPUP(197);
HPUP(198);
HPUP(199);
HPUP(200);
SetOneMagic(191, 0, 38, 500);
SetOneMagic(192, 0, 38, 500);
SetOneMagic(193, 0, 38, 600);
SetOneMagic(194, 0, 38, 600);
SetOneMagic(195, 0, 38, 600);
SetOneMagic(196, 0, 38, 700);
SetOneMagic(197, 0, 38, 700);
SetOneMagic(198, 0, 38, 700);
SetOneMagic(199, 0, 38, 800);
SetOneMagic(200, 0, 38, 900);
--泰山弟子升级
HPUP(201);
HPUP(202);
HPUP(203);
HPUP(204);
HPUP(205);
HPUP(206);
HPUP(207);
HPUP(208);
HPUP(209);
HPUP(210);
SetOneMagic(201, 0, 35, 500);
SetOneMagic(202, 0, 35, 500);
SetOneMagic(203, 0, 35, 500);
SetOneMagic(204, 0, 35, 600);
SetOneMagic(205, 0, 35, 600);
SetOneMagic(206, 0, 35, 600);
SetOneMagic(207, 0, 35, 700);
SetOneMagic(208, 0, 35, 700);
SetOneMagic(209, 0, 35, 800);
SetOneMagic(210, 0, 35, 800);
--五毒教徒升级
HPUP(221);
HPUP(222);
HPUP(223);
HPUP(224);
HPUP(225);
HPUP(226);
HPUP(227);
HPUP(228);
HPUP(229);
HPUP(230);
SetOneMagic(221, 0, 77, 600);
SetOneMagic(222, 0, 77, 600);
SetOneMagic(223, 0, 77, 700);
SetOneMagic(224, 0, 77, 700);
SetOneMagic(225, 0, 77, 800);
SetOneMagic(226, 0, 77, 800);
SetOneMagic(227, 0, 77, 800);
SetOneMagic(228, 0, 77, 900);
SetOneMagic(229, 0, 77, 900);
SetOneMagic(230, 0, 77, 900);
--日月教徒升级
HPUP(231);
HPUP(232);
HPUP(233);
HPUP(234);
HPUP(235);
HPUP(236);
HPUP(237);
HPUP(238);
HPUP(239);
HPUP(240);
--雪山弟子升级
HPUP(241);
HPUP(242);
HPUP(243);
HPUP(244);
HPUP(245);
HPUP(246);
HPUP(247);
HPUP(248);
HPUP(249);
HPUP(250);
SetOneMagic(241, 0, 33, 500);
SetOneMagic(242, 0, 33, 500);
SetOneMagic(243, 0, 33, 600);
SetOneMagic(244, 0, 33, 600);
SetOneMagic(245, 0, 33, 700);
SetOneMagic(246, 0, 33, 700);
SetOneMagic(247, 0, 33, 800);
SetOneMagic(248, 0, 33, 800);
SetOneMagic(249, 0, 33, 900);
SetOneMagic(250, 0, 33, 900);
--番僧升级
HPUP(251);
HPUP(252);
HPUP(253);
HPUP(254);
HPUP(255);
HPUP(256);
HPUP(257);
HPUP(258);
HPUP(259);
HPUP(260);
SetOneMagic(251, 0, 70, 400);
SetOneMagic(252, 0, 70, 400);
SetOneMagic(253, 0, 70, 500);
SetOneMagic(254, 0, 70, 500);
SetOneMagic(255, 0, 70, 600);
SetOneMagic(256, 0, 70, 600);
SetOneMagic(257, 0, 70, 700);
SetOneMagic(258, 0, 70, 700);
SetOneMagic(259, 0, 70, 800);
SetOneMagic(260, 0, 70, 900);
--星宿门人升级
HPUP(261);
HPUP(262);
HPUP(263);
HPUP(264);
HPUP(265);
HPUP(266);
HPUP(267);
HPUP(268);
HPUP(269);
HPUP(270);
SetOneMagic(261, 0, 72, 600);
SetOneMagic(262, 0, 72, 600);
SetOneMagic(263, 0, 72, 700);
SetOneMagic(264, 0, 72, 700);
SetOneMagic(265, 0, 72, 700);
SetOneMagic(266, 0, 72, 800);
SetOneMagic(267, 0, 72, 800);
SetOneMagic(268, 0, 72, 800);
SetOneMagic(269, 0, 72, 900);
SetOneMagic(270, 0, 72, 900);
--丐帮弟子升级
HPUP(271);
HPUP(272);
HPUP(273);
HPUP(274);
HPUP(275);
HPUP(276);
HPUP(277);
HPUP(278);
HPUP(279);
HPUP(280);
--铁掌帮众升级
HPUP(281);
HPUP(282);
HPUP(283);
HPUP(284);
HPUP(285);
HPUP(286);
HPUP(287);
HPUP(288);
HPUP(289);
HPUP(290);
SetOneMagic(281, 0, 63, 600);
SetOneMagic(282, 0, 63, 600);
SetOneMagic(283, 0, 63, 700);
SetOneMagic(284, 0, 63, 700);
SetOneMagic(285, 0, 63, 800);
SetOneMagic(286, 0, 63, 800);
SetOneMagic(287, 0, 63, 800);
SetOneMagic(288, 0, 63, 900);
SetOneMagic(289, 0, 63, 900);
SetOneMagic(290, 0, 63, 900);
--全真教徒升级
HPUP(291);
HPUP(292);
HPUP(293);
HPUP(294);
HPUP(295);
HPUP(296);
HPUP(297);
HPUP(298);
HPUP(299);
HPUP(300);
--明教弟子升级
HPUP(301);
HPUP(302);
HPUP(303);
HPUP(304);
HPUP(305);
HPUP(306);
HPUP(307);
HPUP(308);
HPUP(309);
HPUP(310);
SetOneMagic(301, 0, 74, 500);
SetOneMagic(302, 0, 74, 500);
SetOneMagic(303, 0, 74, 600);
SetOneMagic(304, 0, 74, 600);
SetOneMagic(305, 0, 74, 600);
SetOneMagic(306, 0, 74, 700);
SetOneMagic(307, 0, 74, 700);
SetOneMagic(308, 0, 74, 700);
SetOneMagic(309, 0, 74, 800);
SetOneMagic(310, 0, 74, 900);
SimUP(3,4);--苗人凤升级
SimUP(5,4);--张三丰升级
SimUP(7,4);--何太冲升级
SimUP(8,4);--唐文亮升级
SimUP(10,4);--范遥升级
SimUP(11,4);--杨逍升级
SimUP(12,4);--殷天正升级
SimUP(13,4);--谢逊升级
SimUP(14,4);--韦一笑升级
SimUP(15,4);--金花婆婆升级
SimUP(19,3);--岳不群升级
SimUP(20,5);--莫大升级
SimUP(21,4);--定闲升级
SimUP(22,3);--左冷禅升级
SimUP(23,3);--天门升级
SimUP(27,8);--东方不败升级
SimUP(30,4);--风清扬升级
SimUP(31,4);--丹青生升级
SimUP(32,4);--秃笔翁升级
SimUP(33,4);--黑白子升级
SimUP(34,4);--黄钟公升级
SimUP(39,4);--龙岛主升级
SetOneMagic(39, 0, 6, 900);
SimUP(40,4);--木岛主升级
SetOneMagic(40, 0, 6, 900);
SimUP(41,4);--张三升级
SetOneMagic(41, 0, 6, 800);
SimUP(42,4);--李四升级
SetOneMagic(42, 0, 6, 700);
SimUP(43,4);--白万剑升级
SimUP(50,3);--乔峰升级
SimUP(52,4);--苏星河升级
SetOneMagic(52, 0, 6, 800);
SimUP(55,6);--郭靖升级
SimUP(56,2);--黄蓉升级
SimUP(57,3);--黄药师升级
SimUP(60,4);--欧阳锋升级
SimUP(62,4);--金轮法王升级
SimUP(64,5);--周伯通升级
SimUP(65,4);--一灯升级
SimUP(66,4);--瑛姑升级
SetOneMagic(66, 0, 90, 900);
SimUP(67,4);--裘千仞升级
SimUP(68,4);--丘处机升级
SimUP(69,4);--洪七公升级
SimUP(70,4);--玄慈升级
SimUP(71,4);--洪教主升级
SimUP(72,4);--孔八拉升级
SimUP(73,4);--南贤升级
SetOneMagic(73, 0, 90, 800);
SimUP(74,4);--北丑升级
SetOneMagic(74, 0, 90, 700);
SimUP(75,4);--林厨子升级
SetOneMagic(75, 0, 6, 800);
--升级结束
Rest();
SetRoleFace(1);
jyx2_Wait(1.8);
LightScence();
if GetTeamMembersCount() > 1 then goto  label2 end;
Talkplus(4678);--0, "这一觉睡的好香，不知道江湖上发生了什么事情，去看看。"
do return end;
::label2::
AllLeave();
Talkplus(4679);--0, "这一觉睡的好香，兄弟们都去哪里了？不知道江湖上发生了什么事情，去看看。"
do return end;