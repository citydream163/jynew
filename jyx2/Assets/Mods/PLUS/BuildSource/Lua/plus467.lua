if InTeam(58) == true then goto label0 end;
Talkplus(2143);--55, "记着，虽然现在你已经称得上是一名侠者，但是如何保持下去才是更为重要。"
do return end;
::label0::
Talkplus(2144);--58, "郭伯伯，我来看你了。"
Talkplus(2145);--55, "好，记得行走江湖以侠义为重。"
if InTeam(59) == true then 
	Talkplus(2146);--56, "龙姑娘也来了，在这里多呆些日子，我有话和你说。"
	Talkplus(2147);--59, "姊姊，别来无恙。"
end;
Talkplus(2148);--0, "原来大家都是一家人。"
Talkplus(2149);--55, "记着，虽然现在你已经称得上是一名侠者，但是如何保持下去才是更为重要。"
ModifyEvent(-2, -2, 0, -1, 2095, -1, -1, -1, -1, -1, -1, -2, -2);
do return end;