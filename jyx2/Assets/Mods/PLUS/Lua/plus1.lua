Talkplus(1);--1,"小兄弟，到此寒天雪地，不知有何指教？"
Talkplus(2);--0,"请问你是胡斐胡大哥吗？"
Talkplus(3);--1,"正是在下。"
Talkplus(4);--0,"听说大哥外号“雪山飞狐”，刀法变幻莫测，轻功也有如飞天狐狸般的敏捷。"
Talkplus(5);--1,"敢情你是来考较我功夫的，那就动手吧！"
Talkplus(6);--0,"不是的，我来是想问你有关一本书的下落……"
Talkplus(7);--1,"哼！又是来找《雪山飞狐》的狂妄小子。废话休说，动手吧！"
ModifyEvent(-2, -2, -2, -2, 2, -2, -2, -2, -2, -2, -2, -2, -2);
SetFlag("ShowLocationName.胡斐居",1);--大地图显示当前地图名
if jyx2_CheckEventCount(1,333,0) == 0 then Add3EventNum(1,333,Calendar(2),0,0) end;--初识胡斐计数器
do return end;