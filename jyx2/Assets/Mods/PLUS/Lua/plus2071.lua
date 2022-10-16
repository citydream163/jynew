ModifyEvent(-2, -2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
math.randomseed(tostring(os.time()):reverse():sub(1, 7));
if math.random(1,100) >= 70 then goto label0 end;
Talk(0, "好累啊。", "", 1);
do return end;
::label0::
local tatl = math.random(10,25)
Talk(0, "快跑。", "", 1);
jyx2_WalkFromTo(-1,tatl);