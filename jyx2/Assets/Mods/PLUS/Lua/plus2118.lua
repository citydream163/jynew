if jyx2_CheckEventCount(36,442,0) == 0 then
	Add3EventNum(36,444,1,0,0);--青城四秀计数器
	Add3EventNum(36,442,jyx2_CheckEventCount(36,444,0),0,0);--青城三秀点击顺序计数器
end;
if qcsxName(jyx2_CheckEventCount(36,442,0),0) == "侯人雄" then goto label0 end;
	Talkplus(4223);--86, "哼！废话少说，要杀要剐随你。"
do return end;
::label0::
Talkplus(4224);--86, "大侠别杀我，我是“青城四秀”中的侯人雄……"
Talkplus(4225);--0, "你这头狗熊，想干什么，凭什么要我不杀你。"
Talkplus(4226);--86, "我知道个秘密。"
Talkplus(4227);--0, "你说。"
Talkplus(4228);--86, "林震南死前曾要我转告他儿子……“福州向阳巷老宅地窖中的物事，是林家祖传之物，须得好好保管……但他曾祖远图公留有遗训，林家子孙，不得翻看，否则后患无穷。”这事我连师父也没说，说出来给少侠参考。"
Talkplus(4229);--0, "好，不错，不过空口无凭，我如何信你？"
Talkplus(4230);--86, "我这里有林震南死前手书的遗言一封，请少侠过目。"
AddItem(185,1);
jyx2_Wait(0.5);
Talkplus(4231);--0, "嗯，不像造假的，这讯息似乎有点用处，我就放过你。"
Talkplus(4232);--86, "谢谢少侠，少侠这么好心，将来一定娶个美娇娘。"
Talkplus(4233);--0, "这话听来还蛮舒服的。你本质还不坏，别跟着这坏人了，快回家种田去吧。"
Talkplus(4234);--86, "是，是……"
DarkScence();
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/青城弟子2", "");-- 移除人物
ModifyEvent(56, 1, -2, -2, 289, -1, -1, -2, -2, -2, -2, -2, -2);
LightScence();
do return end;