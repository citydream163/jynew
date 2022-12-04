Talkplus(2327);--0, "小和尚，借个位……"
Talkplus(2328);--49, "佛观一钵水，八万四千虫，若不持此咒，如食众生肉。唵缚悉波罗摩尼莎诃"
Talkplus(2329);--0, "小师父，你叽哩咕噜念什么咒啊？"
Talkplus(2330);--49, "小僧念的是饮水咒。佛说每一碗水中，有八万四千条小虫，出家人戒杀，因此要念了饮水咒，这才喝得……"
Talkplus(2331);--0, "这水干净得很，一条虫子也没有，小师父真会说笑。"
Talkplus(2332);--49, "施主有所不知。我辈凡夫看来，水中自然无虫，但我佛以天眼看水，却看到水中小虫成千上万。"
Talkplus(2333);--0, "那你念了饮水咒之后，将八万四千条小虫喝入肚中，那些小虫便不死了？"
Talkplus(2334);--49, "这……这个……师父倒没教过。多半小虫便不死了。"
Talkplus(2335);--0, "对了，小和尚怎么一个人在此，是要准备前往西方取经的吗？"
Talkplus(2336);--49, "不是，我是和师父他们走丢了，正想办法该如何回少林寺去。"
Talkplus(2337);--0, "哦，原来是少林寺的高僧，武功定是很高喽！"
Talkplus(2338);--49, "哪里，小僧武功低微，在寺中是打杂的。"
ModifyEvent(-2, -2, -2, -2, 499, -1, -1, -2, -2, -2, -2, -2, -2);
if jyx2_CheckEventCount(49,333,0) == 0 then Add3EventNum(49,333,Calendar(2),0,0) end;--初识虚竹计数器
if AskJoin() == true then goto label0 end;
Talkplus(2339);--0, "小和尚，那改天我们少林寺再见。"
do return end;
::label0::
Talkplus(2340);--0, "既然如此，小和尚要不要和我一起走，我知道回少林的路。"
if JudgeEthics(0, 75, 100) == true then goto label1 end;
Talkplus(2341);--49, "不用了，小僧自己找路回少林即可。倒是施主眼神中充满戾气，恐入魔道，望施主能即时回头。"
do return end;
::label1::
if TeamIsFull() == false then goto label2 end;
Talkplus(2342);--49, "你的队伍已满，我无法加入。"
do return end;
::label2::
Talkplus(2343);--49, "好啊。"
DarkScence();
jyx2_ReplaceSceneObject("", "NPC/xuzhu", "");--xuzhu加入队伍
ModifyEvent(-2, 2, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
ModifyEvent(-2, 15, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2);
LightScence();
Join(49);
AddEthics(3);
do return end;