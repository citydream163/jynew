if UseItem(203) == true then goto label0 end;
do return end;
::label0::
if (Wonglike == nil) then Wonglike = 0; end;
AddItemWithoutHint(203,-1);
math.randomseed(tostring(os.time()):reverse():sub(1, 7));
arr = {1,2,3,4,5,6};
if (Caihua == nil) then Caihua = 0; end;
if ( math.random(1, 100) + Caihua > 66 ) then
	Talk(109,"这些够了，谢谢你。");
	AddWuchang(0,Wonglike + math.random(1, 5));
	Wonglike = 0;
	ModifyEvent(-2, -2, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
	ModifyEvent(-2, 9, -2, -2, -1, -1, 2141, -2, -2, -2, -2, -2, -2);
	for j = 1, #arr do	
		ModifyEvent(-2, j+9, -2, -2, -1, -1, -1, -2, -2, -2, -2, -2, -2);
	end;
else
	Talk(109,"嗯，这些我都喜欢，你真有眼光，不过还不够多，你再去帮我采一些来。");
	Talk(0,"好的，我再去多采些来。");
	Wonglike = Wonglike + 1;
	for j = 1, #arr do	
	ModifyEvent(-2, j+9, -2, -2, 2132, -2, -2, -2, -2, -2, -2, -2, -2);
	end;
end;
do return end;