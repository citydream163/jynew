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
AllLeave();
jyx2_ReplaceSceneObject("25","NPC/华山弟子","1");
jyx2_ReplaceSceneObject("25","NPC/各派弟子","1");
jyx2_ReplaceSceneObject("25","NPC/昔日队友","1");
jyx2_ReplaceSceneObject("25","NPC/battleNPC","1");
jyx2_ReplaceSceneObject("25","NPC/battleNPC/灭绝","");
ModifyEvent(-2, -2, 0, 0, 931, -1, -1, -1, -1, -1, -2, -2, -2);--清空本事件，恢复休息
ModifyEvent(25, 24, 0, 0, -1, -1, 2202, -1, -1, -1, -2, -2, -2);--激活25场景24触发器的2202武道大会事件
--升级开始
math.randomseed(tostring(os.time()):reverse():sub(1, 7));
local lv1 = 1;
local lv2 = math.random(1, 2);
local lv3 = math.random(2, 5);
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
AddHpWithoutHint(92, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(93, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(94, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(95, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(96, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(97, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(98, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(99, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(100, (7+math.random (0, 3))*3*lv1);
--神龙教徒升级
AddHpWithoutHint(101, (3+math.random (0, 3))*3*lv1);
AddHpWithoutHint(102, (4+math.random (0, 3))*3*lv1);
AddHpWithoutHint(103, (6+math.random (0, 3))*3*lv1);
AddHpWithoutHint(104, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(105, (6+math.random (0, 3))*3*lv1);
AddHpWithoutHint(106, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(107, (6+math.random (0, 3))*3*lv1);
AddHpWithoutHint(108, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(109, (6+math.random (0, 3))*3*lv1);
AddHpWithoutHint(110, (8+math.random (0, 3))*3*lv1);
--武当弟子升级
AddHpWithoutHint(131, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(132, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(133, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(134, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(135, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(136, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(137, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(138, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(139, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(140, (7+math.random (0, 3))*3*lv1);
--华山弟子升级
AddHpWithoutHint(161, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(162, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(163, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(164, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(165, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(166, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(167, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(168, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(169, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(170, (5+math.random (0, 3))*3*lv1);
--衡山弟子升级
AddHpWithoutHint(171, (3+math.random (0, 3))*3*lv1);
AddHpWithoutHint(172, (3+math.random (0, 3))*3*lv1);
AddHpWithoutHint(173, (4+math.random (0, 3))*3*lv1);
AddHpWithoutHint(174, (4+math.random (0, 3))*3*lv1);
AddHpWithoutHint(175, (4+math.random (0, 3))*3*lv1);
AddHpWithoutHint(176, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(177, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(178, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(179, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(180, (5+math.random (0, 3))*3*lv1);
--嵩山弟子升级
AddHpWithoutHint(191, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(192, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(193, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(194, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(195, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(196, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(197, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(198, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(199, (8+math.random (0, 3))*3*lv1);
AddHpWithoutHint(200, (8+math.random (0, 3))*3*lv1);
--五毒教徒升级
AddHpWithoutHint(221, (4+math.random (0, 3))*3*lv1);
AddHpWithoutHint(222, (4+math.random (0, 3))*3*lv1);
AddHpWithoutHint(223, (4+math.random (0, 3))*3*lv1);
AddHpWithoutHint(224, (4+math.random (0, 3))*3*lv1);
AddHpWithoutHint(225, (4+math.random (0, 3))*3*lv1);
AddHpWithoutHint(226, (4+math.random (0, 3))*3*lv1);
AddHpWithoutHint(227, (4+math.random (0, 3))*3*lv1);
AddHpWithoutHint(228, (4+math.random (0, 3))*3*lv1);
AddHpWithoutHint(229, (4+math.random (0, 3))*3*lv1);
AddHpWithoutHint(230, (4+math.random (0, 3))*3*lv1);
--番僧升级
AddHpWithoutHint(251, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(252, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(253, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(254, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(255, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(256, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(257, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(258, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(259, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(260, (7+math.random (0, 3))*3*lv1);
--星宿门人升级
AddHpWithoutHint(261, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(262, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(263, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(264, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(265, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(266, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(267, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(268, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(269, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(270, (5+math.random (0, 3))*3*lv1);
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
AddHpWithoutHint(282, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(283, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(284, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(285, (5+math.random (0, 3))*3*lv1);
AddHpWithoutHint(286, (6+math.random (0, 3))*3*lv1);
AddHpWithoutHint(287, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(288, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(289, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(290, (7+math.random (0, 3))*3*lv1);
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
AddHpWithoutHint(302, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(303, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(304, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(305, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(306, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(307, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(308, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(309, (7+math.random (0, 3))*3*lv1);
AddHpWithoutHint(310, (7+math.random (0, 3))*3*lv1);
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
--木岛主升级
AddHpWithoutHint(40, (9+math.random (0, 3))*3*lv2);
AddMpWithoutHint(40, math.random (4, 8)*4*lv2);
--张三升级
AddHpWithoutHint(41, (7+math.random (0, 3))*3*lv2);
AddMpWithoutHint(41, math.random (4, 8)*4*lv2);
--李四升级
AddHpWithoutHint(42, (7+math.random (0, 3))*3*lv2);
AddMpWithoutHint(42, math.random (4, 8)*4*lv2);
--乔峰升级
AddHpWithoutHint(50, (5+math.random (0, 3))*3*lv2);
AddMpWithoutHint(50, math.random (3, 8)*4*lv2);
--苏星河升级
AddHpWithoutHint(52, (6+math.random (0, 3))*3*lv2);
AddMpWithoutHint(52, math.random (4, 8)*4*lv2);
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
--北丑升级
AddHpWithoutHint(74, (5+math.random (0, 3))*3*lv2);
AddMpWithoutHint(74, math.random (4, 8)*4*lv2);
--林厨子升级
AddHpWithoutHint(75, (5+math.random (0, 3))*3*lv2);
AddMpWithoutHint(75, math.random (4, 8)*4*lv2);
--胡斐升级
AddHpWithoutHint(1, (4+math.random (0, 3))*3*lv3);
AddMpWithoutHint(1, math.random (4, 8)*4*lv3);
--程灵素升级
AddHpWithoutHint(2, (1+math.random (0, 3))*3*lv3);
AddMpWithoutHint(2, math.random (4, 8)*4*lv3);
--张无忌升级
AddHpWithoutHint(9, (4+math.random (0, 3))*3*lv3);
AddMpWithoutHint(9, math.random (4, 8)*4*lv3);
--胡青牛升级
AddHpWithoutHint(16, (4+math.random (0, 3))*3*lv3);
AddMpWithoutHint(16, math.random (4, 8)*4*lv3);
--王难姑升级
AddHpWithoutHint(16, (4+math.random (0, 3))*3*lv3);
AddMpWithoutHint(16, math.random (4, 8)*4*lv3);
--蓝凤凰升级
AddHpWithoutHint(25, (7+math.random (0, 3))*3*lv3);
AddMpWithoutHint(25, math.random (4, 8)*4*lv3);
--平一指升级
AddHpWithoutHint(28, (5+math.random (0, 3))*3*lv3);
AddMpWithoutHint(28, math.random (4, 8)*4*lv3);
--田伯光升级
AddHpWithoutHint(29, (8+math.random (0, 3))*3*lv3);
AddMpWithoutHint(29, math.random (4, 8)*4*lv3);
--令狐冲升级
AddHpWithoutHint(35, (4+math.random (0, 3))*3*lv3);
AddMpWithoutHint(35, math.random (4, 8)*4*lv3);
--林平之升级
AddHpWithoutHint(36, (8+math.random (0, 3))*3*lv3);
AddMpWithoutHint(36, math.random (4, 8)*4*lv3);
--狄云升级
AddHpWithoutHint(37, (3+math.random (0, 3))*3*lv3);
AddMpWithoutHint(37, math.random (4, 8)*4*lv3);
--石破天升级
AddHpWithoutHint(38, (4+math.random (0, 3))*3*lv3);
AddMpWithoutHint(38, math.random (4, 8)*4*lv3);
--岳老三升级
AddHpWithoutHint(44, (9+math.random (0, 3))*3*lv3);
AddMpWithoutHint(44, math.random (4, 8)*4*lv3);
--薛慕华升级
AddHpWithoutHint(45, (5+math.random (0, 3))*3*lv3);
AddMpWithoutHint(45, math.random (4, 8)*4*lv3);
--阿紫升级
AddHpWithoutHint(47, (7+math.random (0, 3))*3*lv3);
AddMpWithoutHint(47, math.random (4, 8)*4*lv3);
--游坦之升级
AddHpWithoutHint(48, (9+math.random (0, 3))*3*lv3);
AddMpWithoutHint(48, math.random (4, 8)*4*lv3);
--虚竹升级
AddHpWithoutHint(49, (3+math.random (0, 3))*3*lv3);
AddMpWithoutHint(49, math.random (4, 8)*4*lv3);
--慕容复升级
AddHpWithoutHint(51, (8+math.random (0, 3))*3*lv3);
AddMpWithoutHint(51, math.random (4, 8)*4*lv3);
--段誉升级
AddHpWithoutHint(53, (6+math.random (0, 3))*3*lv3);
AddMpWithoutHint(53, math.random (4, 8)*4*lv3);
--袁承志升级
AddHpWithoutHint(54, (3+math.random (0, 3))*3*lv3);
AddMpWithoutHint(54, math.random (4, 8)*4*lv3);
--杨过升级
AddHpWithoutHint(58, (5+math.random (0, 3))*3*lv3);
AddMpWithoutHint(58, math.random (4, 8)*4*lv3);
--小龙女升级
AddHpWithoutHint(59, (6+math.random (0, 3))*3*lv3);
AddMpWithoutHint(59, math.random (4, 8)*4*lv3);
--欧阳克升级
AddHpWithoutHint(61, (8+math.random (0, 3))*3*lv3);
AddMpWithoutHint(61, math.random (4, 8)*4*lv3);
--程英升级
AddHpWithoutHint(63, (3+math.random (0, 3))*3*lv3);
AddMpWithoutHint(63, math.random (4, 8)*4*lv3);
--王语嫣升级
AddHpWithoutHint(76, (3+math.random (0, 3))*3*lv3);
AddMpWithoutHint(76, math.random (4, 8)*4*lv3);
--升级结束
Rest();
SetRoleFace(1);
jyx2_Wait(2);
LightScence();
Talk(0, "这一觉好长啊。", "", 1);
do return end;
