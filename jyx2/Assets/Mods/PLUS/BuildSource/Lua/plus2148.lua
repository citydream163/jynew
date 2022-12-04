Talkplus(4472);--0, "哎呀不好！"
DarkScence();
if (GetCurrentEventID() == 17) then
	Gotarget = 1;
elseif (GetCurrentEventID() == 16) then
	Gotarget = 2;
elseif (GetCurrentEventID() == 20) then
	Gotarget = 0;
elseif (GetCurrentEventID() == 21) then
	Gotarget = 0;
elseif (GetCurrentEventID() == 22) then
	Gotarget = 0;
elseif (GetCurrentEventID() == 23) then
	Gotarget = 0;
end;
jyx2_MovePlayer(""..Gotarget.."","Level/NavigateObjs");
LightScence();
do return end;