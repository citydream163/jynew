Talkplus(534);--0,"王前辈，你还好吧？"
Talkplus(535);--17,"你是谁？"
Talkplus(536);--0,"在下是受胡前辈所托，前来救你的。"
Talkplus(537);--17,"真的？那金花婆婆呢？"
Talkplus(538);--0,"前辈放心，那老太婆已被我打败，暂时不会为难你了。"
Talkplus(539);--17,"谢谢少侠相助，我夫妇俩不会忘记你的恩情……"
Talkplus(540);--0,"哪里，哪里，路见不平，拔刀相助，本是我辈中人该做的事。现在此事已了，我还有其他的事要办，前辈可先离去了。"
Talkplus(541);--17,"好，那我先回蝴蝶谷了，待少侠有空时，一定要到我蝴蝶谷中作客。你一定要来哦！我和外子一定要送你些东西来报答你。"
Talkplus(542);--0,"前辈慢走。"
ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
jyx2_ReplaceSceneObject("", "NPC/王难姑", ""); 
ModifyEvent(44, 1, 1, 1, 123, -1, -1, 5290, 5290, 5290, -2, -2, -2);
jyx2_ReplaceSceneObject("44", "NPC/王难姑", "1"); 
ModifyEvent(44, 0, -2, -2, 95, -1, -1, -2, -2, -2, -2, -2, -2);
DarkScence();
LightScence();
AddEthics(3);
if jyx2_CheckEventCount(17,333,0) == 0 then Add3EventNum(17,333,Calendar(2),0,0) end;--初识王难姑计数器
do return end;