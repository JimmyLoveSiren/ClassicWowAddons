--Mini Dragon (projecteurs[at]gmail.com)
--Last update: 2020/2/24

if GetLocale() ~= "zhCN" then return end
local L

-----------------
--  Razorgore  --
-----------------
L = DBM:GetModLocalization("Razorgore")

L:SetGeneralLocalization{
	name = "狂野的拉佐格尔"
}
L:SetTimerLocalization{
	TimerAddsSpawn	= "小怪重生"
}
L:SetOptionLocalization{
	TimerAddsSpawn	= "为第一次小怪重生显示计时器"
}
L:SetMiscLocalization{
	Phase2Emote	= "在宝珠的控制力消失的瞬间，奈法利安的部队逃走了。",
	YellPull 	= "入侵者闯进了孵化间！我们要不惜一切代价保护龙蛋！"
}
-------------------
--  Vaelastrasz  --
-------------------
L = DBM:GetModLocalization("Vaelastrasz")

L:SetGeneralLocalization{
	name	= "堕落的瓦拉斯塔茲"
}

L:SetMiscLocalization{
	Event	= "太迟了，朋友！奈法利斯的腐化已经掌握了我……我已经无法……控制我自己了。"
}
-----------------
--  Broodlord  --
-----------------
L = DBM:GetModLocalization("Broodlord")

L:SetGeneralLocalization{
	name	= "勒什雷尔"
}

L:SetMiscLocalization{
	Pull	= "你怎么进来的？你们这种生物不能进来！我要毁灭你们！"
}

---------------
--  Firemaw  --
---------------
L = DBM:GetModLocalization("Firemaw")

L:SetGeneralLocalization{
	name = "费尔默"
}

---------------
--  Ebonroc  --
---------------
L = DBM:GetModLocalization("Ebonroc")

L:SetGeneralLocalization{
	name = "埃博诺克"
}

----------------
--  Flamegor  --
----------------
L = DBM:GetModLocalization("Flamegor")

L:SetGeneralLocalization{
	name = "弗莱格尔"
}

------------------
--  Chromaggus  --
------------------
L = DBM:GetModLocalization("Chromaggus")

L:SetGeneralLocalization{
	name = "克洛玛古斯"
}
L:SetWarningLocalization{
	WarnBreath		= "%s"
}
L:SetTimerLocalization{
	TimerBreathCD	= "%s冷却",
	TimerBreath		= "%s施法",
	TimerVulnCD		= "无敌冷却"
}
L:SetOptionLocalization{
	WarnBreath		= "为克洛玛古斯其中一格吐息显示警告",
	TimerBreathCD	= "显示吐息冷却",
	TimerBreath		= "显示吐息施法",
	TimerVulnCD		= "显示无敌CD"
}
L:SetMiscLocalization{
	Breath1	= "第一次吐息",
	Breath2	= "第二次吐息",
	VulnEmote	= "%s的皮肤闪着微光，它畏缩了。"
}

----------------
--  Nefarian  --
----------------
L = DBM:GetModLocalization("Nefarian-Classic")

L:SetGeneralLocalization{
	name = "奈法利安"
}
L:SetWarningLocalization{
	WarnAddsLeft		= "还剩%d个小怪",
	WarnClassCall		= "%s呼喊",
	WarnPhase			= "第%s阶段"
}
L:SetTimerLocalization{
	TimerClassCall		= "%s呼喊结束"
}
L:SetOptionLocalization{
	TimerClassCall		= "为职业呼喊持续时间显示计时器",
	WarnClassCall		= "提示职业呼喊",
	WarnPhase			= "提示转换阶段"
}
L:SetMiscLocalization{
	YellP1		= "比赛开始！",
	YellP2		= "干得好，我的手下。凡人的勇气开始消退了！现在，现在让我们看看他们如何应对黑石塔的真正主人的力量！！！",
	YellP3		= "不可能！出现吧，我的仆人！再次为你们的主人效力！",
	YellShaman	= "萨满祭司，让我看看你们的图腾到底是干什么用的！",
	YellPaladin	= "圣骑士……听说你们有无数条命。让我看看到底是怎么样的吧。",
	YellDruid	= "德鲁伊和你们愚蠢的变形法术。让我们看看有什么事情会发生吧！",
	YellPriest	= "牧师们！如果你们要继续这么治疗的话，那我们就来玩点有趣的东西吧！",
	YellWarrior	= "战士们，我知道你们应该更凶猛一些！让我们来见识一下吧！",
	YellRogue	= "潜行者？不要躲躲藏藏了，勇敢地面对我吧！",
	YellWarlock	= "术士们，不要随便去尝试那些你们根本不理解的法术。看到后果了吧？",
	YellHunter	= "猎人们，还有你们那些讨厌的玩具枪！",
	YellMage	= "你们也是法师？小心别玩火自焚……",
	YellDK		= "死亡骑士士们……来这。",
	YellMonk	= "武僧？？？……又是什么？？？"
}
