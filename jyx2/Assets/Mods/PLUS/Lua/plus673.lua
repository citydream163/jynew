Talkplus(3213);--0, "哇，真香。流浪在外这么久，闻到这味道，不禁怀念起妈妈来了。"
Talkplus(3214);--75, "小兄弟，别客气。想吃什么就跟我林厨子说一声。"
Talkplus(3215);--0, "老伯伯，你煮的菜好像都很好吃耶，闻起来都很香。"
Talkplus(3216);--75, "其实啊，做菜没什么秘诀，只要有着一颗为食用者着想的心即可。"
Talkplus(3217);--0, "“为食用者着想的心”？＜听起来好像料理漫画中的名言＞"
Talkplus(3218);--75, "是的。一个厨师不能只想到要将自己的菜做得多色香味俱全，而应该想着是什么人要吃你这道菜，怎样的口味是最适合他，而去调理。因为这道菜终究是要给人吃的，而不是拿来观赏或评论的。总之，就是在做菜的时候，就要尽可能的为食用者去着想。"
Talkplus(3219);--0, "那林师父最擅长的拿手菜是什么？"
Talkplus(3220);--75, "一时也说不尽．比如说是炒白菜啦，蒸豆腐啦，炖鸡蛋啦，白切肉……"
Talkplus(3221);--0, "可是听起来好像都是一些很平常的菜肴。"
Talkplus(3222);--75, "年轻人，要知真正的烹调高手，愈是在平凡的菜肴中，愈能显出真实的本领。你也是学武的吧，其实这道理跟武学一般，能在平淡之中现神奇，才说得上是大宗匠的手段。"
Talkplus(3223);--0, "……"
Talkplus(3224);--75, "你好好想一想吧。想通了对你武学也是大有助益。"
ModifyEvent(-2, -2, -2, -2, 674, -1, -1, -2, -2, -2, -2, -2, -2);--by fanyu 启动脚本674 场景32-编号0
local teammates={};
for y = 1,GetTeamMembersCount() do
	teammates[y] = GetTeammates(y);
end
for x = 1,#teammates do
	local runtime = CS.Jyx2.GameRuntimeData.Instance:GetRole(teammates[n]);
	if (runtime.IQ > 39 + difficulty*15) and runtime.IQ < 75 then
		runtime.IQ = runtime.IQ + math.random(2, 4);
	end
end
ModifyEvent(-2, 5, 1, 1, 2012, -1, -1, -2, -2, -2, -2, -2, -2);--by citydream启动脚本-2012。当前场景-5
do return end;
