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
local lv0 = 0;
if (difficulty == nil or difficulty == 0) then
	lv0 = 0;
elseif (difficulty == 1) then
	lv0 = 1;
elseif (difficulty == 2) then
	lv0 = 2;
end;
local lv1 = 1 + lv0;
local lv2 = math.random(1, 2) + lv0;
local lv3 = math.random(2, 5) + lv0;
--少林弟子升级
a=AddLevelreturnUper(81,lv1); if  a > 0 then AddHpWithoutHint(81, (6+math.random (0, 3))*3*a);AddMpWithoutHint(81, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(82,lv1); if  a > 0 then AddHpWithoutHint(82, (6+math.random (0, 3))*3*a);AddMpWithoutHint(82, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(83,lv1); if  a > 0 then AddHpWithoutHint(83, (6+math.random (0, 3))*3*a);AddMpWithoutHint(83, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(84,lv1); if  a > 0 then AddHpWithoutHint(84, (6+math.random (0, 3))*3*a);AddMpWithoutHint(84, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(85,lv1); if  a > 0 then AddHpWithoutHint(85, (6+math.random (0, 3))*3*a);AddMpWithoutHint(85, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(86,lv1); if  a > 0 then AddHpWithoutHint(86, (6+math.random (0, 3))*3*a);AddMpWithoutHint(86, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(87,lv1); if  a > 0 then AddHpWithoutHint(87, (6+math.random (0, 3))*3*a);AddMpWithoutHint(87, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(88,lv1); if  a > 0 then AddHpWithoutHint(88, (6+math.random (0, 3))*3*a);AddMpWithoutHint(88, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(89,lv1); if  a > 0 then AddHpWithoutHint(89, (6+math.random (0, 3))*3*a);AddMpWithoutHint(89, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(90,lv1); if  a > 0 then AddHpWithoutHint(90, (6+math.random (0, 3))*3*a);AddMpWithoutHint(90, math.random (4, 8)*4*a);end;
--昆仑弟子升级
a=AddLevelreturnUper(91,lv1); if  a > 0 then AddHpWithoutHint(91, (7+math.random (0, 3))*3*a);AddMpWithoutHint(91, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(92,lv1); if  a > 0 then AddHpWithoutHint(92, (7+math.random (0, 3))*3*a);AddMpWithoutHint(92, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(93,lv1); if  a > 0 then AddHpWithoutHint(93, (7+math.random (0, 3))*3*a);AddMpWithoutHint(93, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(94,lv1); if  a > 0 then AddHpWithoutHint(94, (7+math.random (0, 3))*3*a);AddMpWithoutHint(94, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(95,lv1); if  a > 0 then AddHpWithoutHint(95, (7+math.random (0, 3))*3*a);AddMpWithoutHint(95, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(96,lv1); if  a > 0 then AddHpWithoutHint(96, (7+math.random (0, 3))*3*a);AddMpWithoutHint(96, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(97,lv1); if  a > 0 then AddHpWithoutHint(97, (7+math.random (0, 3))*3*a);AddMpWithoutHint(97, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(98,lv1); if  a > 0 then AddHpWithoutHint(98, (7+math.random (0, 3))*3*a);AddMpWithoutHint(98, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(99,lv1); if  a > 0 then AddHpWithoutHint(99, (7+math.random (0, 3))*3*a);AddMpWithoutHint(99, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(100,lv1); if  a > 0 then AddHpWithoutHint(100, (7+math.random (0, 3))*3*a);AddMpWithoutHint(100, math.random (4, 8)*4*a);end;
--神龙教徒升级
a=AddLevelreturnUper(101,lv1); if  a > 0 then AddHpWithoutHint(101, (3+math.random (0, 3))*3*a);AddMpWithoutHint(101, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(102,lv1); if  a > 0 then AddHpWithoutHint(102, (4+math.random (0, 3))*3*a);AddMpWithoutHint(102, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(103,lv1); if  a > 0 then AddHpWithoutHint(103, (6+math.random (0, 3))*3*a);AddMpWithoutHint(103, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(104,lv1); if  a > 0 then AddHpWithoutHint(104, (7+math.random (0, 3))*3*a);AddMpWithoutHint(104, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(105,lv1); if  a > 0 then AddHpWithoutHint(105, (6+math.random (0, 3))*3*a);AddMpWithoutHint(105, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(106,lv1); if  a > 0 then AddHpWithoutHint(106, (5+math.random (0, 3))*3*a);AddMpWithoutHint(106, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(107,lv1); if  a > 0 then AddHpWithoutHint(107, (6+math.random (0, 3))*3*a);AddMpWithoutHint(107, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(108,lv1); if  a > 0 then AddHpWithoutHint(108, (7+math.random (0, 3))*3*a);AddMpWithoutHint(108, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(109,lv1); if  a > 0 then AddHpWithoutHint(109, (6+math.random (0, 3))*3*a);AddMpWithoutHint(109, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(110,lv1); if  a > 0 then AddHpWithoutHint(110, (8+math.random (0, 3))*3*a);AddMpWithoutHint(110, math.random (4, 8)*4*a);end;
--武当弟子升级
a=AddLevelreturnUper(131,lv1); if  a > 0 then AddHpWithoutHint(131, (7+math.random (0, 3))*3*a);AddMpWithoutHint(131, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(132,lv1); if  a > 0 then AddHpWithoutHint(132, (7+math.random (0, 3))*3*a);AddMpWithoutHint(132, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(133,lv1); if  a > 0 then AddHpWithoutHint(133, (7+math.random (0, 3))*3*a);AddMpWithoutHint(133, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(134,lv1); if  a > 0 then AddHpWithoutHint(134, (7+math.random (0, 3))*3*a);AddMpWithoutHint(134, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(135,lv1); if  a > 0 then AddHpWithoutHint(135, (7+math.random (0, 3))*3*a);AddMpWithoutHint(135, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(136,lv1); if  a > 0 then AddHpWithoutHint(136, (7+math.random (0, 3))*3*a);AddMpWithoutHint(136, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(137,lv1); if  a > 0 then AddHpWithoutHint(137, (7+math.random (0, 3))*3*a);AddMpWithoutHint(137, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(138,lv1); if  a > 0 then AddHpWithoutHint(138, (7+math.random (0, 3))*3*a);AddMpWithoutHint(138, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(139,lv1); if  a > 0 then AddHpWithoutHint(139, (7+math.random (0, 3))*3*a);AddMpWithoutHint(139, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(140,lv1); if  a > 0 then AddHpWithoutHint(140, (7+math.random (0, 3))*3*a);AddMpWithoutHint(140, math.random (4, 8)*4*a);end;
--峨嵋弟子升级
a=AddLevelreturnUper(141,lv1); if  a > 0 then AddHpWithoutHint(141, (6+math.random (0, 3))*3*a);AddMpWithoutHint(141, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(142,lv1); if  a > 0 then AddHpWithoutHint(142, (6+math.random (0, 3))*3*a);AddMpWithoutHint(142, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(143,lv1); if  a > 0 then AddHpWithoutHint(143, (6+math.random (0, 3))*3*a);AddMpWithoutHint(143, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(144,lv1); if  a > 0 then AddHpWithoutHint(144, (6+math.random (0, 3))*3*a);AddMpWithoutHint(144, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(145,lv1); if  a > 0 then AddHpWithoutHint(145, (6+math.random (0, 3))*3*a);AddMpWithoutHint(145, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(146,lv1); if  a > 0 then AddHpWithoutHint(146, (6+math.random (0, 3))*3*a);AddMpWithoutHint(146, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(147,lv1); if  a > 0 then AddHpWithoutHint(147, (6+math.random (0, 3))*3*a);AddMpWithoutHint(147, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(148,lv1); if  a > 0 then AddHpWithoutHint(148, (6+math.random (0, 3))*3*a);AddMpWithoutHint(148, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(149,lv1); if  a > 0 then AddHpWithoutHint(149, (6+math.random (0, 3))*3*a);AddMpWithoutHint(149, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(150,lv1); if  a > 0 then AddHpWithoutHint(150, (6+math.random (0, 3))*3*a);AddMpWithoutHint(150, math.random (4, 8)*4*a);end;
--崆峒弟子升级
a=AddLevelreturnUper(151,lv1); if  a > 0 then AddHpWithoutHint(151, (7+math.random (0, 3))*3*a);AddMpWithoutHint(151, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(152,lv1); if  a > 0 then AddHpWithoutHint(152, (7+math.random (0, 3))*3*a);AddMpWithoutHint(152, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(153,lv1); if  a > 0 then AddHpWithoutHint(153, (7+math.random (0, 3))*3*a);AddMpWithoutHint(153, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(154,lv1); if  a > 0 then AddHpWithoutHint(154, (7+math.random (0, 3))*3*a);AddMpWithoutHint(154, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(155,lv1); if  a > 0 then AddHpWithoutHint(155, (7+math.random (0, 3))*3*a);AddMpWithoutHint(155, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(156,lv1); if  a > 0 then AddHpWithoutHint(156, (7+math.random (0, 3))*3*a);AddMpWithoutHint(156, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(157,lv1); if  a > 0 then AddHpWithoutHint(157, (7+math.random (0, 3))*3*a);AddMpWithoutHint(157, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(158,lv1); if  a > 0 then AddHpWithoutHint(158, (7+math.random (0, 3))*3*a);AddMpWithoutHint(158, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(159,lv1); if  a > 0 then AddHpWithoutHint(159, (7+math.random (0, 3))*3*a);AddMpWithoutHint(159, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(160,lv1); if  a > 0 then AddHpWithoutHint(160, (7+math.random (0, 3))*3*a);AddMpWithoutHint(160, math.random (4, 8)*4*a);end;
--华山弟子升级
a=AddLevelreturnUper(161,lv1); if  a > 0 then AddHpWithoutHint(161, (5+math.random (0, 3))*3*a);AddMpWithoutHint(161, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(162,lv1); if  a > 0 then AddHpWithoutHint(162, (5+math.random (0, 3))*3*a);AddMpWithoutHint(162, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(163,lv1); if  a > 0 then AddHpWithoutHint(163, (5+math.random (0, 3))*3*a);AddMpWithoutHint(163, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(164,lv1); if  a > 0 then AddHpWithoutHint(164, (5+math.random (0, 3))*3*a);AddMpWithoutHint(164, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(165,lv1); if  a > 0 then AddHpWithoutHint(165, (5+math.random (0, 3))*3*a);AddMpWithoutHint(165, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(166,lv1); if  a > 0 then AddHpWithoutHint(166, (5+math.random (0, 3))*3*a);AddMpWithoutHint(166, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(167,lv1); if  a > 0 then AddHpWithoutHint(167, (5+math.random (0, 3))*3*a);AddMpWithoutHint(167, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(168,lv1); if  a > 0 then AddHpWithoutHint(168, (5+math.random (0, 3))*3*a);AddMpWithoutHint(168, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(169,lv1); if  a > 0 then AddHpWithoutHint(169, (5+math.random (0, 3))*3*a);AddMpWithoutHint(169, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(170,lv1); if  a > 0 then AddHpWithoutHint(170, (5+math.random (0, 3))*3*a);AddMpWithoutHint(170, math.random (4, 8)*4*a);end;
--衡山弟子升级
a=AddLevelreturnUper(171,lv1); if  a > 0 then AddHpWithoutHint(171, (3+math.random (0, 3))*3*a);AddMpWithoutHint(171, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(172,lv1); if  a > 0 then AddHpWithoutHint(172, (3+math.random (0, 3))*3*a);AddMpWithoutHint(172, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(173,lv1); if  a > 0 then AddHpWithoutHint(173, (4+math.random (0, 3))*3*a);AddMpWithoutHint(173, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(174,lv1); if  a > 0 then AddHpWithoutHint(174, (4+math.random (0, 3))*3*a);AddMpWithoutHint(174, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(175,lv1); if  a > 0 then AddHpWithoutHint(175, (4+math.random (0, 3))*3*a);AddMpWithoutHint(175, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(176,lv1); if  a > 0 then AddHpWithoutHint(176, (5+math.random (0, 3))*3*a);AddMpWithoutHint(176, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(177,lv1); if  a > 0 then AddHpWithoutHint(177, (5+math.random (0, 3))*3*a);AddMpWithoutHint(177, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(178,lv1); if  a > 0 then AddHpWithoutHint(178, (5+math.random (0, 3))*3*a);AddMpWithoutHint(178, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(179,lv1); if  a > 0 then AddHpWithoutHint(179, (5+math.random (0, 3))*3*a);AddMpWithoutHint(179, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(180,lv1); if  a > 0 then AddHpWithoutHint(180, (5+math.random (0, 3))*3*a);AddMpWithoutHint(180, math.random (4, 8)*4*a);end;
--恒山弟子升级
a=AddLevelreturnUper(181,lv1); if  a > 0 then AddHpWithoutHint(181, (5+math.random (0, 3))*3*a);AddMpWithoutHint(181, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(182,lv1); if  a > 0 then AddHpWithoutHint(182, (5+math.random (0, 3))*3*a);AddMpWithoutHint(182, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(183,lv1); if  a > 0 then AddHpWithoutHint(183, (5+math.random (0, 3))*3*a);AddMpWithoutHint(183, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(184,lv1); if  a > 0 then AddHpWithoutHint(184, (5+math.random (0, 3))*3*a);AddMpWithoutHint(184, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(185,lv1); if  a > 0 then AddHpWithoutHint(185, (5+math.random (0, 3))*3*a);AddMpWithoutHint(185, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(186,lv1); if  a > 0 then AddHpWithoutHint(186, (5+math.random (0, 3))*3*a);AddMpWithoutHint(186, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(187,lv1); if  a > 0 then AddHpWithoutHint(187, (5+math.random (0, 3))*3*a);AddMpWithoutHint(187, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(188,lv1); if  a > 0 then AddHpWithoutHint(188, (5+math.random (0, 3))*3*a);AddMpWithoutHint(188, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(189,lv1); if  a > 0 then AddHpWithoutHint(189, (5+math.random (0, 3))*3*a);AddMpWithoutHint(189, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(190,lv1); if  a > 0 then AddHpWithoutHint(190, (5+math.random (0, 3))*3*a);AddMpWithoutHint(190, math.random (4, 8)*4*a);end;
--嵩山弟子升级
a=AddLevelreturnUper(191,lv1); if  a > 0 then AddHpWithoutHint(191, (7+math.random (0, 3))*3*a);AddMpWithoutHint(191, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(192,lv1); if  a > 0 then AddHpWithoutHint(192, (7+math.random (0, 3))*3*a);AddMpWithoutHint(192, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(193,lv1); if  a > 0 then AddHpWithoutHint(193, (7+math.random (0, 3))*3*a);AddMpWithoutHint(193, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(194,lv1); if  a > 0 then AddHpWithoutHint(194, (7+math.random (0, 3))*3*a);AddMpWithoutHint(194, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(195,lv1); if  a > 0 then AddHpWithoutHint(195, (7+math.random (0, 3))*3*a);AddMpWithoutHint(195, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(196,lv1); if  a > 0 then AddHpWithoutHint(196, (7+math.random (0, 3))*3*a);AddMpWithoutHint(196, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(197,lv1); if  a > 0 then AddHpWithoutHint(197, (7+math.random (0, 3))*3*a);AddMpWithoutHint(197, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(198,lv1); if  a > 0 then AddHpWithoutHint(198, (7+math.random (0, 3))*3*a);AddMpWithoutHint(198, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(199,lv1); if  a > 0 then AddHpWithoutHint(199, (8+math.random (0, 3))*3*a);AddMpWithoutHint(199, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(200,lv1); if  a > 0 then AddHpWithoutHint(200, (8+math.random (0, 3))*3*a);AddMpWithoutHint(200, math.random (4, 8)*4*a);end;
--泰山弟子升级
a=AddLevelreturnUper(201,lv1); if  a > 0 then AddHpWithoutHint(201, (6+math.random (0, 3))*3*a);AddMpWithoutHint(201, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(202,lv1); if  a > 0 then AddHpWithoutHint(202, (6+math.random (0, 3))*3*a);AddMpWithoutHint(202, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(203,lv1); if  a > 0 then AddHpWithoutHint(203, (6+math.random (0, 3))*3*a);AddMpWithoutHint(203, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(204,lv1); if  a > 0 then AddHpWithoutHint(204, (6+math.random (0, 3))*3*a);AddMpWithoutHint(204, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(205,lv1); if  a > 0 then AddHpWithoutHint(205, (6+math.random (0, 3))*3*a);AddMpWithoutHint(205, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(206,lv1); if  a > 0 then AddHpWithoutHint(206, (6+math.random (0, 3))*3*a);AddMpWithoutHint(206, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(207,lv1); if  a > 0 then AddHpWithoutHint(207, (6+math.random (0, 3))*3*a);AddMpWithoutHint(207, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(208,lv1); if  a > 0 then AddHpWithoutHint(208, (6+math.random (0, 3))*3*a);AddMpWithoutHint(208, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(209,lv1); if  a > 0 then AddHpWithoutHint(209, (6+math.random (0, 3))*3*a);AddMpWithoutHint(209, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(210,lv1); if  a > 0 then AddHpWithoutHint(210, (6+math.random (0, 3))*3*a);AddMpWithoutHint(210, math.random (4, 8)*4*a);end;
--五毒教徒升级
a=AddLevelreturnUper(221,lv1); if  a > 0 then AddHpWithoutHint(221, (4+math.random (0, 3))*3*a);AddMpWithoutHint(221, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(222,lv1); if  a > 0 then AddHpWithoutHint(222, (4+math.random (0, 3))*3*a);AddMpWithoutHint(222, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(223,lv1); if  a > 0 then AddHpWithoutHint(223, (4+math.random (0, 3))*3*a);AddMpWithoutHint(223, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(224,lv1); if  a > 0 then AddHpWithoutHint(224, (4+math.random (0, 3))*3*a);AddMpWithoutHint(224, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(225,lv1); if  a > 0 then AddHpWithoutHint(225, (4+math.random (0, 3))*3*a);AddMpWithoutHint(225, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(226,lv1); if  a > 0 then AddHpWithoutHint(226, (4+math.random (0, 3))*3*a);AddMpWithoutHint(226, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(227,lv1); if  a > 0 then AddHpWithoutHint(227, (4+math.random (0, 3))*3*a);AddMpWithoutHint(227, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(228,lv1); if  a > 0 then AddHpWithoutHint(228, (4+math.random (0, 3))*3*a);AddMpWithoutHint(228, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(229,lv1); if  a > 0 then AddHpWithoutHint(229, (4+math.random (0, 3))*3*a);AddMpWithoutHint(229, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(230,lv1); if  a > 0 then AddHpWithoutHint(230, (4+math.random (0, 3))*3*a);AddMpWithoutHint(230, math.random (4, 8)*4*a);end;
--日月教徒升级
a=AddLevelreturnUper(231,lv1); if  a > 0 then AddHpWithoutHint(231, (8+math.random (0, 3))*3*a);AddMpWithoutHint(231, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(232,lv1); if  a > 0 then AddHpWithoutHint(232, (8+math.random (0, 3))*3*a);AddMpWithoutHint(232, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(233,lv1); if  a > 0 then AddHpWithoutHint(233, (8+math.random (0, 3))*3*a);AddMpWithoutHint(233, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(234,lv1); if  a > 0 then AddHpWithoutHint(234, (8+math.random (0, 3))*3*a);AddMpWithoutHint(234, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(235,lv1); if  a > 0 then AddHpWithoutHint(235, (8+math.random (0, 3))*3*a);AddMpWithoutHint(235, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(236,lv1); if  a > 0 then AddHpWithoutHint(236, (8+math.random (0, 3))*3*a);AddMpWithoutHint(236, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(237,lv1); if  a > 0 then AddHpWithoutHint(237, (8+math.random (0, 3))*3*a);AddMpWithoutHint(237, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(238,lv1); if  a > 0 then AddHpWithoutHint(238, (8+math.random (0, 3))*3*a);AddMpWithoutHint(238, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(239,lv1); if  a > 0 then AddHpWithoutHint(239, (8+math.random (0, 3))*3*a);AddMpWithoutHint(239, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(240,lv1); if  a > 0 then AddHpWithoutHint(240, (8+math.random (0, 3))*3*a);AddMpWithoutHint(240, math.random (4, 8)*4*a);end;
--雪山弟子升级
a=AddLevelreturnUper(241,lv1); if  a > 0 then AddHpWithoutHint(241, (2+math.random (0, 3))*3*a);AddMpWithoutHint(241, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(242,lv1); if  a > 0 then AddHpWithoutHint(242, (3+math.random (0, 3))*3*a);AddMpWithoutHint(242, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(243,lv1); if  a > 0 then AddHpWithoutHint(243, (3+math.random (0, 3))*3*a);AddMpWithoutHint(243, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(244,lv1); if  a > 0 then AddHpWithoutHint(244, (3+math.random (0, 3))*3*a);AddMpWithoutHint(244, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(245,lv1); if  a > 0 then AddHpWithoutHint(245, (4+math.random (0, 3))*3*a);AddMpWithoutHint(245, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(246,lv1); if  a > 0 then AddHpWithoutHint(246, (5+math.random (0, 3))*3*a);AddMpWithoutHint(246, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(247,lv1); if  a > 0 then AddHpWithoutHint(247, (5+math.random (0, 3))*3*a);AddMpWithoutHint(247, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(248,lv1); if  a > 0 then AddHpWithoutHint(248, (5+math.random (0, 3))*3*a);AddMpWithoutHint(248, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(249,lv1); if  a > 0 then AddHpWithoutHint(249, (5+math.random (0, 3))*3*a);AddMpWithoutHint(249, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(250,lv1); if  a > 0 then AddHpWithoutHint(250, (5+math.random (0, 3))*3*a);AddMpWithoutHint(250, math.random (4, 8)*4*a);end;
--番僧升级
a=AddLevelreturnUper(251,lv1); if  a > 0 then AddHpWithoutHint(251, (7+math.random (0, 3))*3*a);AddMpWithoutHint(251, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(252,lv1); if  a > 0 then AddHpWithoutHint(252, (7+math.random (0, 3))*3*a);AddMpWithoutHint(252, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(253,lv1); if  a > 0 then AddHpWithoutHint(253, (7+math.random (0, 3))*3*a);AddMpWithoutHint(253, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(254,lv1); if  a > 0 then AddHpWithoutHint(254, (7+math.random (0, 3))*3*a);AddMpWithoutHint(254, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(255,lv1); if  a > 0 then AddHpWithoutHint(255, (7+math.random (0, 3))*3*a);AddMpWithoutHint(255, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(256,lv1); if  a > 0 then AddHpWithoutHint(256, (7+math.random (0, 3))*3*a);AddMpWithoutHint(256, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(257,lv1); if  a > 0 then AddHpWithoutHint(257, (7+math.random (0, 3))*3*a);AddMpWithoutHint(257, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(258,lv1); if  a > 0 then AddHpWithoutHint(258, (7+math.random (0, 3))*3*a);AddMpWithoutHint(258, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(259,lv1); if  a > 0 then AddHpWithoutHint(259, (7+math.random (0, 3))*3*a);AddMpWithoutHint(259, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(260,lv1); if  a > 0 then AddHpWithoutHint(260, (7+math.random (0, 3))*3*a);AddMpWithoutHint(260, math.random (4, 8)*4*a);end;
--星宿门人升级
a=AddLevelreturnUper(261,lv1); if  a > 0 then AddHpWithoutHint(261, (5+math.random (0, 3))*3*a);AddMpWithoutHint(261, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(262,lv1); if  a > 0 then AddHpWithoutHint(262, (5+math.random (0, 3))*3*a);AddMpWithoutHint(262, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(263,lv1); if  a > 0 then AddHpWithoutHint(263, (5+math.random (0, 3))*3*a);AddMpWithoutHint(263, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(264,lv1); if  a > 0 then AddHpWithoutHint(264, (5+math.random (0, 3))*3*a);AddMpWithoutHint(264, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(265,lv1); if  a > 0 then AddHpWithoutHint(265, (5+math.random (0, 3))*3*a);AddMpWithoutHint(265, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(266,lv1); if  a > 0 then AddHpWithoutHint(266, (5+math.random (0, 3))*3*a);AddMpWithoutHint(266, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(267,lv1); if  a > 0 then AddHpWithoutHint(267, (5+math.random (0, 3))*3*a);AddMpWithoutHint(267, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(268,lv1); if  a > 0 then AddHpWithoutHint(268, (5+math.random (0, 3))*3*a);AddMpWithoutHint(268, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(269,lv1); if  a > 0 then AddHpWithoutHint(269, (5+math.random (0, 3))*3*a);AddMpWithoutHint(269, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(270,lv1); if  a > 0 then AddHpWithoutHint(270, (5+math.random (0, 3))*3*a);AddMpWithoutHint(270, math.random (4, 8)*4*a);end;
--丐帮弟子升级
a=AddLevelreturnUper(271,lv1); if  a > 0 then AddHpWithoutHint(271, (8+math.random (0, 3))*3*a);AddMpWithoutHint(271, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(272,lv1); if  a > 0 then AddHpWithoutHint(272, (8+math.random (0, 3))*3*a);AddMpWithoutHint(272, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(273,lv1); if  a > 0 then AddHpWithoutHint(273, (8+math.random (0, 3))*3*a);AddMpWithoutHint(273, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(274,lv1); if  a > 0 then AddHpWithoutHint(274, (8+math.random (0, 3))*3*a);AddMpWithoutHint(274, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(275,lv1); if  a > 0 then AddHpWithoutHint(275, (8+math.random (0, 3))*3*a);AddMpWithoutHint(275, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(276,lv1); if  a > 0 then AddHpWithoutHint(276, (8+math.random (0, 3))*3*a);AddMpWithoutHint(276, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(277,lv1); if  a > 0 then AddHpWithoutHint(277, (8+math.random (0, 3))*3*a);AddMpWithoutHint(277, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(278,lv1); if  a > 0 then AddHpWithoutHint(278, (8+math.random (0, 3))*3*a);AddMpWithoutHint(278, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(279,lv1); if  a > 0 then AddHpWithoutHint(279, (8+math.random (0, 3))*3*a);AddMpWithoutHint(279, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(280,lv1); if  a > 0 then AddHpWithoutHint(280, (8+math.random (0, 3))*3*a);AddMpWithoutHint(280, math.random (4, 8)*4*a);end;
--铁掌帮众升级
a=AddLevelreturnUper(281,lv1); if  a > 0 then AddHpWithoutHint(281, (5+math.random (0, 3))*3*a);AddMpWithoutHint(281, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(282,lv1); if  a > 0 then AddHpWithoutHint(282, (5+math.random (0, 3))*3*a);AddMpWithoutHint(282, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(283,lv1); if  a > 0 then AddHpWithoutHint(283, (5+math.random (0, 3))*3*a);AddMpWithoutHint(283, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(284,lv1); if  a > 0 then AddHpWithoutHint(284, (5+math.random (0, 3))*3*a);AddMpWithoutHint(284, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(285,lv1); if  a > 0 then AddHpWithoutHint(285, (5+math.random (0, 3))*3*a);AddMpWithoutHint(285, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(286,lv1); if  a > 0 then AddHpWithoutHint(286, (6+math.random (0, 3))*3*a);AddMpWithoutHint(286, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(287,lv1); if  a > 0 then AddHpWithoutHint(287, (7+math.random (0, 3))*3*a);AddMpWithoutHint(287, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(288,lv1); if  a > 0 then AddHpWithoutHint(288, (7+math.random (0, 3))*3*a);AddMpWithoutHint(288, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(289,lv1); if  a > 0 then AddHpWithoutHint(289, (7+math.random (0, 3))*3*a);AddMpWithoutHint(289, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(290,lv1); if  a > 0 then AddHpWithoutHint(290, (7+math.random (0, 3))*3*a);AddMpWithoutHint(290, math.random (4, 8)*4*a);end;
--全真教徒升级
a=AddLevelreturnUper(291,lv1); if  a > 0 then AddHpWithoutHint(291, (5+math.random (0, 3))*3*a);AddMpWithoutHint(291, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(292,lv1); if  a > 0 then AddHpWithoutHint(292, (5+math.random (0, 3))*3*a);AddMpWithoutHint(292, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(293,lv1); if  a > 0 then AddHpWithoutHint(293, (5+math.random (0, 3))*3*a);AddMpWithoutHint(293, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(294,lv1); if  a > 0 then AddHpWithoutHint(294, (5+math.random (0, 3))*3*a);AddMpWithoutHint(294, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(295,lv1); if  a > 0 then AddHpWithoutHint(295, (5+math.random (0, 3))*3*a);AddMpWithoutHint(295, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(296,lv1); if  a > 0 then AddHpWithoutHint(296, (5+math.random (0, 3))*3*a);AddMpWithoutHint(296, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(297,lv1); if  a > 0 then AddHpWithoutHint(297, (5+math.random (0, 3))*3*a);AddMpWithoutHint(297, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(298,lv1); if  a > 0 then AddHpWithoutHint(298, (5+math.random (0, 3))*3*a);AddMpWithoutHint(298, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(299,lv1); if  a > 0 then AddHpWithoutHint(299, (5+math.random (0, 3))*3*a);AddMpWithoutHint(299, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(300,lv1); if  a > 0 then AddHpWithoutHint(300, (5+math.random (0, 3))*3*a);AddMpWithoutHint(300, math.random (4, 8)*4*a);end;
--明教弟子升级
a=AddLevelreturnUper(301,lv1); if  a > 0 then AddHpWithoutHint(301, (7+math.random (0, 3))*3*a);AddMpWithoutHint(301, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(302,lv1); if  a > 0 then AddHpWithoutHint(302, (7+math.random (0, 3))*3*a);AddMpWithoutHint(302, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(303,lv1); if  a > 0 then AddHpWithoutHint(303, (7+math.random (0, 3))*3*a);AddMpWithoutHint(303, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(304,lv1); if  a > 0 then AddHpWithoutHint(304, (7+math.random (0, 3))*3*a);AddMpWithoutHint(304, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(305,lv1); if  a > 0 then AddHpWithoutHint(305, (7+math.random (0, 3))*3*a);AddMpWithoutHint(305, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(306,lv1); if  a > 0 then AddHpWithoutHint(306, (7+math.random (0, 3))*3*a);AddMpWithoutHint(306, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(307,lv1); if  a > 0 then AddHpWithoutHint(307, (7+math.random (0, 3))*3*a);AddMpWithoutHint(307, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(308,lv1); if  a > 0 then AddHpWithoutHint(308, (7+math.random (0, 3))*3*a);AddMpWithoutHint(308, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(309,lv1); if  a > 0 then AddHpWithoutHint(309, (7+math.random (0, 3))*3*a);AddMpWithoutHint(309, math.random (4, 8)*4*a);end;
a=AddLevelreturnUper(310,lv1); if  a > 0 then AddHpWithoutHint(310, (7+math.random (0, 3))*3*a);AddMpWithoutHint(310, math.random (4, 8)*4*a);end;
--苗人凤升级
a=AddLevelreturnUper(3,lv2); if  a > 0 then AddHpWithoutHint(3, (5+math.random (0, 3))*3*a);AddMpWithoutHint(3, math.random (4, 8)*4*a);end;
--张三丰升级
AddHpWithoutHint(5, (5+math.random (0, 3))*3*lv2);
AddMpWithoutHint(5, math.random (4, 8)*4*lv2);
--何太冲升级
a=AddLevelreturnUper(7,lv2); if  a > 0 then AddHpWithoutHint(7, (7+math.random (0, 3))*3*a);AddMpWithoutHint(7, math.random (4, 8)*4*a);end;--唐文亮升级
a=AddLevelreturnUper(8,lv2); if  a > 0 then AddHpWithoutHint(8, (6+math.random (0, 3))*3*a);AddMpWithoutHint(8, math.random (4, 8)*4*a);end;
--范遥升级
a=AddLevelreturnUper(10,lv2); if  a > 0 then AddHpWithoutHint(10, (7+math.random (0, 3))*3*a);AddMpWithoutHint(10, math.random (4, 8)*4*a);end;
--杨逍升级
a=AddLevelreturnUper(11,lv2); if  a > 0 then AddHpWithoutHint(11, (6+math.random (0, 3))*3*a);AddMpWithoutHint(11, math.random (4, 8)*4*a);end;
--殷天正升级
a=AddLevelreturnUper(12,lv2); if  a > 0 then AddHpWithoutHint(12, (5+math.random (0, 3))*3*a);AddMpWithoutHint(12, math.random (4, 8)*4*a);end;
--谢逊升级
a=AddLevelreturnUper(13,lv2); if  a > 0 then AddHpWithoutHint(13, (5+math.random (0, 3))*3*a);AddMpWithoutHint(13, math.random (4, 8)*4*a);end;
--韦一笑升级
a=AddLevelreturnUper(14,lv2); if  a > 0 then AddHpWithoutHint(14, (4+math.random (0, 3))*3*a);AddMpWithoutHint(14, math.random (4, 8)*4*a);end;
--金花婆婆升级
a=AddLevelreturnUper(15,lv2); if  a > 0 then AddHpWithoutHint(15, (5+math.random (0, 3))*3*a);AddMpWithoutHint(15, math.random (4, 8)*4*a);end;
--岳不群升级
AddHpWithoutHint(19, (9+math.random (0, 3))*3*lv2);
AddMpWithoutHint(19, math.random (3, 8)*4*lv2);
--莫大升级
a=AddLevelreturnUper(20,lv2); if  a > 0 then AddHpWithoutHint(20, (7+math.random (0, 3))*3*a);AddMpWithoutHint(20, math.random (5, 8)*4*a);end;
--定闲升级
a=AddLevelreturnUper(21,lv2); if  a > 0 then AddHpWithoutHint(21, (4+math.random (0, 3))*3*a);AddMpWithoutHint(21, math.random (4, 8)*4*a);end;
--左冷禅升级
AddHpWithoutHint(22, (8+math.random (0, 3))*3*lv2);
AddMpWithoutHint(22, math.random (3, 8)*4*lv2);
--天门升级
a=AddLevelreturnUper(23,lv2); if  a > 0 then AddHpWithoutHint(23, (6+math.random (0, 3))*3*a);AddMpWithoutHint(23, math.random (4, 8)*4*a);end;
--东方不败升级
AddHpWithoutHint(27, (9+math.random (0, 3))*3*lv2);
AddMpWithoutHint(27, math.random (8, 9)*4*lv2);
--风清扬升级
AddHpWithoutHint(30, (9+math.random (0, 3))*3*lv2);
AddMpWithoutHint(30, math.random (4, 8)*4*lv2);
--丹青生升级
a=AddLevelreturnUper(31,lv2); if  a > 0 then AddHpWithoutHint(31, (7+math.random (0, 3))*3*a);AddMpWithoutHint(31, math.random (4, 8)*4*a);end;
--秃笔翁升级
a=AddLevelreturnUper(32,lv2); if  a > 0 then AddHpWithoutHint(32, (6+math.random (0, 3))*3*a);AddMpWithoutHint(32, math.random (4, 8)*4*a);end;
--黑白子升级
a=AddLevelreturnUper(33,lv2); if  a > 0 then AddHpWithoutHint(33, (8+math.random (0, 3))*3*a);AddMpWithoutHint(33, math.random (4, 8)*4*a);end;
--黄钟公升级
a=AddLevelreturnUper(34,lv2); if  a > 0 then AddHpWithoutHint(34, (6+math.random (0, 3))*3*a);AddMpWithoutHint(34, math.random (4, 8)*4*a);end;
--龙岛主升级
a=AddLevelreturnUper(39,lv2); if  a > 0 then AddHpWithoutHint(39, (9+math.random (0, 3))*3*a);AddMpWithoutHint(39, math.random (4, 8)*4*a);end;
--木岛主升级
a=AddLevelreturnUper(40,lv2); if  a > 0 then AddHpWithoutHint(40, (9+math.random (0, 3))*3*a);AddMpWithoutHint(40, math.random (4, 8)*4*a);end;
--张三升级
a=AddLevelreturnUper(41,lv2); if  a > 0 then AddHpWithoutHint(41, (7+math.random (0, 3))*3*a);AddMpWithoutHint(41, math.random (4, 8)*4*a);end;
--李四升级
a=AddLevelreturnUper(42,lv2); if  a > 0 then AddHpWithoutHint(42, (7+math.random (0, 3))*3*a);AddMpWithoutHint(42, math.random (4, 8)*4*a);end;
--白万剑升级
a=AddLevelreturnUper(43,lv2); if  a > 0 then AddHpWithoutHint(43, (6+math.random (0, 3))*3*a);AddMpWithoutHint(43, math.random (4, 8)*4*a);end;
--乔峰升级
AddHpWithoutHint(50, (5+math.random (0, 3))*3*lv2);
AddMpWithoutHint(50, math.random (3, 8)*4*lv2);
--苏星河升级
a=AddLevelreturnUper(52,lv2); if  a > 0 then AddHpWithoutHint(52, (6+math.random (0, 3))*3*a);AddMpWithoutHint(52, math.random (4, 8)*4*a);end;
--郭靖升级
AddHpWithoutHint(55, (6+math.random (0, 3))*3*lv2);
AddMpWithoutHint(55, math.random (6, 8)*4*lv2);
--黄蓉升级
AddHpWithoutHint(56, (7+math.random (0, 3))*3*lv2);
AddMpWithoutHint(56, math.random (2, 8)*4*lv2);
--黄药师升级
a=AddLevelreturnUper(57,lv2); if  a > 0 then AddHpWithoutHint(57, (8+math.random (0, 3))*3*a);AddMpWithoutHint(57, math.random (4, 8)*4*a);end;
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
a=AddLevelreturnUper(65,lv2); if  a > 0 then AddHpWithoutHint(65, (8+math.random (0, 3))*3*a);AddMpWithoutHint(65, math.random (4, 8)*4*a);end;
--瑛姑升级
a=AddLevelreturnUper(66,lv2); if  a > 0 then AddHpWithoutHint(66, (8+math.random (0, 3))*3*a);AddMpWithoutHint(66, math.random (4, 8)*4*a);end;
--裘千仞升级
AddHpWithoutHint(67, (8+math.random (0, 3))*3*lv2);
AddMpWithoutHint(67, math.random (4, 8)*4*lv2);
--丘处机升级
a=AddLevelreturnUper(68,lv2); if  a > 0 then AddHpWithoutHint(68, (5+math.random (0, 3))*3*a);AddMpWithoutHint(68, math.random (4, 8)*4*a);end;
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
a=AddLevelreturnUper(73,lv2); if  a > 0 then AddHpWithoutHint(73, (5+math.random (0, 3))*3*a);AddMpWithoutHint(73, math.random (4, 8)*4*a);end;
--北丑升级
a=AddLevelreturnUper(74,lv2); if  a > 0 then AddHpWithoutHint(74, (5+math.random (0, 3))*3*a);AddMpWithoutHint(74, math.random (4, 8)*4*a);end;
--林厨子升级
a=AddLevelreturnUper(75,lv2); if  a > 0 then AddHpWithoutHint(75, (5+math.random (0, 3))*3*a);AddMpWithoutHint(75, math.random (4, 8)*4*a);end;
--胡斐升级
a=AddLevelreturnUper(1,lv3); if  a > 0 then AddHpWithoutHint(1, (4+math.random (0, 3))*3*a);AddMpWithoutHint(1, math.random (4, 8)*4*a);end;
--程灵素升级
a=AddLevelreturnUper(2,lv3); if  a > 0 then AddHpWithoutHint(2, (1+math.random (0, 3))*3*a);AddMpWithoutHint(2, math.random (4, 8)*4*a);end;
--张无忌升级
a=AddLevelreturnUper(9,lv3); if  a > 0 then AddHpWithoutHint(9, (4+math.random (0, 3))*3*a);AddMpWithoutHint(9, math.random (4, 8)*4*a);end;
--胡青牛升级
a=AddLevelreturnUper(16,lv3); if  a > 0 then AddHpWithoutHint(16, (4+math.random (0, 3))*3*a);AddMpWithoutHint(16, math.random (4, 8)*4*a);end;
--王难姑升级
a=AddLevelreturnUper(17,lv3); if  a > 0 then AddHpWithoutHint(17, (4+math.random (0, 3))*3*a);AddMpWithoutHint(17, math.random (4, 8)*4*a);end;
--蓝凤凰升级
a=AddLevelreturnUper(25,lv3); if  a > 0 then AddHpWithoutHint(25, (7+math.random (0, 3))*3*a);AddMpWithoutHint(25, math.random (4, 8)*4*a);end;
--平一指升级
a=AddLevelreturnUper(28,lv3); if  a > 0 then AddHpWithoutHint(28, (5+math.random (0, 3))*3*a);AddMpWithoutHint(28, math.random (4, 8)*4*a);end;
--田伯光升级
a=AddLevelreturnUper(29,lv3); if  a > 0 then AddHpWithoutHint(29, (8+math.random (0, 3))*3*a);AddMpWithoutHint(29, math.random (4, 8)*4*a);end;
--令狐冲升级
AddHpWithoutHint(35, (4+math.random (0, 3))*3*lv3);
AddMpWithoutHint(35, math.random (4, 8)*4*lv3);
--林平之升级
AddHpWithoutHint(36, (8+math.random (0, 3))*3*lv3);
AddMpWithoutHint(36, math.random (4, 8)*4*lv3);
--狄云升级
a=AddLevelreturnUper(37,lv3); if  a > 0 then AddHpWithoutHint(37, (3+math.random (0, 3))*3*a);AddMpWithoutHint(37, math.random (4, 8)*4*a);end;
--石破天升级
AddHpWithoutHint(38, (4+math.random (0, 3))*3*lv3);
AddMpWithoutHint(38, math.random (4, 8)*4*lv3);
--岳老三升级
a=AddLevelreturnUper(44,lv3); if  a > 0 then AddHpWithoutHint(44, (9+math.random (0, 3))*3*a);AddMpWithoutHint(44, math.random (4, 8)*4*a);end;
--薛慕华升级
a=AddLevelreturnUper(45,lv3); if  a > 0 then AddHpWithoutHint(45, (5+math.random (0, 3))*3*a);AddMpWithoutHint(45, math.random (4, 8)*4*a);end;
--阿紫升级
a=AddLevelreturnUper(47,lv3); if  a > 0 then AddHpWithoutHint(47, (7+math.random (0, 3))*3*a);AddMpWithoutHint(47, math.random (4, 8)*4*a);end;
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
a=AddLevelreturnUper(54,lv3); if  a > 0 then AddHpWithoutHint(54, (3+math.random (0, 3))*3*a);AddMpWithoutHint(54, math.random (4, 8)*4*a);end;
--杨过升级
AddHpWithoutHint(58, (5+math.random (0, 3))*3*lv3);
AddMpWithoutHint(58, math.random (4, 8)*4*lv3);
--小龙女升级
AddHpWithoutHint(59, (6+math.random (0, 3))*3*lv3);
AddMpWithoutHint(59, math.random (4, 8)*4*lv3);
--欧阳克升级
a=AddLevelreturnUper(61,lv3); if  a > 0 then AddHpWithoutHint(61, (8+math.random (0, 3))*3*a);AddMpWithoutHint(61, math.random (4, 8)*4*a);end;
--程英升级
a=AddLevelreturnUper(63,lv3); if  a > 0 then AddHpWithoutHint(63, (3+math.random (0, 3))*3*a);AddMpWithoutHint(63, math.random (4, 8)*4*a);end;
--王语嫣升级
AddHpWithoutHint(76, (3+math.random (0, 3))*3*lv3);
AddMpWithoutHint(76, math.random (4, 8)*4*lv3);
--升级结束
Rest();
SetRoleFace(1);
jyx2_Wait(2);
LightScence();
AllLeave();
Talk(0, "这一觉好长啊。", "", 1);
do return end;
