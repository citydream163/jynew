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
local lv1 = 1;
local lv2 = math.random(1, 2);
local lv3 = math.random(2, 5);
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
AddHp(92, (7+math.random (0, 3))*3*lv1);
AddHp(93, (7+math.random (0, 3))*3*lv1);
AddHp(94, (7+math.random (0, 3))*3*lv1);
AddHp(95, (7+math.random (0, 3))*3*lv1);
AddHp(96, (7+math.random (0, 3))*3*lv1);
AddHp(97, (7+math.random (0, 3))*3*lv1);
AddHp(98, (7+math.random (0, 3))*3*lv1);
AddHp(99, (7+math.random (0, 3))*3*lv1);
AddHp(100, (7+math.random (0, 3))*3*lv1);
--神龙教徒升级
AddHp(101, (3+math.random (0, 3))*3*lv1);
AddHp(102, (4+math.random (0, 3))*3*lv1);
AddHp(103, (6+math.random (0, 3))*3*lv1);
AddHp(104, (7+math.random (0, 3))*3*lv1);
AddHp(105, (6+math.random (0, 3))*3*lv1);
AddHp(106, (5+math.random (0, 3))*3*lv1);
AddHp(107, (6+math.random (0, 3))*3*lv1);
AddHp(108, (7+math.random (0, 3))*3*lv1);
AddHp(109, (6+math.random (0, 3))*3*lv1);
AddHp(110, (8+math.random (0, 3))*3*lv1);
--武当弟子升级
AddHp(131, (7+math.random (0, 3))*3*lv1);
AddHp(132, (7+math.random (0, 3))*3*lv1);
AddHp(133, (7+math.random (0, 3))*3*lv1);
AddHp(134, (7+math.random (0, 3))*3*lv1);
AddHp(135, (7+math.random (0, 3))*3*lv1);
AddHp(136, (7+math.random (0, 3))*3*lv1);
AddHp(137, (7+math.random (0, 3))*3*lv1);
AddHp(138, (7+math.random (0, 3))*3*lv1);
AddHp(139, (7+math.random (0, 3))*3*lv1);
AddHp(140, (7+math.random (0, 3))*3*lv1);
--华山弟子升级
AddHp(161, (5+math.random (0, 3))*3*lv1);
AddHp(162, (5+math.random (0, 3))*3*lv1);
AddHp(163, (5+math.random (0, 3))*3*lv1);
AddHp(164, (5+math.random (0, 3))*3*lv1);
AddHp(165, (5+math.random (0, 3))*3*lv1);
AddHp(166, (5+math.random (0, 3))*3*lv1);
AddHp(167, (5+math.random (0, 3))*3*lv1);
AddHp(168, (5+math.random (0, 3))*3*lv1);
AddHp(169, (5+math.random (0, 3))*3*lv1);
AddHp(170, (5+math.random (0, 3))*3*lv1);
--衡山弟子升级
AddHp(171, (3+math.random (0, 3))*3*lv1);
AddHp(172, (3+math.random (0, 3))*3*lv1);
AddHp(173, (4+math.random (0, 3))*3*lv1);
AddHp(174, (4+math.random (0, 3))*3*lv1);
AddHp(175, (4+math.random (0, 3))*3*lv1);
AddHp(176, (5+math.random (0, 3))*3*lv1);
AddHp(177, (5+math.random (0, 3))*3*lv1);
AddHp(178, (5+math.random (0, 3))*3*lv1);
AddHp(179, (5+math.random (0, 3))*3*lv1);
AddHp(180, (5+math.random (0, 3))*3*lv1);
--嵩山弟子升级
AddHp(191, (7+math.random (0, 3))*3*lv1);
AddHp(192, (7+math.random (0, 3))*3*lv1);
AddHp(193, (7+math.random (0, 3))*3*lv1);
AddHp(194, (7+math.random (0, 3))*3*lv1);
AddHp(195, (7+math.random (0, 3))*3*lv1);
AddHp(196, (7+math.random (0, 3))*3*lv1);
AddHp(197, (7+math.random (0, 3))*3*lv1);
AddHp(198, (7+math.random (0, 3))*3*lv1);
AddHp(199, (8+math.random (0, 3))*3*lv1);
AddHp(200, (8+math.random (0, 3))*3*lv1);
--五毒教徒升级
AddHp(221, (4+math.random (0, 3))*3*lv1);
AddHp(222, (4+math.random (0, 3))*3*lv1);
AddHp(223, (4+math.random (0, 3))*3*lv1);
AddHp(224, (4+math.random (0, 3))*3*lv1);
AddHp(225, (4+math.random (0, 3))*3*lv1);
AddHp(226, (4+math.random (0, 3))*3*lv1);
AddHp(227, (4+math.random (0, 3))*3*lv1);
AddHp(228, (4+math.random (0, 3))*3*lv1);
AddHp(229, (4+math.random (0, 3))*3*lv1);
AddHp(230, (4+math.random (0, 3))*3*lv1);
--番僧升级
AddHp(251, (7+math.random (0, 3))*3*lv1);
AddHp(252, (7+math.random (0, 3))*3*lv1);
AddHp(253, (7+math.random (0, 3))*3*lv1);
AddHp(254, (7+math.random (0, 3))*3*lv1);
AddHp(255, (7+math.random (0, 3))*3*lv1);
AddHp(256, (7+math.random (0, 3))*3*lv1);
AddHp(257, (7+math.random (0, 3))*3*lv1);
AddHp(258, (7+math.random (0, 3))*3*lv1);
AddHp(259, (7+math.random (0, 3))*3*lv1);
AddHp(260, (7+math.random (0, 3))*3*lv1);
--星宿门人升级
AddHp(261, (5+math.random (0, 3))*3*lv1);
AddHp(262, (5+math.random (0, 3))*3*lv1);
AddHp(263, (5+math.random (0, 3))*3*lv1);
AddHp(264, (5+math.random (0, 3))*3*lv1);
AddHp(265, (5+math.random (0, 3))*3*lv1);
AddHp(266, (5+math.random (0, 3))*3*lv1);
AddHp(267, (5+math.random (0, 3))*3*lv1);
AddHp(268, (5+math.random (0, 3))*3*lv1);
AddHp(269, (5+math.random (0, 3))*3*lv1);
AddHp(270, (5+math.random (0, 3))*3*lv1);
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
AddHp(282, (5+math.random (0, 3))*3*lv1);
AddHp(283, (5+math.random (0, 3))*3*lv1);
AddHp(284, (5+math.random (0, 3))*3*lv1);
AddHp(285, (5+math.random (0, 3))*3*lv1);
AddHp(286, (6+math.random (0, 3))*3*lv1);
AddHp(287, (7+math.random (0, 3))*3*lv1);
AddHp(288, (7+math.random (0, 3))*3*lv1);
AddHp(289, (7+math.random (0, 3))*3*lv1);
AddHp(290, (7+math.random (0, 3))*3*lv1);
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
AddHp(302, (7+math.random (0, 3))*3*lv1);
AddHp(303, (7+math.random (0, 3))*3*lv1);
AddHp(304, (7+math.random (0, 3))*3*lv1);
AddHp(305, (7+math.random (0, 3))*3*lv1);
AddHp(306, (7+math.random (0, 3))*3*lv1);
AddHp(307, (7+math.random (0, 3))*3*lv1);
AddHp(308, (7+math.random (0, 3))*3*lv1);
AddHp(309, (7+math.random (0, 3))*3*lv1);
AddHp(310, (7+math.random (0, 3))*3*lv1);
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
--木岛主升级
AddHp(40, (9+math.random (0, 3))*3*lv2);
AddMp(40, math.random (4, 8)*4*lv2);
--张三升级
AddHp(41, (7+math.random (0, 3))*3*lv2);
AddMp(41, math.random (4, 8)*4*lv2);
--李四升级
AddHp(42, (7+math.random (0, 3))*3*lv2);
AddMp(42, math.random (4, 8)*4*lv2);
--乔峰升级
AddHp(50, (5+math.random (0, 3))*3*lv2);
AddMp(50, math.random (3, 8)*4*lv2);
--苏星河升级
AddHp(52, (6+math.random (0, 3))*3*lv2);
AddMp(52, math.random (4, 8)*4*lv2);
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
--北丑升级
AddHp(74, (5+math.random (0, 3))*3*lv2);
AddMp(74, math.random (4, 8)*4*lv2);
--林厨子升级
AddHp(75, (5+math.random (0, 3))*3*lv2);
AddMp(75, math.random (4, 8)*4*lv2);
--胡斐升级
AddHp(1, (4+math.random (0, 3))*3*lv3);
AddMp(1, math.random (4, 8)*4*lv3);
--程灵素升级
AddHp(2, (1+math.random (0, 3))*3*lv3);
AddMp(2, math.random (4, 8)*4*lv3);
--张无忌升级
AddHp(9, (4+math.random (0, 3))*3*lv3);
AddMp(9, math.random (4, 8)*4*lv3);
--胡青牛升级
AddHp(16, (4+math.random (0, 3))*3*lv3);
AddMp(16, math.random (4, 8)*4*lv3);
--王难姑升级
AddHp(16, (4+math.random (0, 3))*3*lv3);
AddMp(16, math.random (4, 8)*4*lv3);
--蓝凤凰升级
AddHp(25, (7+math.random (0, 3))*3*lv3);
AddMp(25, math.random (4, 8)*4*lv3);
--平一指升级
AddHp(28, (5+math.random (0, 3))*3*lv3);
AddMp(28, math.random (4, 8)*4*lv3);
--田伯光升级
AddHp(29, (8+math.random (0, 3))*3*lv3);
AddMp(29, math.random (4, 8)*4*lv3);
--令狐冲升级
AddHp(35, (4+math.random (0, 3))*3*lv3);
AddMp(35, math.random (4, 8)*4*lv3);
--林平之升级
AddHp(36, (8+math.random (0, 3))*3*lv3);
AddMp(36, math.random (4, 8)*4*lv3);
--狄云升级
AddHp(37, (3+math.random (0, 3))*3*lv3);
AddMp(37, math.random (4, 8)*4*lv3);
--石破天升级
AddHp(38, (4+math.random (0, 3))*3*lv3);
AddMp(38, math.random (4, 8)*4*lv3);
--岳老三升级
AddHp(44, (9+math.random (0, 3))*3*lv3);
AddMp(44, math.random (4, 8)*4*lv3);
--薛慕华升级
AddHp(45, (5+math.random (0, 3))*3*lv3);
AddMp(45, math.random (4, 8)*4*lv3);
--阿紫升级
AddHp(47, (7+math.random (0, 3))*3*lv3);
AddMp(47, math.random (4, 8)*4*lv3);
--游坦之升级
AddHp(48, (9+math.random (0, 3))*3*lv3);
AddMp(48, math.random (4, 8)*4*lv3);
--虚竹升级
AddHp(49, (3+math.random (0, 3))*3*lv3);
AddMp(49, math.random (4, 8)*4*lv3);
--慕容复升级
AddHp(51, (8+math.random (0, 3))*3*lv3);
AddMp(51, math.random (4, 8)*4*lv3);
--段誉升级
AddHp(53, (6+math.random (0, 3))*3*lv3);
AddMp(53, math.random (4, 8)*4*lv3);
--袁承志升级
AddHp(54, (3+math.random (0, 3))*3*lv3);
AddMp(54, math.random (4, 8)*4*lv3);
--杨过升级
AddHp(58, (5+math.random (0, 3))*3*lv3);
AddMp(58, math.random (4, 8)*4*lv3);
--小龙女升级
AddHp(59, (6+math.random (0, 3))*3*lv3);
AddMp(59, math.random (4, 8)*4*lv3);
--欧阳克升级
AddHp(61, (8+math.random (0, 3))*3*lv3);
AddMp(61, math.random (4, 8)*4*lv3);
--程英升级
AddHp(63, (3+math.random (0, 3))*3*lv3);
AddMp(63, math.random (4, 8)*4*lv3);
--王语嫣升级
AddHp(76, (3+math.random (0, 3))*3*lv3);
AddMp(76, math.random (4, 8)*4*lv3);
--升级结束
Rest();
SetRoleFace(1);
jyx2_Wait(1.5);
LightScence();
Talk(0, "这一觉好长啊。", "", 1);
do return end;
