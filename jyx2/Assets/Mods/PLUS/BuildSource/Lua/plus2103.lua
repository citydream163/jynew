jyx2_ReplaceSceneObject("","NPC/算命先生","");
ModifyEvent(-2, 30, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
--Innid = {1,3,40,60,61};
::label1::
k = math.random(1,#Innid);
if Innid[k] == GetCurrentGameMapid() then goto label1 end;
jyx2_ReplaceSceneObject(tostring(Innid[k]),"NPC/算命先生","1");
ModifyEvent(Innid[k], 30, -2, -2, 2074, 2075, -1, -2, -2, -2, -2, -2, -2);
ModifyEvent(-2, -2, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
do return end;