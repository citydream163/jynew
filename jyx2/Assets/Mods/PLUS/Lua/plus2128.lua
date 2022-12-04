ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
if HaveItem(204) == true then goto label20 end;
do return end;
::label20::
if math.random(0,100) > 50 then goto label19 end;
local moneynum = math.random(10,100);
local radnum = math.random(1,100);
if radnum >= 3 and radnum < 10 then goto label0
elseif radnum >= 10 and radnum < 20 then goto label1
elseif radnum >= 20 and radnum < 30 then goto label2
elseif radnum >= 30 and radnum < 40 then goto label3
elseif radnum >= 40 and radnum < 50 then goto label4
elseif radnum >= 50 and radnum < 60 then goto label5
elseif radnum >= 60 and radnum < 70 then goto label6
elseif radnum >= 70 and radnum < 80 then goto label7
elseif radnum >= 80 and radnum < 90 then goto label8
elseif radnum >= 90 and radnum < 95 then goto label9
elseif radnum >= 95 and radnum < 101 then goto label10
else
	if JudgeWCH(0,1,20) == false then goto label12 end;
	Talkplus(4260);--0,"走远路，长见识。"
	AddWuchang(0,1);
end;
do return end;
::label0::
Talkplus(4261);--0,"走累了，休息一下。"
RestFight();
DarkScence();        
LightScence();
do return end;
::label1::
if JudgeHeal(0,1,30) == false then goto label13 end;
Talkplus(4262);--0,"走远路需要做好防护。"
AddHeal(0,1);
do return end;
::label2::
if JudgeDefence(0,1,30) == false then goto label18 end;
Talkplus(4263);--0,"探迷宫是我的爱好。"
AddDefence(0,1);
do return end;
::label3::
if JudgeQuanzhang(0,1,30) == false then goto label14 end;
Talkplus(4264);--0,"嘿嘿哈嘿，边走路边打拳。"
AddQuanzhang(0,1);
do return end;
::label4::
if JudgeYujian(0,1,30) == false then goto label15 end;
Talkplus(4265);--0,"御剑飞升。"
AddYujian(0,1);
do return end;
::label5::
Talkplus(4266);--0,"注意墙角的毒虫。"
AddAnqi(0,1);
do return end;
::label6::
if JudgeMoney(moneynum) == false then goto label11 end;
Talkplus(4267);--0,"哎呀不好，钱袋子漏了。"
AddItem(174, -moneynum);
do return end;
::label7::
Talkplus(4268);--0,"穿越迷宫，增长见闻。"
AddExp(0, moneynum);
do return end;
::label8::
if JudgeAttackPoison(0,1,30) == false then goto label16 end;
Talkplus(4269);--0,"差一点就抓到那只莽牯朱蛤了。"
AddAttackPoison(0,1);
do return end;
::label9::
if JudgeQimen(0,1,15) == false then goto label17 end;
Talkplus(4270);--0,"奇门遁甲用在这里最合适。"
AddQimen(0,1);
do return end;
::label10::
Talkplus(4271);--0,"出门见财。"
AddItem(174, moneynum);
do return end;
::label11::
Talkplus(4272);--0,"没事就是最好的事。"
do return end;
::label12::
Talkplus(4273);--0,"我真见多识广。"
do return end;
::label13::
Talkplus(4274);--0,"备用药品都准备好了。"
do return end;
::label14::
Talkplus(4275);--0,"拳拳到肉。"
do return end;
::label15::
Talkplus(4276);--0,"御剑开路。"
do return end;
::label16::
Talkplus(4277);--0,"小毒物已经伤不到我了。"
do return end;
::label17::
Talkplus(4278);--0,"也许可以学习一些其他的武功。"
do return end;
::label18::
Talkplus(4279);--0,"弯弯绕绕，曲曲折折。"
do return end;
::label19::
ModifyEvent(-2, -2, 0, 0, -1, -1, 2129, -1, -1, -1, -2, -2, -2);
do return end;