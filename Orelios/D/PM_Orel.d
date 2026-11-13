BEGIN PMOrel

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Intro0
SAY ~这旅店里就没有一间房是冒险者不会闯进来的吗？~
IF ~~ THEN REPLY ~抱歉，什么？~ GOTO Intro1
IF ~~ THEN REPLY ~不必动怒，我这就走。~ EXIT
END

IF ~~ THEN BEGIN Intro1
SAY ~你是冒险者，对吧？你的礼数一看就是。你有事吗？~
IF ~~ THEN REPLY ~只是逛逛这些后屋。阁下是哪位？~ GOTO Intro6
IF ~~ THEN REPLY ~你最好注意跟我说话的口气，陌生人。我想做什么就做什么，明白吗？~ GOTO Intro7
END

IF ~~ THEN BEGIN Intro2
SAY ~“不想多嘴打听”？当真？唉，无妨。那么，幸会，<CHARNAME>，不过我还是要问：你到底要什么？我正享受着独处。打个比方而已。~
IF ~~ THEN REPLY ~其实我更想多了解你。我不认识多少人会觉得这种地方让人放松，而你的穿着……很特别。~ GOTO Intro3
IF ~~ THEN REPLY ~我本希望你能告诉我一些事情。~ GOTO CCQuery
IF ~~ THEN REPLY ~眼下没有。我告辞了。~ EXIT
END

IF ~~ THEN BEGIN Intro3
SAY ~那也够了。具体是什么引起你的兴趣？~
IF ~~ THEN REPLY ~你到底是做什么的？你的穿着我在此地从未见过。~ GOTO Selfgab1
IF ~~ THEN REPLY ~你是哪里人？我在阿斯卡特拉待得不久，可你仍不像安姆本地人。~ GOTO Selfgab2
IF ~~ THEN REPLY ~其实，让我问点别的。~ GOTO CCQuery
IF ~~ THEN REPLY ~算了，我得走了。~ EXIT
END

IF ~~ THEN BEGIN Intro4
SAY ~嗯？~
IF ~~ THEN REPLY ~我想多了解你一些。~ GOTO Intro3
IF ~~ THEN REPLY ~我本希望你能告诉我一些事情。~ GOTO CCQuery
IF ~~ THEN REPLY ~告辞。~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN Intro5
SAY ~你又回来了。你需要什么？~
IF ~~ THEN REPLY ~我想谈谈你。~ GOTO Intro3
IF ~~ THEN REPLY ~我本希望你能告诉我一些事情。~ GOTO CCQuery
IF ~~ THEN REPLY ~你若想找点刺激，我正在找人加入我的队伍。~ GOTO Join1
IF ~~ THEN REPLY ~现在没什么。我告辞了。~ EXIT
END

IF ~~ THEN BEGIN Intro6
SAY ~我也可以问你同样的问题，不是吗？嗯，好吧。我叫奥雷利奥斯。~
= ~我得说，我今天可没料到会被审问。我猜你有名字吧？~
IF ~~ THEN REPLY ~<CHARNAME>。幸会。我不想多嘴，可你看上去太齐整了，不像是会在这种藏污纳垢之处闲坐的人。~ GOTO Intro2
END

IF ~~ THEN BEGIN Intro7
SAY ~恕我失礼，<PRO_SIRMAAM>，那只是一时判断失当。我们别做陌生人了，好吗？阁下是哪位？~
IF ~~ THEN REPLY ~我叫<CHARNAME>，我有问题要问。~ GOTO Intro3
IF ~~ THEN REPLY ~不关你的事。我跟你没什么好说的了。~ EXIT
END

IF ~~ THEN BEGIN Selfgab1
SAY ~我血里是军人，行当上却是武士苦修者——如果你把这称作行当的话。俗话叫“武僧”，我想；不过也确实有武僧不修我这样的技艺。~
IF ~~ THEN REPLY ~恕我跟不上。血里是军人？~ GOTO Selfgab3
IF ~~ THEN REPLY ~那是什么技艺？~ GOTO Selfgab4
IF ~~ THEN REPLY ~你不是本地人吧？你从哪儿来？~ GOTO Selfgab2
IF ~~ THEN REPLY ~你若没别的要紧事，我身边正用得上你这样的人。愿意随我同行吗？~ GOTO Join1
IF ~~ THEN REPLY ~有趣。让我问点别的。~ GOTO CCQuery
IF ~~ THEN REPLY ~明白了。我必须走了，也许稍后再来。告辞。~ EXIT
END

IF ~~ THEN BEGIN Selfgab2
SAY ~不，确实如此，我在这片土地上是外乡人。我来自阿格拉隆德，在坠星海对岸极东之处。我近一年半前启程来此，可在阿斯卡特拉只待了约一个月。~
IF ~~ THEN REPLY ~你的行当呢？你做什么？~ GOTO Selfgab1
IF ~~ THEN REPLY ~明白了。跟我说点别的。~ GOTO CCQuery
IF ~~ THEN REPLY ~在此等我，我会回来。~ EXIT
END

IF ~~ THEN BEGIN Selfgab3
SAY ~我父亲与母亲都曾在阿格拉隆德守土效力，先是在伊莉奥娜女王麾下，后在今日执政的辛布尔麾下。我曾循他们的路走了一段，但已不再。~
IF ~~ THEN REPLY ~明白了。你先前提到自己有战士的技艺。你会些什么？~ GOTO Selfgab4
IF ~~ THEN REPLY ~我想问点别的。~ GOTO Intro3
IF ~~ THEN REPLY ~我正用得上你这样的人。你可愿意加入我？~ GOTO Join1
END

IF ~~ THEN BEGIN Selfgab4
SAY ~身为苦修者，我选择不用传统铠甲，主要凭自己的肉身在战斗中迎敌，不过若情势真正需要，我也能用某些武器。苦修者的生活就是弃绝与自律，而从这类事中，人能得一种……特别的力量。~
IF ~~ THEN REPLY ~“特别的力量”？听着让人兴奋。多说些。~ GOTO Selfgab5
IF ~~ THEN REPLY ~你听着相当能干。我若邀你加入我的队伍，你怎么说？~ GOTO Join1
IF ~~ THEN REPLY ~在此等我，我会回来。~ EXIT
END

IF ~~ THEN BEGIN Selfgab5
SAY ~那叫“气”。凭它，我能让自己疾行、避伤、窥破敌人破绽，甚至治愈肉身之伤。我只需凝神。可我不是狂战士——我最有效的战法是持重与谋略。~
IF ~~ THEN REPLY ~嗯，明白了。我这些本事能派上大用。你可愿意随我同行？~ GOTO Join1
IF ~~ THEN REPLY ~跟我说点别的。~ GOTO Intro3
END

IF ~~ THEN BEGIN Join1
SAY ~你对随便遇到的人就这样开口？唉，我想我在这地方待得够久了。为什么？你要我协助你做什么？~
IF ~~ THEN REPLY ~我在追一个疯癫的大法师，名叫爱瑞尼克斯。他绑走了我义妹爱蒙，我要把她从他的残暴中救出来。~ GOTO Accept1
IF ~~ THEN REPLY ~一个名叫爱瑞尼克斯的法师袭击并挑衅了我。我要向他复仇。~ GOTO Accept2
IF ~~ THEN REPLY ~唉，算了。我也许会再来，在此等我。~ EXIT
END

IF ~~ THEN BEGIN Accept1
SAY ~我想，这是个值得的目标。我会助你救出这位爱蒙。带路吧。~
IF ~~ THEN REPLY ~好，我们出发。~ DO
~SetGlobal("OreliusJoinrf","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN Accept2
SAY ~你若所言属实，我不反对助你复仇。带路吧。~
IF ~~ THEN REPLY ~好，我们出发。~ DO
~SetGlobal("OreliusJoinrf","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN CCQuery
SAY ~你想知道什么？~
IF ~~ THEN REPLY ~我想买些……特别的装备。你知道哪里能办到吗？~ GOTO CCDuh1
IF ~~ THEN REPLY ~这附近有什么能挣钱的冒险，你有建议吗？~ GOTO CCDuh2
IF ~~ THEN REPLY ~其实，我们谈点别的。~ GOTO Intro4
IF ~~ THEN REPLY ~告辞。~ EXIT
END

IF ~~ THEN BEGIN CCDuh1
SAY ~这里是安姆，商人遍地。铜冠酒馆的伯纳德这儿有许多东西可买，沃金步道的冒险者市场是我行旅中所见存货较好的装备店之一，虽然我用不上。你若想找奇珍装备，冒险者市场二楼有个女人卖这类东西。带上你能扛得动的金币。~
IF ~~ THEN REPLY ~多谢。我还有关于阿斯卡特拉的问题。~ GOTO CCQuery
IF ~~ THEN REPLY ~有趣。我们谈点别的。~ GOTO Intro4
END

IF ~~ THEN BEGIN CCDuh2
SAY ~到此之后我没怎么做冒险的事。能避则避，我不愿独自招惹危险。不过我注意到，这走廊尽头常有许多奇怪的动静，我相信附近有通往贫民区下水道的入口。那里该有各式各样的危险。~
= ~此外，我在神殿区敬神时，屡屡注意到有些相当粗野的人夜里在街上走动。我猜，一个好奇的冒险者只要搜得够仔细，就能在这片地方找到一处行不法之事的巢穴。也许就在那边某座宅院里。~
IF ~~ THEN REPLY ~多谢。我还有关于阿斯卡特拉的问题。~ GOTO CCQuery
IF ~~ THEN REPLY ~有趣。我们谈点别的。~ GOTO Intro4
END

BEGIN PMOrelP

IF ~Global ("OreliusJoinrf","LOCALS",1)~ THEN BEGIN LeaveGroup
SAY ~那我们的缘分就到头了？若是如此，我就留在此地。我有许多要冥想。~
IF ~~ THEN REPLY ~还不是。你该留下。~ DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY ~也许留一段时间。我若需要你，会回来。~ DO ~SetGlobal("OreliusJoinrf","LOCALS",0)~ EXIT
END

IF ~Global("OreliusJoinrf","LOCALS",0)~ THEN BEGIN ComeBack
SAY ~你又回来了。还需要我相助吗？~
IF ~~ THEN REPLY ~是。再入队吧。~ DO ~SetGlobal("OreliusJoinrf","LOCALS",1) JoinParty()~ EXIT
IF ~~ THEN REPLY ~眼下不用。留在此地。~ EXIT
END
