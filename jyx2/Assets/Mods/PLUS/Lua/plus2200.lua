if AskRest() == true then goto  label1 end;
    do return end;
::label1::
    Talk(0, "为了走更远的路，适当的休息也是必须的。我就好好的睡一觉吧！", "", 1);
    DarkScence();
if HaveItem(143) == true then goto label0 end;
    Rest();
    SetRoleFace(1);
    LightScence();
    Talk(0, "一觉起来，精神十足。走吧，继续冒险去了！", "", 1);
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
math.randomseed(tostring(os.time()):reverse():sub(1, 7));
local lv1 = math.random(10, 15);
local lv2 = lv1 + 5;
--少林弟子升级
AddHp(81, (6+math.random (0, 3))*3*lv1);
AddHp(82, (6+math.random (0, 3))*3*lv1);
AddHp(83, (6+math.random (0, 3))*3*lv1);
AddHp(84, (6+math.random (0, 3))*3*lv1);
AddHp(85, (6+math.random (0, 3))*3*lv1);
AddHp(86, (6+math.random (0, 3))*3*lv1);
AddHp(87, (6+math.random (0, 3))*3*lv1);
AddHp(88, (6+math.random (0, 3))*3*lv1);
AddHp(89, (6+math.random (0, 3))*3*lv1);
AddHp(90, (6+math.random (0, 3))*3*lv1);
--昆仑弟子升级
AddHp(91, (7+math.random (0, 3))*3*lv1);
SetOneMagic(91, 0, 39, 500);
AddHp(92, (7+math.random (0, 3))*3*lv1);
SetOneMagic(92, 0, 39, 500);
AddHp(93, (7+math.random (0, 3))*3*lv1);
SetOneMagic(93, 0, 39, 600);
AddHp(94, (7+math.random (0, 3))*3*lv1);
SetOneMagic(94, 0, 39, 600);
AddHp(95, (7+math.random (0, 3))*3*lv1);
SetOneMagic(95, 0, 39, 700);
AddHp(96, (7+math.random (0, 3))*3*lv1);
SetOneMagic(96, 0, 39, 700);
AddHp(97, (7+math.random (0, 3))*3*lv1);
SetOneMagic(97, 0, 39, 800);
AddHp(98, (7+math.random (0, 3))*3*lv1);
SetOneMagic(98, 0, 39, 800);
AddHp(99, (7+math.random (0, 3))*3*lv1);
SetOneMagic(99, 0, 39, 900);
AddHp(100, (7+math.random (0, 3))*3*lv1);
SetOneMagic(100, 0, 39, 900);
--神龙教徒升级
AddHp(101, (3+math.random (0, 3))*3*lv1);
SetOneMagic(101, 0, 69, 200);
AddHp(102, (4+math.random (0, 3))*3*lv1);
SetOneMagic(102, 0, 69, 200);
AddHp(103, (6+math.random (0, 3))*3*lv1);
SetOneMagic(103, 0, 69, 300);
AddHp(104, (7+math.random (0, 3))*3*lv1);
SetOneMagic(104, 0, 69, 300);
AddHp(105, (6+math.random (0, 3))*3*lv1);
SetOneMagic(105, 0, 69, 300);
AddHp(106, (5+math.random (0, 3))*3*lv1);
SetOneMagic(106, 0, 69, 500);
AddHp(107, (6+math.random (0, 3))*3*lv1);
SetOneMagic(107, 0, 69, 600);
AddHp(108, (7+math.random (0, 3))*3*lv1);
SetOneMagic(108, 0, 69, 700);
AddHp(109, (6+math.random (0, 3))*3*lv1);
SetOneMagic(109, 0, 69, 800);
AddHp(110, (8+math.random (0, 3))*3*lv1);
SetOneMagic(110, 0, 69, 900);
--武当弟子升级
AddHp(131, (7+math.random (0, 3))*3*lv1);
SetOneMagic(131, 0, 41, 500);
AddHp(132, (7+math.random (0, 3))*3*lv1);
SetOneMagic(132, 0, 41, 500);
AddHp(133, (7+math.random (0, 3))*3*lv1);
SetOneMagic(133, 0, 41, 900);
AddHp(134, (7+math.random (0, 3))*3*lv1);
SetOneMagic(134, 0, 41, 850);
AddHp(135, (7+math.random (0, 3))*3*lv1);
SetOneMagic(135, 0, 41, 900);
AddHp(136, (7+math.random (0, 3))*3*lv1);
SetOneMagic(136, 0, 41, 770);
AddHp(137, (7+math.random (0, 3))*3*lv1);
SetOneMagic(137, 0, 41, 800);
AddHp(138, (7+math.random (0, 3))*3*lv1);
SetOneMagic(138, 0, 41, 800);
AddHp(139, (7+math.random (0, 3))*3*lv1);
SetOneMagic(139, 0, 41, 900);
AddHp(140, (7+math.random (0, 3))*3*lv1);
SetOneMagic(140, 0, 41, 900);
--华山弟子升级
AddHp(161, (5+math.random (0, 3))*3*lv1);
SetOneMagic(161, 0, 37, 700);
AddHp(162, (5+math.random (0, 3))*3*lv1);
SetOneMagic(162, 0, 37, 700);
AddHp(163, (5+math.random (0, 3))*3*lv1);
SetOneMagic(163, 0, 37, 700);
AddHp(164, (5+math.random (0, 3))*3*lv1);
SetOneMagic(164, 0, 37, 800);
AddHp(165, (5+math.random (0, 3))*3*lv1);
SetOneMagic(165, 0, 37, 800);
AddHp(166, (5+math.random (0, 3))*3*lv1);
SetOneMagic(166, 0, 37, 800);
AddHp(167, (5+math.random (0, 3))*3*lv1);
SetOneMagic(167, 0, 37, 800);
AddHp(168, (5+math.random (0, 3))*3*lv1);
SetOneMagic(168, 0, 37, 900);
AddHp(169, (5+math.random (0, 3))*3*lv1);
SetOneMagic(169, 0, 37, 900);
AddHp(170, (5+math.random (0, 3))*3*lv1);
SetOneMagic(170, 0, 37, 900);
--衡山弟子升级
AddHp(171, (3+math.random (0, 3))*3*lv1);
SetOneMagic(171, 0, 36, 500);
AddHp(172, (3+math.random (0, 3))*3*lv1);
SetOneMagic(172, 0, 36, 500);
AddHp(173, (4+math.random (0, 3))*3*lv1);
SetOneMagic(173, 0, 36, 500);
AddHp(174, (4+math.random (0, 3))*3*lv1);
SetOneMagic(174, 0, 36, 600);
AddHp(175, (4+math.random (0, 3))*3*lv1);
SetOneMagic(175, 0, 36, 600);
AddHp(176, (5+math.random (0, 3))*3*lv1);
SetOneMagic(176, 0, 36, 800);
AddHp(177, (5+math.random (0, 3))*3*lv1);
SetOneMagic(177, 0, 36, 900);
AddHp(178, (5+math.random (0, 3))*3*lv1);
SetOneMagic(178, 0, 36, 900);
AddHp(179, (5+math.random (0, 3))*3*lv1);
SetOneMagic(179, 0, 36, 700);
AddHp(180, (5+math.random (0, 3))*3*lv1);
SetOneMagic(180, 0, 36, 700);
--嵩山弟子升级
AddHp(191, (7+math.random (0, 3))*3*lv1);
SetOneMagic(191, 0, 38, 500);
AddHp(192, (7+math.random (0, 3))*3*lv1);
SetOneMagic(192, 0, 38, 500);
AddHp(193, (7+math.random (0, 3))*3*lv1);
SetOneMagic(193, 0, 38, 600);
AddHp(194, (7+math.random (0, 3))*3*lv1);
SetOneMagic(194, 0, 38, 600);
AddHp(195, (7+math.random (0, 3))*3*lv1);
SetOneMagic(195, 0, 38, 600);
AddHp(196, (7+math.random (0, 3))*3*lv1);
SetOneMagic(196, 0, 38, 700);
AddHp(197, (7+math.random (0, 3))*3*lv1);
SetOneMagic(197, 0, 38, 700);
AddHp(198, (7+math.random (0, 3))*3*lv1);
SetOneMagic(198, 0, 38, 700);
AddHp(199, (8+math.random (0, 3))*3*lv1);
SetOneMagic(199, 0, 38, 800);
AddHp(200, (8+math.random (0, 3))*3*lv1);
SetOneMagic(200, 0, 38, 900);
--五毒教徒升级
AddHp(221, (4+math.random (0, 3))*3*lv1);
SetOneMagic(221, 0, 77, 600);
AddHp(222, (4+math.random (0, 3))*3*lv1);
SetOneMagic(222, 0, 77, 600);
AddHp(223, (4+math.random (0, 3))*3*lv1);
SetOneMagic(223, 0, 77, 700);
AddHp(224, (4+math.random (0, 3))*3*lv1);
SetOneMagic(224, 0, 77, 700);
AddHp(225, (4+math.random (0, 3))*3*lv1);
SetOneMagic(225, 0, 77, 800);
AddHp(226, (4+math.random (0, 3))*3*lv1);
SetOneMagic(226, 0, 77, 800);
AddHp(227, (4+math.random (0, 3))*3*lv1);
SetOneMagic(227, 0, 77, 800);
AddHp(228, (4+math.random (0, 3))*3*lv1);
SetOneMagic(228, 0, 77, 900);
AddHp(229, (4+math.random (0, 3))*3*lv1);
SetOneMagic(229, 0, 77, 900);
AddHp(230, (4+math.random (0, 3))*3*lv1);
SetOneMagic(230, 0, 77, 900);
--番僧升级
AddHp(251, (7+math.random (0, 3))*3*lv1);
SetOneMagic(251, 0, 70, 400);
AddHp(252, (7+math.random (0, 3))*3*lv1);
SetOneMagic(252, 0, 70, 400);
AddHp(253, (7+math.random (0, 3))*3*lv1);
SetOneMagic(253, 0, 70, 500);
AddHp(254, (7+math.random (0, 3))*3*lv1);
SetOneMagic(254, 0, 70, 500);
AddHp(255, (7+math.random (0, 3))*3*lv1);
SetOneMagic(255, 0, 70, 600);
AddHp(256, (7+math.random (0, 3))*3*lv1);
SetOneMagic(256, 0, 70, 600);
AddHp(257, (7+math.random (0, 3))*3*lv1);
SetOneMagic(257, 0, 70, 700);
AddHp(258, (7+math.random (0, 3))*3*lv1);
SetOneMagic(258, 0, 70, 700);
AddHp(259, (7+math.random (0, 3))*3*lv1);
SetOneMagic(259, 0, 70, 800);
AddHp(260, (7+math.random (0, 3))*3*lv1);
SetOneMagic(260, 0, 70, 900);
--星宿门人升级
AddHp(261, (5+math.random (0, 3))*3*lv1);
SetOneMagic(261, 0, 72, 600);
AddHp(262, (5+math.random (0, 3))*3*lv1);
SetOneMagic(262, 0, 72, 600);
AddHp(263, (5+math.random (0, 3))*3*lv1);
SetOneMagic(263, 0, 72, 700);
AddHp(264, (5+math.random (0, 3))*3*lv1);
SetOneMagic(264, 0, 72, 700);
AddHp(265, (5+math.random (0, 3))*3*lv1);
SetOneMagic(265, 0, 72, 700);
AddHp(266, (5+math.random (0, 3))*3*lv1);
SetOneMagic(266, 0, 72, 800);
AddHp(267, (5+math.random (0, 3))*3*lv1);
SetOneMagic(267, 0, 72, 800);
AddHp(268, (5+math.random (0, 3))*3*lv1);
SetOneMagic(268, 0, 72, 800);
AddHp(269, (5+math.random (0, 3))*3*lv1);
SetOneMagic(269, 0, 72, 900);
AddHp(270, (5+math.random (0, 3))*3*lv1);
SetOneMagic(270, 0, 72, 900);
--丐帮弟子升级
AddHp(271, (8+math.random (0, 3))*3*lv1);
AddHp(272, (8+math.random (0, 3))*3*lv1);
AddHp(273, (8+math.random (0, 3))*3*lv1);
AddHp(274, (8+math.random (0, 3))*3*lv1);
AddHp(275, (8+math.random (0, 3))*3*lv1);
AddHp(276, (8+math.random (0, 3))*3*lv1);
AddHp(277, (8+math.random (0, 3))*3*lv1);
AddHp(278, (8+math.random (0, 3))*3*lv1);
AddHp(279, (8+math.random (0, 3))*3*lv1);
AddHp(280, (8+math.random (0, 3))*3*lv1);
--铁掌帮众升级
AddHp(281, (5+math.random (0, 3))*3*lv1);
SetOneMagic(281, 0, 63, 600);
AddHp(282, (5+math.random (0, 3))*3*lv1);
SetOneMagic(282, 0, 63, 600);
AddHp(283, (5+math.random (0, 3))*3*lv1);
SetOneMagic(283, 0, 63, 700);
AddHp(284, (5+math.random (0, 3))*3*lv1);
SetOneMagic(284, 0, 63, 700);
AddHp(285, (5+math.random (0, 3))*3*lv1);
SetOneMagic(285, 0, 63, 800);
AddHp(286, (6+math.random (0, 3))*3*lv1);
SetOneMagic(286, 0, 63, 800);
AddHp(287, (7+math.random (0, 3))*3*lv1);
SetOneMagic(287, 0, 63, 800);
AddHp(288, (7+math.random (0, 3))*3*lv1);
SetOneMagic(288, 0, 63, 900);
AddHp(289, (7+math.random (0, 3))*3*lv1);
SetOneMagic(289, 0, 63, 900);
AddHp(290, (7+math.random (0, 3))*3*lv1);
SetOneMagic(290, 0, 63, 900);
--全真教徒升级
AddHp(291, (5+math.random (0, 3))*3*lv1);
AddHp(292, (5+math.random (0, 3))*3*lv1);
AddHp(293, (5+math.random (0, 3))*3*lv1);
AddHp(294, (5+math.random (0, 3))*3*lv1);
AddHp(295, (5+math.random (0, 3))*3*lv1);
AddHp(296, (5+math.random (0, 3))*3*lv1);
AddHp(297, (5+math.random (0, 3))*3*lv1);
AddHp(298, (5+math.random (0, 3))*3*lv1);
AddHp(299, (5+math.random (0, 3))*3*lv1);
AddHp(300, (5+math.random (0, 3))*3*lv1);
--明教弟子升级
AddHp(301, (7+math.random (0, 3))*3*lv1);
SetOneMagic(301, 0, 74, 500);
AddHp(302, (7+math.random (0, 3))*3*lv1);
SetOneMagic(302, 0, 74, 500);
AddHp(303, (7+math.random (0, 3))*3*lv1);
SetOneMagic(303, 0, 74, 600);
AddHp(304, (7+math.random (0, 3))*3*lv1);
SetOneMagic(304, 0, 74, 600);
AddHp(305, (7+math.random (0, 3))*3*lv1);
SetOneMagic(305, 0, 74, 600);
AddHp(306, (7+math.random (0, 3))*3*lv1);
SetOneMagic(306, 0, 74, 700);
AddHp(307, (7+math.random (0, 3))*3*lv1);
SetOneMagic(307, 0, 74, 700);
AddHp(308, (7+math.random (0, 3))*3*lv1);
SetOneMagic(308, 0, 74, 700);
AddHp(309, (7+math.random (0, 3))*3*lv1);
SetOneMagic(309, 0, 74, 800);
AddHp(310, (7+math.random (0, 3))*3*lv1);
SetOneMagic(310, 0, 74, 900);
--苗人凤升级
AddHp(3, (5+math.random (0, 3))*3*lv2);
AddMp(3, math.random (4, 8)*4*lv2);
--张三丰升级
AddHp(5, (5+math.random (0, 3))*3*lv2);
AddMp(5, math.random (4, 8)*4*lv2);
--范遥升级
AddHp(10, (7+math.random (0, 3))*3*lv2);
AddMp(10, math.random (4, 8)*4*lv2);
--杨逍升级
AddHp(11, (6+math.random (0, 3))*3*lv2);
AddMp(11, math.random (4, 8)*4*lv2);
--殷天正升级
AddHp(12, (5+math.random (0, 3))*3*lv2);
AddMp(12, math.random (4, 8)*4*lv2);
--谢逊升级
AddHp(13, (5+math.random (0, 3))*3*lv2);
AddMp(13, math.random (4, 8)*4*lv2);
--韦一笑升级
AddHp(14, (4+math.random (0, 3))*3*lv2);
AddMp(14, math.random (4, 8)*4*lv2);
--金花婆婆升级
AddHp(15, (5+math.random (0, 3))*3*lv2);
AddMp(15, math.random (4, 8)*4*lv2);
--岳不群升级
AddHp(19, (9+math.random (0, 3))*3*lv2);
AddMp(19, math.random (3, 8)*4*lv2);
--莫大升级
AddHp(20, (7+math.random (0, 3))*3*lv2);
AddMp(20, math.random (5, 8)*4*lv2);
--左冷禅升级
AddHp(22, (8+math.random (0, 3))*3*lv2);
AddMp(22, math.random (3, 8)*4*lv2);
--风清扬升级
AddHp(30, (9+math.random (0, 3))*3*lv2);
AddMp(30, math.random (4, 8)*4*lv2);
--龙岛主升级
AddHp(39, (9+math.random (0, 3))*3*lv2);
AddMp(39, math.random (4, 8)*4*lv2);
SetOneMagic(39, 0, 6, 900);
--木岛主升级
AddHp(40, (9+math.random (0, 3))*3*lv2);
AddMp(40, math.random (4, 8)*4*lv2);
SetOneMagic(40, 0, 6, 900);
--张三升级
AddHp(41, (7+math.random (0, 3))*3*lv2);
AddMp(41, math.random (4, 8)*4*lv2);
SetOneMagic(41, 0, 6, 800);
--李四升级
AddHp(42, (7+math.random (0, 3))*3*lv2);
AddMp(42, math.random (4, 8)*4*lv2);
SetOneMagic(42, 0, 6, 700);
--乔峰升级
AddHp(50, (5+math.random (0, 3))*3*lv2);
AddMp(50, math.random (3, 8)*4*lv2);
--苏星河升级
AddHp(52, (6+math.random (0, 3))*3*lv2);
AddMp(52, math.random (4, 8)*4*lv2);
SetOneMagic(52, 0, 6, 800);
--郭靖升级
AddHp(55, (6+math.random (0, 3))*3*lv2);
AddMp(55, math.random (6, 8)*4*lv2);
--黄蓉升级
AddHp(56, (7+math.random (0, 3))*3*lv2);
AddMp(56, math.random (2, 8)*4*lv2);
--黄药师升级
AddHp(57, (8+math.random (0, 3))*3*lv2);
AddMp(57, math.random (3, 8)*4*lv2);
--欧阳锋升级
AddHp(60, (8+math.random (0, 3))*3*lv2);
AddMp(60, math.random (4, 8)*4*lv2);
--金轮法王升级
AddHp(62, (9+math.random (0, 3))*3*lv2);
AddMp(62, math.random (4, 8)*4*lv2);
--周伯通升级
AddHp(64, (9+math.random (0, 3))*3*lv2);
AddMp(64, math.random (5, 8)*4*lv2);
--一灯升级
AddHp(65, (8+math.random (0, 3))*3*lv2);
AddMp(65, math.random (4, 8)*4*lv2);
--瑛姑升级
AddHp(66, (8+math.random (0, 3))*3*lv2);
AddMp(66, math.random (4, 8)*4*lv2);
SetOneMagic(66, 0, 90, 900);
--裘千仞升级
AddHp(67, (8+math.random (0, 3))*3*lv2);
AddMp(67, math.random (4, 8)*4*lv2);
--丘处机升级
AddHp(68, (5+math.random (0, 3))*3*lv2);
AddMp(68, math.random (4, 8)*4*lv2);
--洪七公升级
AddHp(69, (7+math.random (0, 3))*3*lv2);
AddMp(69, math.random (4, 8)*4*lv2);
--玄慈升级
AddHp(70, (8+math.random (0, 3))*3*lv2);
AddMp(70, math.random (4, 8)*4*lv2);
--洪教主升级
AddHp(71, (9+math.random (0, 3))*3*lv2);
AddMp(71, math.random (4, 8)*4*lv2);
--孔八拉升级
AddHp(72, (9+math.random (0, 3))*3*lv2);
AddMp(72, math.random (4, 8)*4*lv2);
--南贤升级
AddHp(73, (5+math.random (0, 3))*3*lv2);
AddMp(73, math.random (4, 8)*4*lv2);
SetOneMagic(73, 0, 90, 800);
--北丑升级
AddHp(74, (5+math.random (0, 3))*3*lv2);
AddMp(74, math.random (4, 8)*4*lv2);
SetOneMagic(74, 0, 90, 700);
--林厨子升级
AddHp(75, (5+math.random (0, 3))*3*lv2);
AddMp(75, math.random (4, 8)*4*lv2);
SetOneMagic(75, 0, 6, 800);
--升级结束
Rest();
SetRoleFace(1);
jyx2_Wait(1.5);
LightScence();
Talk(0, "这一觉睡的好香，不知道江湖上发生了什么事情，去看看。", "", 1);
do return end;