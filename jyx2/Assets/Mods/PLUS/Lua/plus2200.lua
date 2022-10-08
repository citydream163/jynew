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
AddHpWithoutHint(81, (6+math.random (0, 3))*3*lv1);
AddHpWithoutHint(82, (6+math.random (0, 3))*3*lv1);
AddHpWithoutHint(83, (6+math.random (0, 3))*3*lv1);
AddHpWithoutHint(84, (6+math.random (0, 3))*3*lv1);
AddHpWithoutHint(85, (6+math.random (0, 3))*3*lv1);
AddHpWithoutHint(86, (6+math.random (0, 3))*3*lv1);
AddHpWithoutHint(87, (6+math.random (0, 3))*3*lv1);
AddHpWithoutHint(88, (6+math.random (0, 3))*3*lv1);
AddHpWithoutHint(89, (6+math.random (0, 3))*3*lv1);
AddHpWithoutHint(90, (6+math.random (0, 3))*3*lv1);
--昆仑弟子升级
AddHpWithoutHint(91, (7+math.random (0, 3))*3*lv1);
SetOneMagic(91, 0, 39, 500);
AddHpWithoutHint(92, (7+math.random (0, 3))*3*lv1);
SetOneMagic(92, 0, 39, 500);
AddHpWithoutHint(93, (7+math.random (0, 3))*3*lv1);
SetOneMagic(93, 0, 39, 600);
AddHpWithoutHint(94, (7+math.random (0, 3))*3*lv1);
SetOneMagic(94, 0, 39, 600);
AddHpWithoutHint(95, (7+math.random (0, 3))*3*lv1);
SetOneMagic(95, 0, 39, 700);
AddHpWithoutHint(96, (7+math.random (0, 3))*3*lv1);
SetOneMagic(96, 0, 39, 700);
AddHpWithoutHint(97, (7+math.random (0, 3))*3*lv1);
SetOneMagic(97, 0, 39, 800);
AddHpWithoutHint(98, (7+math.random (0, 3))*3*lv1);
SetOneMagic(98, 0, 39, 800);
AddHpWithoutHint(99, (7+math.random (0, 3))*3*lv1);
SetOneMagic(99, 0, 39, 900);
AddHpWithoutHint(100, (7+math.random (0, 3))*3*lv1);
SetOneMagic(100, 0, 39, 900);
--神龙教徒升级
AddHpWithoutHint(101, (3+math.random (0, 3))*3*lv1);
SetOneMagic(101, 0, 69, 200);
AddHpWithoutHint(102, (4+math.random (0, 3))*3*lv1);
SetOneMagic(102, 0, 69, 200);
AddHpWithoutHint(103, (6+math.random (0, 3))*3*lv1);
SetOneMagic(103, 0, 69, 300);
AddHpWithoutHint(104, (7+math.random (0, 3))*3*lv1);
SetOneMagic(104, 0, 69, 300);
AddHpWithoutHint(105, (6+math.random (0, 3))*3*lv1);
SetOneMagic(105, 0, 69, 300);
AddHpWithoutHint(106, (5+math.random (0, 3))*3*lv1);
SetOneMagic(106, 0, 69, 500);
AddHpWithoutHint(107, (6+math.random (0, 3))*3*lv1);
SetOneMagic(107, 0, 69, 600);
AddHpWithoutHint(108, (7+math.random (0, 3))*3*lv1);
SetOneMagic(108, 0, 69, 700);
AddHpWithoutHint(109, (6+math.random (0, 3))*3*lv1);
SetOneMagic(109, 0, 69, 800);
AddHpWithoutHint(110, (8+math.random (0, 3))*3*lv1);
SetOneMagic(110, 0, 69, 900);
--武当弟子升级
AddHpWithoutHint(131, (7+math.random (0, 3))*3*lv1);
SetOneMagic(131, 0, 41, 500);
AddHpWithoutHint(132, (7+math.random (0, 3))*3*lv1);
SetOneMagic(132, 0, 41, 500);
AddHpWithoutHint(133, (7+math.random (0, 3))*3*lv1);
SetOneMagic(133, 0, 41, 900);
AddHpWithoutHint(134, (7+math.random (0, 3))*3*lv1);
SetOneMagic(134, 0, 41, 850);
AddHpWithoutHint(135, (7+math.random (0, 3))*3*lv1);
SetOneMagic(135, 0, 41, 900);
AddHpWithoutHint(136, (7+math.random (0, 3))*3*lv1);
SetOneMagic(136, 0, 41, 770);
AddHpWithoutHint(137, (7+math.random (0, 3))*3*lv1);
SetOneMagic(137, 0, 41, 800);
AddHpWithoutHint(138, (7+math.random (0, 3))*3*lv1);
SetOneMagic(138, 0, 41, 800);
AddHpWithoutHint(139, (7+math.random (0, 3))*3*lv1);
SetOneMagic(139, 0, 41, 900);
AddHpWithoutHint(140, (7+math.random (0, 3))*3*lv1);
SetOneMagic(140, 0, 41, 900);
--华山弟子升级
AddHpWithoutHint(161, (5+math.random (0, 3))*3*lv1);
SetOneMagic(161, 0, 37, 700);
AddHpWithoutHint(162, (5+math.random (0, 3))*3*lv1);
SetOneMagic(162, 0, 37, 700);
AddHpWithoutHint(163, (5+math.random (0, 3))*3*lv1);
SetOneMagic(163, 0, 37, 700);
AddHpWithoutHint(164, (5+math.random (0, 3))*3*lv1);
SetOneMagic(164, 0, 37, 800);
AddHpWithoutHint(165, (5+math.random (0, 3))*3*lv1);
SetOneMagic(165, 0, 37, 800);
AddHpWithoutHint(166, (5+math.random (0, 3))*3*lv1);
SetOneMagic(166, 0, 37, 800);
AddHpWithoutHint(167, (5+math.random (0, 3))*3*lv1);
SetOneMagic(167, 0, 37, 800);
AddHpWithoutHint(168, (5+math.random (0, 3))*3*lv1);
SetOneMagic(168, 0, 37, 900);
AddHpWithoutHint(169, (5+math.random (0, 3))*3*lv1);
SetOneMagic(169, 0, 37, 900);
AddHpWithoutHint(170, (5+math.random (0, 3))*3*lv1);
SetOneMagic(170, 0, 37, 900);
--衡山弟子升级
AddHpWithoutHint(171, (3+math.random (0, 3))*3*lv1);
SetOneMagic(171, 0, 36, 500);
AddHpWithoutHint(172, (3+math.random (0, 3))*3*lv1);
SetOneMagic(172, 0, 36, 500);
AddHpWithoutHint(173, (4+math.random (0, 3))*3*lv1);
SetOneMagic(173, 0, 36, 500);
AddHpWithoutHint(174, (4+math.random (0, 3))*3*lv1);
SetOneMagic(174, 0, 36, 600);
AddHpWithoutHint(175, (4+math.random (0, 3))*3*lv1);
SetOneMagic(175, 0, 36, 600);
AddHpWithoutHint(176, (5+math.random (0, 3))*3*lv1);
SetOneMagic(176, 0, 36, 800);
AddHpWithoutHint(177, (5+math.random (0, 3))*3*lv1);
SetOneMagic(177, 0, 36, 900);
AddHpWithoutHint(178, (5+math.random (0, 3))*3*lv1);
SetOneMagic(178, 0, 36, 900);
AddHpWithoutHint(179, (5+math.random (0, 3))*3*lv1);
SetOneMagic(179, 0, 36, 700);
AddHpWithoutHint(180, (5+math.random (0, 3))*3*lv1);
SetOneMagic(180, 0, 36, 700);
--嵩山弟子升级
AddHpWithoutHint(191, (7+math.random (0, 3))*3*lv1);
SetOneMagic(191, 0, 38, 500);
AddHpWithoutHint(192, (7+math.random (0, 3))*3*lv1);
SetOneMagic(192, 0, 38, 500);
AddHpWithoutHint(193, (7+math.random (0, 3))*3*lv1);
SetOneMagic(193, 0, 38, 600);
AddHpWithoutHint(194, (7+math.random (0, 3))*3*lv1);
SetOneMagic(194, 0, 38, 600);
AddHpWithoutHint(195, (7+math.random (0, 3))*3*lv1);
SetOneMagic(195, 0, 38, 600);
AddHpWithoutHint(196, (7+math.random (0, 3))*3*lv1);
SetOneMagic(196, 0, 38, 700);
AddHpWithoutHint(197, (7+math.random (0, 3))*3*lv1);
SetOneMagic(197, 0, 38, 700);
AddHpWithoutHint(198, (7+math.random (0, 3))*3*lv1);
SetOneMagic(198, 0, 38, 700);
AddHpWithoutHint(199, (8+math.random (0, 3))*3*lv1);
SetOneMagic(199, 0, 38, 800);
AddHpWithoutHint(200, (8+math.random (0, 3))*3*lv1);
SetOneMagic(200, 0, 38, 900);
--五毒教徒升级
AddHpWithoutHint(221, (4+math.random (0, 3))*3*lv1);
SetOneMagic(221, 0, 77, 600);
AddHpWithoutHint(222, (4+math.random (0, 3))*3*lv1);
SetOneMagic(222, 0, 77, 600);
AddHpWithoutHint(223, (4+math.random (0, 3))*3*lv1);
SetOneMagic(223, 0, 77, 700);
AddHpWithoutHint(224, (4+math.random (0, 3))*3*lv1);
SetOneMagic(224, 0, 77, 700);
AddHpWithoutHint(225, (4+math.random (0, 3))*3*lv1);
SetOneMagic(225, 0, 77, 800);
AddHpWithoutHint(226, (4+math.random (0, 3))*3*lv1);
SetOneMagic(226, 0, 77, 800);
AddHpWithoutHint(227, (4+math.random (0, 3))*3*lv1);
SetOneMagic(227, 0, 77, 800);
AddHpWithoutHint(228, (4+math.random (0, 3))*3*lv1);
SetOneMagic(228, 0, 77, 900);
AddHpWithoutHint(229, (4+math.random (0, 3))*3*lv1);
SetOneMagic(229, 0, 77, 900);
AddHpWithoutHint(230, (4+math.random (0, 3))*3*lv1);
SetOneMagic(230, 0, 77, 900);
--番僧升级
AddHpWithoutHint(251, (7+math.random (0, 3))*3*lv1);
SetOneMagic(251, 0, 70, 400);
AddHpWithoutHint(252, (7+math.random (0, 3))*3*lv1);
SetOneMagic(252, 0, 70, 400);
AddHpWithoutHint(253, (7+math.random (0, 3))*3*lv1);
SetOneMagic(253, 0, 70, 500);
AddHpWithoutHint(254, (7+math.random (0, 3))*3*lv1);
SetOneMagic(254, 0, 70, 500);
AddHpWithoutHint(255, (7+math.random (0, 3))*3*lv1);
SetOneMagic(255, 0, 70, 600);
AddHpWithoutHint(256, (7+math.random (0, 3))*3*lv1);
SetOneMagic(256, 0, 70, 600);
AddHpWithoutHint(257, (7+math.random (0, 3))*3*lv1);
SetOneMagic(257, 0, 70, 700);
AddHpWithoutHint(258, (7+math.random (0, 3))*3*lv1);
SetOneMagic(258, 0, 70, 700);
AddHpWithoutHint(259, (7+math.random (0, 3))*3*lv1);
SetOneMagic(259, 0, 70, 800);
AddHpWithoutHint(260, (7+math.random (0, 3))*3*lv1);
SetOneMagic(260, 0, 70, 900);
--星宿门人升级
AddHpWithoutHint(261, (5+math.random (0, 3))*3*lv1);
SetOneMagic(261, 0, 72, 600);
AddHpWithoutHint(262, (5+math.random (0, 3))*3*lv1);
SetOneMagic(262, 0, 72, 600);
AddHpWithoutHint(263, (5+math.random (0, 3))*3*lv1);
SetOneMagic(263, 0, 72, 700);
AddHpWithoutHint(264, (5+math.random (0, 3))*3*lv1);
SetOneMagic(264, 0, 72, 700);
AddHpWithoutHint(265, (5+math.random (0, 3))*3*lv1);
SetOneMagic(265, 0, 72, 700);
AddHpWithoutHint(266, (5+math.random (0, 3))*3*lv1);
SetOneMagic(266, 0, 72, 800);
AddHpWithoutHint(267, (5+math.random (0, 3))*3*lv1);
SetOneMagic(267, 0, 72, 800);
AddHpWithoutHint(268, (5+math.random (0, 3))*3*lv1);
SetOneMagic(268, 0, 72, 800);
AddHpWithoutHint(269, (5+math.random (0, 3))*3*lv1);
SetOneMagic(269, 0, 72, 900);
AddHpWithoutHint(270, (5+math.random (0, 3))*3*lv1);
SetOneMagic(270, 0, 72, 900);
--丐帮弟子升级
AddHpWithoutHint(271, (8+math.random (0, 3))*3*lv1);
AddHpWithoutHint(272, (8+math.random (0, 3))*3*lv1);
AddHpWithoutHint(273, (8+math.random (0, 3))*3*lv1);
AddHpWithoutHint(274, (8+math.random (0, 3))*3*lv1);
AddHpWithoutHint(275, (8+math.random (0, 3))*3*lv1);
AddHpWithoutHint(276, (8+math.random (0, 3))*3*lv1);
AddHpWithoutHint(277, (8+math.random (0, 3))*3*lv1);
AddHpWithoutHint(278, (8+math.random (0, 3))*3*lv1);
AddHpWithoutHint(279, (8+math.random (0, 3))*3*lv1);
AddHpWithoutHint(280, (8+math.random (0, 3))*3*lv1);
--铁掌帮众升级
AddHpWithoutHint(281, (5+math.random (0, 3))*3*lv1);
SetOneMagic(281, 0, 63, 600);
AddHpWithoutHint(282, (5+math.random (0, 3))*3*lv1);
SetOneMagic(282, 0, 63, 600);
AddHpWithoutHint(283, (5+math.random (0, 3))*3*lv1);
SetOneMagic(283, 0, 63, 700);
AddHpWithoutHint(284, (5+math.random (0, 3))*3*lv1);
SetOneMagic(284, 0, 63, 700);
AddHpWithoutHint(285, (5+math.random (0, 3))*3*lv1);
SetOneMagic(285, 0, 63, 800);
AddHpWithoutHint(286, (6+math.random (0, 3))*3*lv1);
SetOneMagic(286, 0, 63, 800);
AddHpWithoutHint(287, (7+math.random (0, 3))*3*lv1);
SetOneMagic(287, 0, 63, 800);
AddHpWithoutHint(288, (7+math.random (0, 3))*3*lv1);
SetOneMagic(288, 0, 63, 900);
AddHpWithoutHint(289, (7+math.random (0, 3))*3*lv1);
SetOneMagic(289, 0, 63, 900);
AddHpWithoutHint(290, (7+math.random (0, 3))*3*lv1);
SetOneMagic(290, 0, 63, 900);
--全真教徒升级
AddHpWithoutHint(291, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(292, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(293, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(294, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(295, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(296, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(297, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(298, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(299, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(300, (5+math.random (0, 3))*3*lv1);
--明教弟子升级
AddHpWithoutHint(301, (7+math.random (0, 3))*3*lv1);
SetOneMagic(301, 0, 74, 500);
AddHpWithoutHint(302, (7+math.random (0, 3))*3*lv1);
SetOneMagic(302, 0, 74, 500);
AddHpWithoutHint(303, (7+math.random (0, 3))*3*lv1);
SetOneMagic(303, 0, 74, 600);
AddHpWithoutHint(304, (7+math.random (0, 3))*3*lv1);
SetOneMagic(304, 0, 74, 600);
AddHpWithoutHint(305, (7+math.random (0, 3))*3*lv1);
SetOneMagic(305, 0, 74, 600);
AddHpWithoutHint(306, (7+math.random (0, 3))*3*lv1);
SetOneMagic(306, 0, 74, 700);
AddHpWithoutHint(307, (7+math.random (0, 3))*3*lv1);
SetOneMagic(307, 0, 74, 700);
AddHpWithoutHint(308, (7+math.random (0, 3))*3*lv1);
SetOneMagic(308, 0, 74, 700);
AddHpWithoutHint(309, (7+math.random (0, 3))*3*lv1);
SetOneMagic(309, 0, 74, 800);
AddHpWithoutHint(310, (7+math.random (0, 3))*3*lv1);
SetOneMagic(310, 0, 74, 900);
--苗人凤升级
AddHpWithoutHint(3, (5+math.random (0, 3))*3*lv2);
AddMpWithoutHint(3, math.random (4, 8)*4*lv2);
--张三丰升级
AddHpWithoutHint(5, (5+math.random (0, 3))*3*lv2);
AddMpWithoutHint(5, math.random (4, 8)*4*lv2);
--范遥升级
AddHpWithoutHint(10, (7+math.random (0, 3))*3*lv2);
AddMpWithoutHint(10, math.random (4, 8)*4*lv2);
--杨逍升级
AddHpWithoutHint(11, (6+math.random (0, 3))*3*lv2);
AddMpWithoutHint(11, math.random (4, 8)*4*lv2);
--殷天正升级
AddHpWithoutHint(12, (5+math.random (0, 3))*3*lv2);
AddMpWithoutHint(12, math.random (4, 8)*4*lv2);
--谢逊升级
AddHpWithoutHint(13, (5+math.random (0, 3))*3*lv2);
AddMpWithoutHint(13, math.random (4, 8)*4*lv2);
--韦一笑升级
AddHpWithoutHint(14, (4+math.random (0, 3))*3*lv2);
AddMpWithoutHint(14, math.random (4, 8)*4*lv2);
--金花婆婆升级
AddHpWithoutHint(15, (5+math.random (0, 3))*3*lv2);
AddMpWithoutHint(15, math.random (4, 8)*4*lv2);
--岳不群升级
AddHpWithoutHint(19, (9+math.random (0, 3))*3*lv2);
AddMpWithoutHint(19, math.random (3, 8)*4*lv2);
--莫大升级
AddHpWithoutHint(20, (7+math.random (0, 3))*3*lv2);
AddMpWithoutHint(20, math.random (5, 8)*4*lv2);
--左冷禅升级
AddHpWithoutHint(22, (8+math.random (0, 3))*3*lv2);
AddMpWithoutHint(22, math.random (3, 8)*4*lv2);
--风清扬升级
AddHpWithoutHint(30, (9+math.random (0, 3))*3*lv2);
AddMpWithoutHint(30, math.random (4, 8)*4*lv2);
--龙岛主升级
AddHpWithoutHint(39, (9+math.random (0, 3))*3*lv2);
AddMpWithoutHint(39, math.random (4, 8)*4*lv2);
SetOneMagic(39, 0, 6, 900);
--木岛主升级
AddHpWithoutHint(40, (9+math.random (0, 3))*3*lv2);
AddMpWithoutHint(40, math.random (4, 8)*4*lv2);
SetOneMagic(40, 0, 6, 900);
--张三升级
AddHpWithoutHint(41, (7+math.random (0, 3))*3*lv2);
AddMpWithoutHint(41, math.random (4, 8)*4*lv2);
SetOneMagic(41, 0, 6, 800);
--李四升级
AddHpWithoutHint(42, (7+math.random (0, 3))*3*lv2);
AddMpWithoutHint(42, math.random (4, 8)*4*lv2);
SetOneMagic(42, 0, 6, 700);
--乔峰升级
AddHpWithoutHint(50, (5+math.random (0, 3))*3*lv2);
AddMpWithoutHint(50, math.random (3, 8)*4*lv2);
--苏星河升级
AddHpWithoutHint(52, (6+math.random (0, 3))*3*lv2);
AddMpWithoutHint(52, math.random (4, 8)*4*lv2);
SetOneMagic(52, 0, 6, 800);
--郭靖升级
AddHpWithoutHint(55, (6+math.random (0, 3))*3*lv2);
AddMpWithoutHint(55, math.random (6, 8)*4*lv2);
--黄蓉升级
AddHpWithoutHint(56, (7+math.random (0, 3))*3*lv2);
AddMpWithoutHint(56, math.random (2, 8)*4*lv2);
--黄药师升级
AddHpWithoutHint(57, (8+math.random (0, 3))*3*lv2);
AddMpWithoutHint(57, math.random (3, 8)*4*lv2);
--欧阳锋升级
AddHpWithoutHint(60, (8+math.random (0, 3))*3*lv2);
AddMpWithoutHint(60, math.random (4, 8)*4*lv2);
--金轮法王升级
AddHpWithoutHint(62, (9+math.random (0, 3))*3*lv2);
AddMpWithoutHint(62, math.random (4, 8)*4*lv2);
--周伯通升级
AddHpWithoutHint(64, (9+math.random (0, 3))*3*lv2);
AddMpWithoutHint(64, math.random (5, 8)*4*lv2);
--一灯升级
AddHpWithoutHint(65, (8+math.random (0, 3))*3*lv2);
AddMpWithoutHint(65, math.random (4, 8)*4*lv2);
--瑛姑升级
AddHpWithoutHint(66, (8+math.random (0, 3))*3*lv2);
AddMpWithoutHint(66, math.random (4, 8)*4*lv2);
SetOneMagic(66, 0, 90, 900);
--裘千仞升级
AddHpWithoutHint(67, (8+math.random (0, 3))*3*lv2);
AddMpWithoutHint(67, math.random (4, 8)*4*lv2);
--丘处机升级
AddHpWithoutHint(68, (5+math.random (0, 3))*3*lv2);
AddMpWithoutHint(68, math.random (4, 8)*4*lv2);
--洪七公升级
AddHpWithoutHint(69, (7+math.random (0, 3))*3*lv2);
AddMpWithoutHint(69, math.random (4, 8)*4*lv2);
--玄慈升级
AddHpWithoutHint(70, (8+math.random (0, 3))*3*lv2);
AddMpWithoutHint(70, math.random (4, 8)*4*lv2);
--洪教主升级
AddHpWithoutHint(71, (9+math.random (0, 3))*3*lv2);
AddMpWithoutHint(71, math.random (4, 8)*4*lv2);
--孔八拉升级
AddHpWithoutHint(72, (9+math.random (0, 3))*3*lv2);
AddMpWithoutHint(72, math.random (4, 8)*4*lv2);
--南贤升级
AddHpWithoutHint(73, (5+math.random (0, 3))*3*lv2);
AddMpWithoutHint(73, math.random (4, 8)*4*lv2);
SetOneMagic(73, 0, 90, 800);
--北丑升级
AddHpWithoutHint(74, (5+math.random (0, 3))*3*lv2);
AddMpWithoutHint(74, math.random (4, 8)*4*lv2);
SetOneMagic(74, 0, 90, 700);
--林厨子升级
AddHpWithoutHint(75, (5+math.random (0, 3))*3*lv2);
AddMpWithoutHint(75, math.random (4, 8)*4*lv2);
SetOneMagic(75, 0, 6, 800);
--升级结束
Rest();
SetRoleFace(1);
jyx2_Wait(1.8);
LightScence();
if GetTeamMembersCount() > 1 then goto  label2 end;
	Talk(0, "这一觉睡的好香，不知道江湖上发生了什么事情，去看看。", "", 1);
do return end;
::label2::
	AllLeave();
	Talk(0, "这一觉睡的好香，兄弟们都去哪里了？不知道江湖上发生了什么事情，去看看。", "", 1);
do return end;