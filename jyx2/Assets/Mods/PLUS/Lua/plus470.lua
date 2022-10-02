if InTeam(58) == true then goto label0 end;
Talk(55, "记着我的话，多行侠仗义，做一个真正的侠之大者。", "", 0);
do return end;
::label0::
Talk(58, "郭伯伯，我来看你了。", "", 0);
Talk(55, "过儿，行走江湖还是要以侠义为重。", "", 0);
if InTeam(59) == true then 
Talk(56, "龙姑娘也来了，我有话要和你说。", "", 0);
Talk(59, "姊姊，但说无妨。", "", 0);
end;
Talk(0, "大家慢慢聊。", "", 0);
Talk(55, "记着我的话，多行侠仗义，做一个真正的侠之大者。", "", 0);
ModifyEvent(-2, -2, 0, -1, 2097, -1, -1, -1, -1, -1, -1, -2, -2);
do return end;