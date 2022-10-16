if JudgeIQ(0,1,33) == true then goto label0
elseif JudgeIQ(0,34,66) == true then goto label1
else
ModifyEvent(-2, -2, 0, 0, -1, -1, 2044, -1, -1, -1, -2, -2, -2);
end;
do return end;
::label0::
ModifyEvent(-2, -2, 0, 0, -1, -1, 2046, -1, -1, -1, -2, -2, -2);
do return end;
::label1::
ModifyEvent(-2, -2, 0, 0, -1, -1, 2045, -1, -1, -1, -2, -2, -2);
do return end;