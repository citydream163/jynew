Talkplus(512);--0,"看你的样子，你大概就是金花婆婆吧。快放了王前辈，否则要你吃不完兜着走。"
Talkplus(513);--15,"胡青牛老眼昏花了是不是，叫了个小子来送死。小子，我看你年纪轻轻的，快走吧，别自讨苦吃了。"
Talkplus(514);--0,"你活生生的拆散人家夫妻，我就是看不惯，这档事我管定了。"
Talkplus(515);--15,"本来想这不关你的事，你非要管，我就让你这不知天高地厚的小子吃点苦头。"
if TryBattle(14) == false then goto label0 end;
ModifyEvent(-2, -2, -2, -2, 100, -1, -1, -2, -2, -2, -2, -2, -2);
SetScenceMap(-2, 1, 21, 17, 0);
jyx2_FixMapObject("灵蛇岛开门",1); 
LightScence();
Talkplus(516);--0,"老婆婆，我想请问你天有多高，地有多厚啊？我真的不知道耶！"
Talkplus(517);--15,"哼！"
AddRepute(3);
do return end;
::label0::
ModifyEvent(-2, -2, -2, -2, 102, -1, -1, -2, -2, -2, -2, -2, -2);
SetFlag("ShowLocationName.灵蛇岛",1);--大地图显示当前地图名
LightScence();
Talkplus(518);--15,"看你资质挺好的，老婆婆我不想杀你，你走吧。"
do return end;