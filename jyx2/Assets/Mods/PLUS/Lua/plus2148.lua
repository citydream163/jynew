Talk(0, "哎呀不好！");
DarkScence();
if (GetCurrentEventID() == 17) then
	Gotarget = 1;
elseif (GetCurrentEventID() == 16) then
	Gotarget = 2;
end;
jyx2_MovePlayer(""..Gotarget.."","Level/NavigateObjs");
LightScence();
do return end;