if UseItem(160) == true then goto label0
elseif UseItem(39) == true then goto label39
elseif UseItem(40) == true then goto label40
elseif UseItem(41) == true then goto label41
elseif UseItem(42) == true then goto label42
elseif UseItem(43) == true then goto label43
elseif UseItem(44) == true then goto label44
elseif UseItem(45) == true then goto label45
elseif UseItem(46) == true then goto label46
elseif UseItem(47) == true then goto label47
elseif UseItem(48) == true then goto label48
elseif UseItem(49) == true then goto label49
elseif UseItem(50) == true then goto label50
elseif UseItem(51) == true then goto label51
elseif UseItem(52) == true then goto label52
elseif UseItem(53) == true then goto label53
elseif UseItem(54) == true then goto label54
elseif UseItem(55) == true then goto label55
elseif UseItem(56) == true then goto label56
elseif UseItem(57) == true then goto label57
elseif UseItem(58) == true then goto label58
elseif UseItem(59) == true then goto label59
elseif UseItem(60) == true then goto label60
elseif UseItem(61) == true then goto label61
elseif UseItem(62) == true then goto label62
elseif UseItem(63) == true then goto label63
elseif UseItem(64) == true then goto label64
elseif UseItem(65) == true then goto label65
elseif UseItem(66) == true then goto label66
elseif UseItem(67) == true then goto label67
elseif UseItem(68) == true then goto label68
elseif UseItem(69) == true then goto label69
elseif UseItem(70) == true then goto label70
elseif UseItem(71) == true then goto label71
elseif UseItem(72) == true then goto label72
elseif UseItem(73) == true then goto label73
elseif UseItem(74) == true then goto label74
elseif UseItem(75) == true then goto label75
elseif UseItem(76) == true then goto label76
elseif UseItem(77) == true then goto label77
elseif UseItem(78) == true then goto label78
elseif UseItem(79) == true then goto label79
elseif UseItem(80) == true then goto label80
elseif UseItem(81) == true then goto label81
elseif UseItem(82) == true then goto label82
elseif UseItem(83) == true then goto label83
elseif UseItem(84) == true then goto label84
elseif UseItem(85) == true then goto label85
elseif UseItem(86) == true then goto label86
elseif UseItem(87) == true then goto label87
elseif UseItem(88) == true then goto label88
elseif UseItem(89) == true then goto label89
elseif UseItem(90) == true then goto label90
elseif UseItem(91) == true then goto label91
elseif UseItem(92) == true then goto label92
elseif UseItem(93) == true then goto label93
elseif UseItem(94) == true then goto label94
elseif UseItem(95) == true then goto label95
elseif UseItem(129) == true then goto label129
elseif UseItem(183) == true then goto label183
elseif UseItem(185) == true then goto label185
elseif UseItem(193) == true then goto label193
else
	Talkplus(65);--0,"哇！好痛！这烛火还真烫。"
end;
do return end;
::label0::
Talkplus(66);--0,"我一定是疯了，才会想把这书烧掉！"
do return end;
::label39::
Talkplus(67);--0,""..PaperScroll(39,1).."留着也没用了，一把火烧了才干净！"
AddItem(39,-1);
AddItem(239,1);	
AddExp(0,PaperScroll(39,0));
do return end;
::label40::
Talkplus(68);--0,""..PaperScroll(40,1).."留着也没用了，一把火烧了才干净！"
AddItem(40,-1);
AddItem(240,1);
AddExp(0,PaperScroll(40,0));
do return end;
::label41::
if (JudgeItem(172,30) and (Sbno == 1)) then
	Talkplus(69);--0,""..PaperScroll(41,1).."留着也没用了，把它烧了吧！"
	AddItem(41,-1);
	AddItemWithoutHint(172,-30);
	AddItem(241,1);
	AddExp(0,PaperScroll(41,0));
	Talkplus(70);--0,"啊！居然变成瓷器了。"
else
	Talkplus(71);--0,"烧了怪可惜的。"
end;
do return end;
::label42::
Talkplus(72);--0,""..PaperScroll(42,1).."留着也没用了，一把火烧了才干净！"
AddItem(42,-1);
AddItem(242,1);
AddExp(0,PaperScroll(42,0));
do return end;
::label43::
Talkplus(73);--0,""..PaperScroll(43,1).."留着也没用了，一把火烧了才干净！"
AddItem(43,-1);
AddItem(243,1);
AddExp(0,PaperScroll(43,0));
do return end;
::label44::
Talkplus(74);--0,""..PaperScroll(44,1).."留着也没用了，一把火烧了才干净！"
AddItem(44,-1);
AddItem(244,1);
AddExp(0,PaperScroll(44,0));
do return end;
::label45::
Talkplus(75);--0,""..PaperScroll(45,1).."留着也没用了，一把火烧了才干净！"
AddItem(45,-1);
AddItem(245,1);
AddExp(0,PaperScroll(45,0));
do return end;
::label46::
Talkplus(76);--0,""..PaperScroll(46,1).."留着也没用了，一把火烧了才干净！"
AddItem(46,-1);
AddItem(246,1);
AddExp(0,PaperScroll(46,0));
do return end;
::label47::
Talkplus(77);--0,""..PaperScroll(47,1).."留着也没用了，一把火烧了才干净！"
AddItem(47,-1);
AddItem(247,1);
AddExp(0,PaperScroll(47,0));
do return end;
::label48::
Talkplus(78);--0,""..PaperScroll(48,1).."留着也没用了，一把火烧了才干净！"
AddItem(48,-1);
AddItem(248,1);
AddExp(0,PaperScroll(48,0));
do return end;
::label49::
Talkplus(79);--0,""..PaperScroll(49,1).."留着也没用了，一把火烧了才干净！"
AddItem(49,-1);
AddItem(249,1);
AddExp(0,PaperScroll(49,0));
do return end;
::label50::
Talkplus(80);--0,""..PaperScroll(50,1).."留着也没用了，一把火烧了才干净！"
AddItem(50,-1);
AddItem(250,1);
AddExp(0,PaperScroll(50,0));
do return end;
::label51::
Talkplus(81);--0,""..PaperScroll(51,1).."留着也没用了，一把火烧了才干净！"
AddItem(51,-1);
AddItem(251,1);
AddExp(0,PaperScroll(51,0));
do return end;
::label52::
Talkplus(82);--0,""..PaperScroll(52,1).."留着也没用了，一把火烧了才干净！"
AddItem(52,-1);
AddItem(252,1);
AddExp(0,PaperScroll(52,0));
do return end;
::label53::
Talkplus(83);--0,""..PaperScroll(53,1).."留着也没用了，一把火烧了才干净！"
AddItem(53,-1);
AddItem(253,1);
AddExp(0,PaperScroll(53,0));
do return end;
::label54::
Talkplus(84);--0,""..PaperScroll(54,1).."留着也没用了，一把火烧了才干净！"
AddItem(54,-1);
AddItem(254,1);
AddExp(0,PaperScroll(54,0));
do return end;
::label55::
Talkplus(85);--0,""..PaperScroll(55,1).."留着也没用了，一把火烧了才干净！"
AddItem(55,-1);
AddItem(255,1);
AddExp(0,PaperScroll(55,0));
do return end;
::label56::
Talkplus(86);--0,""..PaperScroll(56,1).."留着也没用了，一把火烧了才干净！"
AddItem(56,-1);
AddItem(256,1);
AddExp(0,PaperScroll(56,0));
do return end;
::label57::
Talkplus(87);--0,""..PaperScroll(57,1).."留着也没用了，一把火烧了才干净！"
AddItem(57,-1);
AddItem(257,1);
AddExp(0,PaperScroll(57,0));
do return end;
::label58::
Talkplus(88);--0,""..PaperScroll(58,1).."留着也没用了，一把火烧了才干净！"
AddItem(58,-1);
AddItem(258,1);
AddExp(0,PaperScroll(58,0));
do return end;
::label59::
Talkplus(89);--0,""..PaperScroll(59,1).."留着也没用了，一把火烧了才干净！"
AddItem(59,-1);
AddItem(259,1);
AddExp(0,PaperScroll(59,0));
do return end;
::label60::
Talkplus(90);--0,""..PaperScroll(60,1).."留着也没用了，一把火烧了才干净！"
AddItem(60,-1);
AddItem(260,1);
AddExp(0,PaperScroll(60,0));
do return end;
::label61::
Talkplus(91);--0,""..PaperScroll(61,1).."留着也没用了，一把火烧了才干净！"
AddItem(61,-1);
AddItem(261,1);
AddExp(0,PaperScroll(61,0));
do return end;
::label62::
Talkplus(92);--0,""..PaperScroll(62,1).."留着也没用了，一把火烧了才干净！"
AddItem(62,-1);
AddItem(262,1);
AddExp(0,PaperScroll(62,0));
do return end;
::label63::
Talkplus(93);--0,""..PaperScroll(63,1).."留着也没用了，一把火烧了才干净！"
AddItem(63,-1);
AddItem(263,1);
AddExp(0,PaperScroll(63,0));
do return end;
::label64::
Talkplus(94);--0,""..PaperScroll(64,1).."留着也没用了，一把火烧了才干净！"
AddItem(64,-1);
AddItem(264,1);
AddExp(0,PaperScroll(64,0));
do return end;
::label65::
if (JudgeItem(172,50) and (Smwd == 1)) then
	Talkplus(95);--0,""..PaperScroll(65,1).."留着也没用了，烧了吧！"
	AddItem(65,-1);
	AddItemWithoutHint(172,-50);
	AddItem(265,1);
	AddExp(0,PaperScroll(65,0));
	Talkplus(96);--0,"咦，居然变小了，鼎脚合在一起可以当作戒指戴在手上了！"
else
	Talkplus(97);--0,"烧了怪可惜的。"
end;
do return end;
::label66::
Talkplus(98);--0,""..PaperScroll(66,1).."留着也没用了，一把火烧了才干净！"
AddItem(66,-1);
AddItem(266,1);
AddExp(0,PaperScroll(66,0));
do return end;
::label67::
Talkplus(99);--0,""..PaperScroll(67,1).."留着也没用了，一把火烧了才干净！"
AddItem(67,-1);
AddItem(267,1);
AddExp(0,PaperScroll(67,0));
do return end;
::label68::
Talkplus(100);--0,""..PaperScroll(68,1).."留着也没用了，一把火烧了才干净！"
AddItem(68,-1);
AddItem(268,1);
AddExp(0,PaperScroll(68,0));
do return end;
::label69::
Talkplus(101);--0,""..PaperScroll(69,1).."留着也没用了，一把火烧了才干净！"
AddItem(69,-1);
AddItem(269,1);
AddExp(0,PaperScroll(69,0));
do return end;
::label70::
Talkplus(102);--0,""..PaperScroll(70,1).."留着也没用了，一把火烧了才干净！"
AddItem(70,-1);
AddItem(270,1);
AddExp(0,PaperScroll(70,0));
do return end;
::label71::
Talkplus(103);--0,""..PaperScroll(71,1).."留着也没用了，一把火烧了才干净！"
AddItem(71,-1);
AddItem(271,1);
AddExp(0,PaperScroll(71,0));
do return end;
::label72::
Talkplus(104);--0,""..PaperScroll(72,1).."留着也没用了，一把火烧了才干净！"
AddItem(72,-1);
AddItem(272,1);
AddExp(0,PaperScroll(72,0));
do return end;
::label73::
Talkplus(105);--0,""..PaperScroll(73,1).."留着也没用了，一把火烧了才干净！"
AddItem(73,-1);
AddItem(273,1);
AddExp(0,PaperScroll(73,0));
do return end;
::label74::
Talkplus(106);--0,""..PaperScroll(74,1).."留着也没用了，一把火烧了才干净！"
AddItem(74,-1);
AddItem(274,1);
AddExp(0,PaperScroll(74,0));
do return end;
::label75::
Talkplus(107);--0,""..PaperScroll(75,1).."留着也没用了，一把火烧了才干净！"
AddItem(75,-1);
AddItem(275,1);
AddExp(0,PaperScroll(75,0));
do return end;
::label76::
Talkplus(108);--0,""..PaperScroll(76,1).."留着也没用了，一把火烧了才干净！"
AddItem(76,-1);
AddItem(276,1);
AddExp(0,PaperScroll(76,0));
do return end;
::label77::
Talkplus(109);--0,""..PaperScroll(77,1).."留着也没用了，一把火烧了才干净！"
AddItem(77,-1);
AddItem(277,1);
AddExp(0,PaperScroll(77,0));
do return end;
::label78::
Talkplus(110);--0,""..PaperScroll(78,1).."留着也没用了，一把火烧了才干净！"
AddItem(78,-1);
AddItem(278,1);
AddExp(0,PaperScroll(78,0));
do return end;
::label79::
Talkplus(111);--0,""..PaperScroll(79,1).."留着也没用了，一把火烧了才干净！"
AddItem(79,-1);
AddItem(279,1);
AddExp(0,PaperScroll(79,0));
do return end;
::label80::
Talkplus(112);--0,""..PaperScroll(80,1).."留着也没用了，一把火烧了才干净！"
AddItem(80,-1);
AddItem(280,1);
AddExp(0,PaperScroll(80,0));
do return end;
::label81::
Talkplus(113);--0,""..PaperScroll(81,1).."留着也没用了，一把火烧了才干净！"
AddItem(81,-1);
AddItem(281,1);
AddExp(0,PaperScroll(81,0));
do return end;
::label82::
Talkplus(114);--0,""..PaperScroll(82,1).."留着也没用了，一把火烧了才干净！"
AddItem(82,-1);
AddItem(282,1);
AddExp(0,PaperScroll(82,0));
do return end;
::label83::
Talkplus(115);--0,""..PaperScroll(83,1).."留着也没用了，一把火烧了才干净！"
AddItem(83,-1);
AddItem(283,1);
AddExp(0,PaperScroll(83,0));
do return end;
::label84::
Talkplus(116);--0,""..PaperScroll(84,1).."留着也没用了，一把火烧了才干净！"
AddItem(84,-1);
AddItem(284,1);
AddExp(0,PaperScroll(84,0));
do return end;
::label85::
Talkplus(117);--0,""..PaperScroll(85,1).."留着也没用了，一把火烧了才干净！"
AddItem(85,-1);
AddItem(285,1);
AddExp(0,PaperScroll(85,0));
do return end;
::label86::
Talkplus(118);--0,""..PaperScroll(86,1).."留着也没用了，一把火烧了才干净！"
AddItem(86,-1);
AddItem(286,1);
AddExp(0,PaperScroll(86,0));
do return end;
::label87::
Talkplus(119);--0,""..PaperScroll(87,1).."留着也没用了，一把火烧了才干净！"
AddItem(87,-1);
AddItem(287,1);
AddExp(0,PaperScroll(87,0));
do return end;
::label88::
Talkplus(120);--0,""..PaperScroll(88,1).."留着也没用了，一把火烧了才干净！"
AddItem(88,-1);
AddItem(288,1);
AddExp(0,PaperScroll(88,0));
do return end;
::label89::
Talkplus(121);--0,""..PaperScroll(89,1).."留着也没用了，一把火烧了才干净！"
AddItem(89,-1);
AddItem(289,1);
AddExp(0,PaperScroll(89,0));
do return end;
::label90::
Talkplus(122);--0,""..PaperScroll(90,1).."留着也没用了，一把火烧了才干净！"
AddItem(90,-1);
AddItem(290,1);
AddExp(0,PaperScroll(90,0));
do return end;
::label91::
Talkplus(123);--0,""..PaperScroll(91,1).."留着也没用了，一把火烧了才干净！"
AddItem(91,-1);
AddItem(291,1);
AddExp(0,PaperScroll(91,0));
do return end;
::label92::
Talkplus(124);--0,""..PaperScroll(92,1).."留着也没用了，一把火烧了才干净！"
AddItem(92,-1);
AddItem(292,1);
AddExp(0,PaperScroll(92,0));
do return end;
::label93::
Talkplus(125);--0,""..PaperScroll(93,1).."留着也没用了，一把火烧了才干净！"
AddItem(93,-1);
AddItem(293,1);
AddExp(0,PaperScroll(93,0));
do return end;
::label94::
Talkplus(126);--0,""..PaperScroll(94,1).."留着也没用了，一把火烧了才干净！"
AddItem(94,-1);
AddItem(294,1);
AddExp(0,PaperScroll(94,0));
do return end;
::label95::
Talkplus(127);--0,""..PaperScroll(95,1).."留着也没用了，一把火烧了才干净！"
AddItem(95,-1);
AddItem(295,1);
AddExp(0,PaperScroll(95,0));
do return end;
::label129::
Talkplus(128);--0,""..PaperScroll(129,1).."留着也没用了，一把火烧了才干净！"
AddItem(129,-1);
AddExp(0,PaperScroll(129,0));
do return end;
::label183::
Talkplus(129);--0,""..PaperScroll(183,1).."留着也没用了，一把火烧了才干净！"
AddItem(183,-1);
AddExp(0,PaperScroll(183,0));
AddEthics(6);
do return end;
::label185::
Talkplus(130);--0,""..PaperScroll(185,1).."留着也没用了，一把火烧了才干净！"
AddItem(185,-1);
AddExp(0,PaperScroll(185,0));
AddEthics(-6);
do return end;
::label193::
Talkplus(131);--0,""..PaperScroll(193,1).."留着也没用了，一把火烧了才干净！"
AddItem(193,-1);
AddExp(0,PaperScroll(193,0));
do return end;