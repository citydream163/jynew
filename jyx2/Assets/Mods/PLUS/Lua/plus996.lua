Talkplus(3696);--0, "程姑娘，请你先回家去，若有需要你帮忙时，我再去找你。"
Leave(63);
jyx2_ReplaceSceneObject("45","NPC/程英","1");
if math.random(1,100) > 50 then goto label0 end;
ModifyEvent(45, 0, 1, 1, 997, -1, -1, 6120, 6120, 6120, 0, -2, -2);
do return end;
::label0::
ModifyEvent(45, 0, 1, 1, 2076, -1, -1, 6120, 6120, 6120, 0, -2, -2);--触发新程英入队
do return end;