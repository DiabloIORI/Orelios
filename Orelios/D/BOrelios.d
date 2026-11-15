BEGIN Borelios

CHAIN
IF ~InParty("PMOrel")
InParty(Player1)
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("PMOrelTalk","GLOBAL",1)~
THEN Borelios OrelBant1
~你不是安姆人，对吧？我在此待得够久，一眼就认得出安姆人，而你显然不是。~ [PM_Orelg]
DO ~IncrementGlobal("PMOrelTalk","GLOBAL",1)~
END
IF ~~THEN REPLY ~不，我不是。我们是从北边来的，博德之门附近。爱蒙和我是在一个叫烛堡的海边地方长大的。~ + OrelBant1-2
IF ~~THEN REPLY ~奥雷利奥斯，我现在没心思谈。让我静静。~ + PM_OrelEx1-1

CHAIN
IF ~~ THEN Borelios OrelBant1-2
~烛堡？当真？~
END
IF ~~ THEN REPLY ~是的。这有那么难以置信吗？~ + OrelBant1-3
IF ~~ THEN REPLY ~这让你不安吗？~ + OrelBant1-3

CHAIN
IF ~~ THEN Borelios OrelBant1-3
~不，只是……嗯，那地方连我来的地方都很有名，可我从没听人把它说成适合养孩子的地方。~
END
IF ~~ THEN REPLY ~我后来渐渐喜欢上了那地方，还有那里的人。我在那儿觉得有家人，虽然我们并无血缘。~ + OrelBant1-5
IF ~~ THEN REPLY ~那确实不寻常，是的，但我们的监护人已尽力而为了。~ + OrelBant1-4
IF ~~ THEN REPLY ~若我有选择，我会住在没那么憋闷的地方。但我将就了。~  + OrelBant1-6

CHAIN
IF ~~ THEN Borelios OrelBant1-4
~我能想象人得怎样适应那样的环境。我们都尽力为所爱之人营造安适的家，可往往只能用手里有的东西尽量去做。这点我很清楚。~
END
IF ~~ THEN REPLY ~你在阿格拉隆德有家人？~ + OrelBant1-7
IF ~~ THEN REPLY ~实在抱歉打断，可我们有比追忆更要紧的事。~ + PM_OrelEx1-1

CHAIN
IF ~~ THEN Borelios OrelBant1-5
~啊，那要离开他们想必不容易。我是过了许多年，才问心无愧地离开家人上路的。~
END
IF ~~ THEN REPLY ~你为了冒险离开家人？~ + OrelBant1-A
IF ~~ THEN REPLY ~我们有更要紧的事要办。以后再谈。~ EXIT

CHAIN
IF ~~ THEN Borelios OrelBant1-6
~啊，我早该看出你是个捣蛋鬼。希望你没给长辈太多苦头。~
END
IF ~~ THEN REPLY ~只给了他们要的那些。你想象不到，跟那么多心思单一的人一起关在那地方有多憋闷。~ + OrelBant1-B
IF ~~ THEN REPLY ~说实话，也没那么糟。爱蒙和我是那儿仅有的孩子，大人给我们留了做孩子的余地。~ + OrelBant1-C

CHAIN
IF ~~ THEN Borelios OrelBant1-7
~是的。我在阿格拉隆德有一对双胞胎女儿，如今都长大了。父亲在营房，母亲在里利凡的神殿，她们的童年算不上寻常。~
= ~但如你所说，我们已经尽力。人只能做到这些。~
END
IF ~~ THEN REPLY ~有时我会想，事情本可以是另一番样子，我本可以是另一番人。~ + OrelBant1-8
IF ~~ THEN REPLY ~我不怪葛立安。我的麻烦不怪他。他只做了他认为对的事。~ + OrelBant1-9

CHAIN
IF ~~ THEN Borelios OrelBant1-8
~那样想也许很诱人，可追想“本可以如何”也逃不开过去。~
= ~再说，若像你这样的<PRO_MANWOMAN>能作例证，那就是说人不必有安适的起点也能在日后出类拔萃。我跟你相处不久，连我也看得出来。~
END
IF ~~ THEN REPLY ~我领会你的好意，可这生活并非没有艰难。~ + PM_OrelEx1-2

CHAIN
IF ~~ THEN Borelios OrelBant1-9
~你不怀怨怼，这很好。悔恨只会削弱你，削弱你往前的决心。~
END
IF ~~ THEN REPLY ~你没有悔恨？~ + PM_OrelEx1-3

CHAIN
IF ~~ THEN Borelios OrelBant1-A
~不是无情的那种。我直到孩子长大才离开阿格拉隆德。我想你的离开要难得多。~
END
IF ~~ THEN REPLY ~他们对你离开怎么看？~ + OrelBant1-D
IF ~~ THEN REPLY ~我应付得还好，只是爱蒙被绑这事刺痛了我。~ +PM_OrelEx1-4

CHAIN
IF ~~ THEN Borelios OrelBant1-B
~我一直在军人中间生活，所以对严苛的秩序不陌生。不过我想它合我的性子。~
= ~可对孩子来说，我看得出那会怎样压抑心气。我尽量让女儿们避开军旅生活里较冷硬的那些方面。~
END
IF ~~ THEN REPLY ~那结果如何？~ GOTO PM_OrelEx1-5

CHAIN
IF ~~ THEN Borelios OrelBant1-C
~哦？那很好。尽管我喜爱章法，我也明白少年时需要自由。我亏欠孩子们一份宽纵。~
END
IF ~~ THEN REPLY ~结果如你所愿吗？~ + PM_OrelEx1-5
IF ~~ THEN REPLY ~无意冒犯，奥雷利奥斯，可我总觉得你不像那种温厚顾家的人。~ + PM_OrelEx1-6

CHAIN
IF ~~ THEN Borelios OrelBant1-D
~那没伤到她们，如果你是这个意思。我的伴侣希尔梅在里利凡的神殿做事，我们的女儿如今各有各的生活，已不在我身边。~
= ~离开并不容易，可没有我也过得很好。~
END
IF ~~ THEN REPLY ~说实话，我很难相信他们没反对你的出行打算。~ + PM_OrelEx1-7

CHAIN
IF ~~ THEN Borelios PM_OrelEx1-1
~明白了。那我们继续吧。~
END
IF ~~ THEN REPLY ~走吧。~ EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx1-2
~当然，可你应对得很好，也因此更好。来，我们继续上路。~
END
IF ~~ THEN REPLY ~走吧。~ EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx1-3
~我确实有过。人生到某个阶段，你就得放手。不过我们耽搁太久了，以后再谈。~
END
IF ~~ THEN REPLY ~好。~ EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx1-4
~那我们就为她的自由更加努力。继续走吧。~
END
IF ~~ THEN REPLY ~很好。~ EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx1-5
~事实上相当好。我的女儿们独立又快乐，至少她们一向如此。~
= ~可这一天的闲话实在太多了。我们该专心手头的事。~
END
IF ~~ THEN REPLY ~确实。以后再谈。~ EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx1-6
~无意冒犯也不妨，我可以向你保证，再严酷的战士，在孩子面前心也是暖的。我努力记着她们教给我的东西。~
= ~啊，我们在这闲话上耽搁太久了。有活要干，动手吧。~
END
IF ~~ THEN REPLY ~确实。以后再谈。~ EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx1-7
~他们也许难过，可他们懂我，也懂是什么驱使我。我对他们尽了责，如今我在走自己的路。事情只能如此。~
= ~不过我们谈够了。老想着家乡会招来愁绪，那对你的事没有好处。~
END
IF ~~ THEN REPLY ~好吧。我们走。~ EXIT

CHAIN
IF ~InParty("PMOrel")
InParty(Player1)
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("PMOrelTalk","GLOBAL",2)~
THEN Borelios OrelBant2
~若不介意谈她，我想多了解这位爱蒙。~[PM_Orelx]
DO ~IncrementGlobal("PMOrelTalk","GLOBAL",1)~
END
IF ~~ THEN REPLY ~我们一起在烛堡长大。她像我的姐妹，也是极好的朋友。~ + OrelBant2-1
IF ~~ THEN REPLY ~爱蒙和我是烛堡里仅有的孩子。她多半时候都在捣乱，可她让那地方好过些。~ + OrelBant2-1
IF ~~ THEN REPLY ~她是个讨人烦的东西。我都忘了当初为什么容她做伴。~ + OrelBant2-2
IF ~~ THEN REPLY ~我介意。让我静静，奥雷利奥斯。~ + PM_OrelEx2-1

CHAIN
IF ~~ THEN Borelios OrelBant2-1
~嗯，好。那你们后来怎么成了上路冒险的人？是烛堡容不下你们吗？~
END
IF ~~ THEN REPLY ~是容不下，可还有别的原因。我们的养父葛立安带我走，是为了保我平安，可没能成。~ + OrelBant2-3
IF ~~ THEN REPLY ~我的养父把我留在那地方，是为了让我避开我血脉中的力量。命运另有安排。~ + OrelBant2-5
IF ~~ THEN REPLY ~那算是场意外。我们离了堡，可我们的监护人葛立安被杀。我们回去的可能也随他死了。我们别无选择。~ + OrelBant2-4

CHAIN
IF ~~ THEN Borelios OrelBant2-2
~既然她能撑到你们到安姆，她对你总该有些用处。~
END
IF ~~ THEN REPLY ~在她决定试手魔法之前，她算个过得去的盗贼。她什么都不算最好，但我想她有用。~ + OrelBant2-G

CHAIN
IF ~~ THEN Borelios OrelBant2-3
~保你避开什么？发生了什么？~
END
IF ~~ THEN REPLY ~我们被一伙凶手拦劫，领头的叫萨瑞沃克，是我的兄长，他觊觎我们血脉中的力量。他杀了葛立安来取我，可我逃了。~ + OrelBant2-5
IF ~~ THEN REPLY ~这是个敏感话题。你必须答应不向任何人提。~ + OrelBant2-6
IF ~~ THEN REPLY ~我不想谈这个。我们得结束这场对话。~ + PM_OrelEx2-1

CHAIN
IF ~~ THEN Borelios OrelBant2-4
~在我听来，那不像意外。从你的语气看，这不是单纯的偶然。~
END
IF ~~ THEN REPLY ~不是。葛立安想在旅途中护我，可他失败了。~ + OrelBant2-3

CHAIN
IF ~~ THEN Borelios OrelBant2-5
~“我血脉中的力量”？我不明白……~
END
IF ~~ THEN REPLY ~我会向你解释，可你必须发誓保守这秘密。~ + OrelBant2-6
IF ~~ THEN REPLY ~葛立安被我兄长所杀，他要杀我，是为了承继我们父亲巴尔的力量。~ + OrelBant2-7
IF ~~ THEN REPLY ~当我什么都没说。我们继续走吧。~ + PM_OrelEx2-1

CHAIN
IF ~~
THEN Borelios OrelBant2-6
~我向你保证。告诉我。~
DO ~SetGlobal("PMBloodPromise","GLOBAL",1)~
END
IF ~~ THEN REPLY ~葛立安被我兄长所杀，他要杀我，是为了承继我们父亲巴尔的力量。~ + OrelBant2-7

CHAIN
IF
~~
THEN Borelios OrelBant2-7
~“杀戮之主终将殒灭，但其劫数之中将诞下二十个凡胎子嗣，混乱将随其行迹播撒。”看来阿劳多之预言已成真。~
= ~我不知道该说什么。~
DO ~SetGlobal("PM_Bhaalspawn","GLOBAL",1)~
END
IF ~~ THEN REPLY ~我知道这听着糟。但请信我，我正拼了命把这事扶正。~ + OrelBant2-8
IF ~~ THEN REPLY ~嘿，我也一样！我只想着低头过日子。这不是我要的。~ + OrelBant2-9
IF ~~ THEN REPLY ~有什么好说的？我得到了一个惊天的机会。强大的力量在等我。~ + OrelBant2-0
IF ~~ THEN REPLY ~没什么好说的。我们到此为止。~ EXIT

CHAIN
IF ~~ THEN Borelios OrelBant2-8
~既如此，我会尽力助你。这事我得想一阵。谢谢你坦率相告。~
END
IF ~~ THEN REPLY ~以后再谈。~ EXIT

CHAIN
IF ~~ THEN Borelios OrelBant2-9
~若阿劳多所写属实，那就不可能了。你的血亲已来取你的血，往后必然还有。~
= ~你得把这事走到它的尽头，无论那是什么。~
END
IF ~~ THEN REPLY ~我总还能抱着希望，不是吗？~ + OrelBant2-A
IF ~~ THEN REPLY ~我想你说得对。我不确定自己有没有那份力量。~ + OrelBant2-B

CHAIN
IF ~~ THEN Borelios OrelBant2-0
~小心行事。我不信巴尔布下这么远的局，只为把力量留给一个凡人去篡夺。~
END
IF ~~ THEN REPLY ~谁说得准？谁说得准巴尔不是个没脑子的享乐之徒？~ + OrelBant2-C
IF ~~ THEN REPLY ~哦，我当然要。可别弄错，我完全有能力应付前面的一切挑战。~ + OrelBant2-D

CHAIN
IF ~~ THEN Borelios OrelBant2-A
~难说。我们面对的是诸神的意志。但若这能安你的心，我会在你身边帮你。~
END
IF ~~ THEN REPLY ~唉，好吧。那就入局吧。~ + PM_OrelEx2-1

CHAIN
IF ~~ THEN Borelios OrelBant2-B
~你毕竟走到了这一步，不是吗？有点信心。就算不为你自己，也为你朋友。~
END
IF ~~ THEN REPLY ~嗯，你这么说……那我就试试。带路吧。~ + PM_OrelEx2-1

CHAIN
IF ~~ THEN Borelios OrelBant2-C
~掌权者会设法保权，而诸神永远在谋划。~
END
IF ~~ THEN REPLY ~可他已经失了力量——巴尔如今死了，他的领域归了塞瑞克。~ + OrelBant2-F

CHAIN
IF ~~ THEN Borelios OrelBant2-D
~也许吧，可我不会那么自负。骄横曾打倒比你更强的人，你父亲就在其中。~
END
IF ~~ THEN REPLY ~好吧，可你迟早会看到我是对的。~ + PM_OrelEx2-2
IF ~~ THEN REPLY ~哼，你该多点信心。我就要成了，我感觉得到。~ + PM_OrelEx2-2

CHAIN
IF ~~ THEN Borelios OrelBant2-E
~诸界满是几乎不可信的事。说来听听。~
END
IF ~~ THEN REPLY ~我会向你解释，可你必须发誓保守这秘密。~ + OrelBant2-6
IF ~~ THEN REPLY ~葛立安被我兄长所杀，他要杀我，是为了承继我们父亲巴尔的力量。~ + OrelBant2-7
IF ~~ THEN REPLY ~当我什么都没说。我们继续走吧。~ + PM_OrelEx2-1

CHAIN
IF ~~ THEN Borelios OrelBant2-F
~那我们就得提防塞瑞克。要明白，我说的只是：你的血脉如此，我们该小心。我们必然会引来远超我们的存在的注意。~
END
IF ~~ THEN REPLY ~你操心太多了。跟着我，奥雷利奥斯。我们会胜过所有来者。~ + PM_OrelEx2-1

CHAIN
IF ~~ THEN Borelios OrelBant2-G
~嗯，你该更看重别人的本事。我怀疑你独自一人做不到你与人合力做到的事。~
END
IF ~~ THEN REPLY ~你似乎总在怀疑我。总有一天我会让你看到，只要你在场。~ + OrelBant2-D
IF ~~ THEN REPLY ~你话太多了，我腻了。离我远点。~ + PM_OrelEx2-1

CHAIN
IF ~~ THEN Borelios PM_OrelEx2-1
~随你。~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx2-2
~也许吧。我们争够了，该继续上路。~
END
IF ~~ THEN REPLY ~你先请。~ EXIT

CHAIN
IF ~InParty("PMOrel")
InParty(Player1)
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("PMOrelTalk","GLOBAL",3)~
THEN Borelios OrelBant3
~那么，你那兄长，杀了葛立安、逼你逃亡的那个……你说他叫萨瑞沃克？~
DO ~IncrementGlobal("PMOrelTalk","GLOBAL",1)~
END
++ ~是，怎么了？~ + OrelBant3-2
++ ~奥雷利奥斯，我现在不太想谈他。~ + PM_OrelEx3-1

CHAIN
IF ~~ THEN Borelios OrelBant3-2
~自你先前提起，我一直在琢磨这名字。它留在我心里，我刚刚才辨出缘由。~
END
++ ~什么缘由？~ + OrelBant3-3
++ ~让我猜。你旅途中碰见过他一次。~ + OrelBant3-4

CHAIN
IF ~~ THEN Borelios OrelBant3-3
~我想起来了，几个月前我路过时，博德之门的商人圈里为一位如此姓氏之人到来闹得沸沸扬扬。我当时没想到是同一个人。~
END
++ ~等等，你去过博德之门？为什么先前不告诉我？~ + OrelBant3-5
++ ~是的，他是在一个叫铁王座的组织里发迹的。那组织原是商人联合体，惯用暴力和欺诈达成目的。萨瑞沃克把他们扭成了自己的意志。~ + OrelBant3-7
++ ~你必定也听说过我。我挫败了萨瑞沃克的图谋，杀了他，颇受传颂。~ + OrelBant3-6
++ ~是，那真有意思。我们能不能专心手头的事？~ + PM_OrelEx3-1

CHAIN
IF ~~ THEN Borelios OrelBant3-4
~并非如此，至少据我所知。这名字是某次逗留博德之门时听来的。我记得他是被人仰慕地议论的对象。~
END
++ ~你为什么拖这么久才告诉我你去过博德之门？我没跟你说过我在那儿的事吗？~ + OrelBant3-5
++ ~你听说他什么？~ + OrelBant3-7
++ ~你也这样听说过我吗？我在那一带的作为颇有名声。~ + OrelBant3-6
++ ~我不想打断，可我们有比追忆我死去的兄长更要紧的事。~ + PM_OrelEx3-1

CHAIN
IF ~~ THEN Borelios OrelBant3-5
~你就这么急着指我背信？我去过许多地方，<CHARNAME>。我在路上遭了场……意外，之后在博德之门待了一阵。那是座大都会，你知道的。我觉得那地方适合养伤。~
END
++ ~哦？你遭遇了什么意外？~ + OrelBant3-8
++ ~我觉得很巧：你做冒险者最初的日子你在那儿，如今又在这儿。~ + OrelBant3-9

CHAIN
IF ~~ THEN Borelios OrelBant3-6
~我不记得有这回事。若如你所说，我必是在你扬名之后才离城。~
END
++ ~你到底在博德之门做什么？~ + OrelBant3-8
++ ~抱歉让你失望，不过我想这谈话最好改日再说。~ + PM_OrelEx3-2

CHAIN
IF ~~ THEN Borelios OrelBant3-7
~如我所说，我到城里时关于他的议论很多。听来颇有魅力，也有野心。~
END
++ ~他觊觎我们父亲的力量，并用铁王座广大的势力挑起博德之门与安姆的冲突，以证明自己配得上那份力量。剑湾运气好，我在那之前拦住了他。~ + OrelBant3-10

CHAIN
IF ~~ THEN Borelios OrelBant3-8
~那是个，呃，很长的故事。你若想听，我可以全讲。~
END
++ ~请尽管讲。~ + OrelBant3-11
++ ~能给我个短版本吗？~  +OrelBant3-12
++ ~不，那就不必了。要紧的是当下，不是过去。我们别再耽搁。~ + PM_OrelEx3-2

CHAIN
IF ~~ THEN Borelios OrelBant3-9
~这有那么难懂吗？我确信有成百上千的人绕弯子走过你的路，缘由与你或你的过去毫无关系。那只是偶然，仅此而已。若这能让你安心，我可以告诉你我为何在博德之门。~
END
++ ~好，说吧。~ + OrelBant3-11
++ ~请快些。我的时间宝贵。~ + OrelBant3-12
++ ~算了，我们有更要紧的事要操心。~ + PM_OrelEx3-1

CHAIN
IF ~~ THEN Borelios OrelBant3-10
~当真？我确实记得号手宣布战争险险被避免。无论怎么衡量都是了不起的功业，朋友。你救了成千上万条命。~
END
++ ~我做了我必须做的。那你为什么在博德之门？说说。~ + OrelBant3-8
++ ~唉，做的时候比事后回味刺激多了。我很高兴又能四处走动。你呢？什么把你带到博德之门？~ + OrelBant3-8

CHAIN
IF ~~ THEN Borelios OrelBant3-11
~如你所知，我原籍阿格拉隆德，远在东方。我从阿格拉隆德雇船到森比亚，再从那里徒步穿过科米尔，然后穿过亡者之野，希望走到剑湾。~
= ~我沿着琴西尔河走，离博德之门约还有一天脚程——我敢打赌——那时我在路边遇到一个抱着腿的年轻人。他呼救、招手叫我，可要看出不对，并不需要什么智者。~
END
++ ~你怎么能确定他不是真需要帮助的人？~ + OrelBant3-14
++ ~强盗可不以花招繁多著称。~ + OrelBant3-13
++ ~啊，老一套的诱敌之策。你玩得开心吗？~ + OrelBant3-13

CHAIN
IF ~~ THEN Borelios OrelBant3-12
~从阿格拉隆德往剑湾的路上，我遭了强盗，我虽毫发无伤地脱身，却丢了一件对我极重要的东西——我孩子母亲的纪念物。我花了几周才追到那些贼，但把我的一切取了回来。就在那段时间，我听说了萨瑞沃克与铁荒。~
END
++ ~如你所知，这两件事有关联。萨瑞沃克用炼金术污染附近的铁矿，让博德之门与安姆互生疑忌。~ + OrelBant3-15
++ ~奥雷利奥斯，你走得真远。我们走吧，这闲话拖住队伍了。~ + PM_OrelEx3-1

CHAIN
IF ~~ THEN Borelios OrelBant3-13
~我知道等着我的是什么——那人待在路南侧，路北是长得足以藏住人形的高草。我不理那人继续走，盼着他的同伙没想到去堵前面的路。果然，一个更大的身形，某个半血食人魔，握着斧头从我前面的草里溜出来。装伤的那个在后面隔一段距离追着。~
= ~只有他们两个。那是我的运气——一个身上只有一包给养的人，看来是容易的目标。他们便松了手。~
= ~那食人魔好对付。我一闪身躲过一斧，就得以一掌稳稳打在他的胸骨上。掌根以正好的角度击在正好的位置，就能把对手的气一下打掉，让肺停一阵。不是致命一击，却是把一场打斗摆正的好机会。~
= ~这时那“受伤”的人已扑到我身上，真叫我懊恼。我没能侧身避过他的冲撞，他的匕首扎进了我的肋侧。我们扭打起来，我把刀从肋侧拔出，一拧手，刀刃便弯折断裂，我自己的力量叫我自己都吃了一惊。~
END
++ ~那时铁荒该正当最盛——那年月，凡未附魔的金属都有变脆的风险。~ + OrelBant3-16

CHAIN
IF ~~ THEN Borelios OrelBant3-14
~求你了，<CHARNAME>。我年轻时也以设这种伏击出名。他连遮掩都没真做——周围没有他能伤到自己的东西，没有驮畜，没有同伴。他还穿着甲。这样拙劣的把戏，我的教头会抽鞭子的。~
END
++ ~嗯，明白了。继续说。~ + OrelBant3-13

CHAIN
IF ~~ THEN Borelios OrelBant3-15
~我先前不知道这事，可这说得通。谢天谢地你在场，没让它失控。~
END
++ ~哦，这样的故事我还有一大堆。来，许多英雄事迹等着我们。~ + PM_OrelEx3-2
++ ~好了，如今我们彼此的故事都全了。这些可满足你的好奇？~ + PM_OrelEx3-3

CHAIN
IF ~~ THEN Borelios OrelBant3-16
~确实，这我后来才知道。没了武器，那强盗在战斗里毫无用处。我制住他，然后跑开，好与那些路匪拉开足够距离，叫他们不敢追。我跑起来比常人快得多，你肯定注意到了。~
END
++ ~是啊。那我猜你是走着去找医者了？~ + OrelBant3-17
++ ~那不可能就是全部。除非你本意是叫人乏味。~ + OrelBant3-18
++ ~你就那样丢下他们？在他们想杀你之后？~ + OrelBant3-19

CHAIN
IF ~~ THEN Borelios OrelBant3-17
~其实到那时，我在旅途中已开始悟出古老的控制身体之法——你最先发觉的是能控制血流、靠凝神加快自然愈合。我受的刀伤无论如何都不致命，因为那蠢货没想到在刃上涂毒或污物。总之，我跑到博德之门，进城才发现袭击时的慌乱把我背包划了个洞。~
= ~我丢了几份可补的干粮，更要紧的是一尊里利凡·拉拉斯刻像——那是我挚爱的希尔梅为我刻制相赠的，是她对我、对我此行的信心。~
END
++ ~你还有别的东西可纪念家人吗？~ + OrelBant3-20
++ ~我可怜那些蠢贼。你接着做了什么？~ + OrelBant3-21

CHAIN
IF ~~ THEN Borelios OrelBant3-18
~当然不是。~
= ~到那时，我在旅途中已开始悟出古老的控制身体之法——你最先发觉的是能控制血流、靠凝神加快自然愈合。我受的刀伤无论如何都不致命，因为那蠢货没想到在刃上涂毒或污物。总之，我跑到博德之门，进城才发现袭击时的慌乱把我背包划了个洞。~
= ~我丢了几份可补的干粮，更要紧的是一尊里利凡·拉拉斯刻像——那是我挚爱的希尔梅为我刻制相赠的，是她对我、对我此行的信心。~
END
++ ~你还有别的东西可纪念家人吗？~ + OrelBant3-20
++ ~我可怜那些蠢贼。你接着做了什么？~ + OrelBant3-21

CHAIN
IF ~~ THEN Borelios OrelBant3-19
~谨慎乃勇武之要。我本可轻易震住他们脱身，可在那种情形下独自杀他们，是艰难又危险的事。我选择以最小的风险与损失撤退。至少当时我是这么想的。~
= ~到那时，我在旅途中已开始悟出古老的控制身体之法——你最先发觉的是能控制血流、靠凝神加快自然愈合。我受的刀伤无论如何都不致命，因为那蠢货没想到在刃上涂毒或污物。总之，我跑到博德之门，进城才发现袭击时的慌乱把我背包划了个洞。~
= ~我丢了几份可补的干粮，更要紧的是一尊里利凡·拉拉斯刻像——那是我挚爱的希尔梅为我刻制相赠的，是她对我、对我此行的信心。~
END
++ ~你还有别的东西可纪念家人吗？~ + OrelBant3-20
++ ~我可怜那些蠢贼。你接着做了什么？~ + OrelBant3-21

CHAIN
IF ~~ THEN Borelios OrelBant3-20
~我有。女儿们做的简单串珠，她们婴儿脚丫的泥印。可我就是受不了丢了那尊刻像……它对希尔梅、对我们俩都太重要了。所以我决心取回它。~
= ~我讨了个人情……一位服役时的旧友已远走斗篷森林，过她祖先的乡野生活、看护那片土地。我们一同在亡者之野追查强盗的行迹一个多星期，终于撞上那些路匪。托泰摩拉的福，那食人魔把它留给了自己。我从他尸身上取回了它。~
= ~所以几个月前我就在博德之门做这些。要不是我大意，我本会更快穿过那里——你找到我时，我甚至可能还不在安姆。看来命运对我有安排。~
END
++ ~我很高兴你找回了你的神像，也很高兴命运把你带到这队伍。~ + PM_OrelEx3-4
++ ~我们俩都是。那真是个精彩的故事，奥雷利奥斯。多谢分享。~ + PM_OrelEx3-5
++ ~至少你把那些混蛋收拾了。他们活该，愚蠢的业余货。~ + PM_OrelEx3-6
++ ~哼，好一套说辞。我还在盯着你，武僧。~ + PM_OrelEx3-7

CHAIN
IF ~~ THEN Borelios OrelBant3-21
~我讨了个人情……一位服役时的旧友已远走斗篷森林，过她祖先的乡野生活、看护那片土地。我们一同在亡者之野追查强盗的行迹一个多星期，终于撞上那些路匪。托泰摩拉的福，那食人魔把它留给了自己。我从他尸身上取回了它。~
= ~所以几个月前我就在博德之门做这些。要不是我大意，我本会更快穿过那里——你找到我时，我甚至可能还不在安姆。看来命运对我有安排。~
END
++ ~我很高兴你找回了你的神像，也很高兴命运把你带到这队伍。~ + PM_OrelEx3-4
++ ~我们俩都是。那真是个精彩的故事，奥雷利奥斯。多谢分享。~ + PM_OrelEx3-5
++ ~至少你把那些混蛋收拾了。他们活该，愚蠢的业余货。~ + PM_OrelEx3-6
++ ~哼，好一套说辞。我还在盯着你，武僧。~ + PM_OrelEx3-7
CHAIN
IF ~~ THEN Borelios PM_OrelEx3-1
~随你说。~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx3-2
~如你所说。~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx3-3
~我想是的。谢谢。~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx3-4
~我也是，<CHARNAME>，我也是。~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx3-5
~那是我的荣幸。那么，回到正事。~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx3-6
~确实。他们得到了应得的。~
= ~啊，可说够了。我们继续吧。~
END
++ ~好。~ EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx3-7
~你想怎么耗你的力气都行，<CHARNAME>。我没什么要瞒你。~
END
++ ~我们走着瞧。~ EXIT

CHAIN
IF ~InParty("PMOrel")
InParty(Player1)
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("PMOrelTalk","GLOBAL",4)~
THEN Borelios OrelBant5
~近来我一直在回想我做冒险者的这段短短时日。路上的暴力比我服役时见得多得多，你信吗？~
DO ~IncrementGlobal("PMOrelTalk","GLOBAL",1)~
END
++ ~我原以为军旅生活会让你对这类不断的冲突有些准备。~ + OrelBant5-2
++ ~你的武艺训练至少该给你些优势。~ + OrelBant5-3
++ ~奥雷利奥斯，我现在不能谈。~ + PM_OrelEx1-1

CHAIN
IF ~~ THEN Borelios OrelBant5-2
~你也会这么想，对吧？可我服役时是相对太平的年月。萨伊总在挥刀，派些不认账的小冲突过来，可……那时是安静的。~
END
++ ~我能想象住在萨伊附近必然让人十分多疑。~ + OrelBant5-4
++ ~多浪费！既然少见战阵，参军又有什么意义？~ + OrelBant5-5
++ ~你到底为什么离开军队？为什么做武僧？~ + OrelBant5-6

CHAIN
IF ~~ THEN Borelios OrelBant5-3
~啊，可我成了苦修者之后，用的侦察兵本事并不多。多半完全不同。~
END
++ ~其实我一直想问，你当初为什么做武僧。照当时的情形看，这选择挺怪。~ + OrelBant5-6

CHAIN
IF ~~ THEN Borelios OrelBant5-4
~确实不信魔法，也提防生人。但不至于多疑，也不怀恶意。~
END
++ ~军中的侦察兵怎么成了武僧？这行当转得怪。~ + OrelBant5-6

CHAIN
IF ~~ THEN Borelios OrelBant5-5
~哦，我们还是有用处的。阿格拉隆德的社会……相当不拘。太平年月，驻军就是乡间的治安队。还有各式各样的内患要盯、要处置。~
END
++ ~那又为什么离开？为什么离开军队、离开家人去做武僧？~ + OrelBant5-6
++ ~多谢你给我上这文化课，可有些事我们该去办了。~ + PM_OrelEx1-1

CHAIN
IF ~~ THEN Borelios OrelBant5-6
~嗯，那是个长故事。我在武道上走了一段，才决定循这条路。那时我已遇见希尔梅，也有了我们的女儿。~
END
++ ~不可能只是“决定”那么简单。你必然知道做苦修者会让你离开她们。~ + OrelBant5-7
++ ~什么武僧会有家室？那肯定极不寻常。~ + OrelBant5-8
++ ~是的，可为什么是武僧？为什么不选更直白的武道？~ + OrelBant5-9

CHAIN
IF ~~ THEN Borelios OrelBant5-7
~如我所说，那是我不得不做的事。~
END
++ ~出于什么强迫？这说不通。你有事瞒着我。~ + OrelBant5-10
++ ~你有家有室，为什么去做武僧？我不明白。~ + OrelBant5-8

CHAIN
IF ~~ THEN Borelios OrelBant5-8
~那确实不寻常，是的，但这类事并不总是简单直白。我做武僧，是因为情形需要，而我也合于此道。~
END
++ ~你这么说到底是什么意思？~ + OrelBant5-10

CHAIN
IF ~~ THEN Borelios OrelBant5-9
~因为我军中的时日到了头。继续走这条路没有意义。~
END
++ ~为什么没有？奥雷利奥斯，你在绕着真相打转。说清楚。~ + OrelBant5-10

CHAIN
IF ~~ THEN Borelios OrelBant5-10
~你看，<CHARNAME>。我看事情一向有……自己的一套。这点自小就明显。等我人生走到某个阶段，刚成家的时候，就认定我这份特别的才具与性情，正合苦修者所守的那种内省的自律。~
= ~我被……另作安置了。于是我舍了旧日的生活。最终也只得舍下家人。~
END
++ ~这决定是替你做下的。你是在暗示这个，对吧？~ + OrelBant5-11

CHAIN
IF ~~ THEN Borelios OrelBant5-11
~……是的。实情如此。~
END
++ ~我还是不明白。谁会把你推上这条路？你又为什么答应？~ + OrelBant5-12
++ ~我想你最好解释清楚。~ + OrelBant5-13

CHAIN
IF ~~ THEN Borelios OrelBant5-12
~我的上官。我是个能干的斥候，可我的沉稳性情与严守命令尤其受注目。~
DO~SetGLOBAL("PMOrelSpy","GLOBAL",2)~
= ~于是认定我具备在辛布尔麾下从事秘密差事者所需的那些品质——那差事我们称作“辛布尔民”。我被调离原队，并就如何履职得到几种选择。~
= ~于是我选了做武僧。它合我，又足够不显眼，在路上足以为掩护，还让出行变得简单。~
END
++ ~你是阿格拉隆德的密探？你为什么告诉我这些？~ + OrelBant5-15
++ ~这解答了许多疑问……那么，一个阿格拉隆德密探为何在安姆？~ + OrelBant5-16
++ ~我猜你接受我邀你同行的提议，也不是巧合。是这位“辛布尔民”派你来追我的？~ + OrelBant5-14

CHAIN
IF ~~ THEN Borelios OrelBant5-13
~如你所知，我并非一向如此。做斥候几年之后，我的上官注意到了我对命令与任务那份……格外炽烈的忠信。~
DO~SetGLOBAL("PMOrelSpy","GLOBAL",2)~
= ~于是认定我具备我们称作“辛布尔民”者所需的品质——那是效力于阿格拉隆德与辛布尔的一种……隐秘组织。我被调离原队，并就往后如何行事得到几种选择。~
= ~于是我选了做武僧。它合我，又足够不显眼，在路上足以为掩护，还让出行变得简单。~
END
++ ~我想你现在说这些，总有缘由吧？~ + OrelBant5-15
++ ~我明白了……那你为何在安姆？~ + OrelBant5-16
++ ~你一直在替你那些“上官”监视我？~ + OrelBant5-14

CHAIN
IF ~~ THEN Borelios OrelBant5-14
~别荒唐了，<CHARNAME>。我想巴尔之子这现象他们是知道的，可我来此并非为你。~
END
++ ~那你为何在此？~ + OrelBant5-16

CHAIN
IF ~~ THEN Borelios OrelBant5-15
~我若要随这队伍同行、又兼顾职责，这些就须让你知道。我与你同行已够久，信得过你未与我们敌人同流，所以我愿冒这风险。~
= ~再说，也没有比本地冒险者更好的掩护了。~
END
++ ~好，都摊开了。现在如何？~ + OrelBant5-17

CHAIN
IF ~~ THEN Borelios OrelBant5-16
~我没有特定任务，眼下没有。我先在森比亚待了几个月协助那边的行动，之后被调来安姆。我的训令是留在原地，就任何威胁阿格拉隆德国体的活动呈报。~
= ~至今我未曾遇到，不过我不着急。~
END
++ ~你为什么冒这个险告诉我？~ + OrelBant5-15
++ ~我该拿这些消息怎么办？~ + OrelBant5-17

CHAIN
IF ~~ THEN Borelios OrelBant5-17
~我看不出我们有什么理由不继续同行。但若你不愿承担我这样身份的人在队中的牵累，或觉得受了欺瞒，我准备离开。~
= ~决定由你来做。~
END
++ ~这不会横在我们之间。我领你的坦率，也希望你留在队里。~ + PM_OrelEx5-1
++ ~我同意，这什么也没改。我们照旧继续。~ + PM_OrelEx5-1
++ ~这一下砸在我头上太多了。也许你该离开一阵——至少一阵。我若再需要你，会去找你。~ + PM_OrelEx5-2
++ ~你指望我认这个？我队里不留密探。走。~ + PM_OrelEx5-2


CHAIN
IF ~~ THEN Borelios PM_OrelEx5-1
~那么，带路吧。~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx5-2
~那么我就回铜冠酒馆。~
= ~下回见——如果有下回。~
END
IF ~~ THEN DO ~LeaveParty() SetGlobal("OreliusJoinrf","LOCALS",0) EscapeAreaMove("AR0406",1857,957,3)~ EXIT

CHAIN
IF ~InParty("PMOrel")
InParty(Player1)
Global("PM_OrelAbility","GLOBAL",0)
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
GlobalGT("PMOrelTalk","GLOBAL",4)
LevelGT(Myself,12)~
THEN Borelios PM_Abil1
~<CHARNAME>，我在修行上有了些突破，或许能在战斗中派上用场。你若要听，我就说。~
DO ~SetGlobal("PM_OrelAbility","GLOBAL",2) IncrementGlobal("PMOrelTalk","GLOBAL",1)~
END
++ ~好，说吧。~ + PM_Abil1-2
++ ~我不太想听。等真用得上的时候再给我看。~ + PM_OrelEx4-1

CHAIN
IF ~~ THEN Borelios PM_Abil1-2
~好，那我先说明我这些修行的性质。~
= ~如你所知，我是武士武僧，是个苦修者。我如今的生活是一场……寻索之旅，可以这么说。我已舍下多数人在战斗中依赖的东西，因为那些东西虽强，终究是拐杖——在许多方面，它们是战士与环境之间的隔障。要精通它们需耗大量心力与专注，它们承受伤害，它们代劳，打个比方，在战斗中。~
= ~苦修者不操心这些。我们不求外在的器具来满足所需，我们也明白，最真的战士、完美的战士，万事只靠自己。这份完美正是我们武僧的宗旨。~
END
++ ~继续说。~ + PM_Abil1-3

CHAIN
IF ~~ THEN Borelios PM_Abil1-3
~为达完美，我们须精通三事。第一是身体的绝对自律。寻常战士把自己的身体看作易碎之物，须保护，或须为某种外在器械效劳。这些想法是自限的。他们不明白，身体本身就是人手中最强的器械。人若能精通它，若能舍下其余一切、专心涵养它，<PRO_HESHE>便能为寻常战士无法想象之事。<PRO_HISHER>双拳能击得比任何锤更重、切得比任何刃更深，能以眩目之速移动，能乘不修者所忽略或看不见的破绽。<PRO_HESHE>能侧闪、卸力，甚至干脆不受最沉的一击，能轻易抗住伤、毒与疫。~
= ~第二重精通是心念的绝对自律。借冥想与省察，我们专心去发现、去理解自己的意识。人会悟到，手中最大的力量——一切我们对世界所施的操纵与影响所自出者——是我们的意志。它在许多方面就像肌肉：可以揉按、拉伸、施力，一点一点让它更强。意志愈坚实、愈有韧性，就愈能以某种方式施展开来，弯折或打破束缚自然世界的规矩，某些方面近于魔法。苦修者借历练与自律，能在某种程度上无视束缚、压服常人的那些东西——力、重力与时间。~
= ~第三重、也是最后一重精通，是性灵的绝对自律。性灵如身心，可以磨砺、可以涵养；久而久之，苦修者学会抵抗那些要支配或影响它的事物。我们所知最伟大的苦修者，已把自己修到全然违逆自然世界的境地，成了名副其实的超自然者，不再系于物质界。~
END
++ ~我不明白。你就靠专注与冥想做到这些？~ + PM_Abil1-4
++ ~嗯，我明白了。那你究竟做到了什么？你看着不超自然，至少现在还不。~ + PM_Abil1-5
++ ~这可真是……一大篇讲论。那你到底有什么“突破”？最好够好，才值得我坐着听完。~ + PM_Abil1-5

CHAIN
IF ~~ THEN Borelios PM_Abil1-4
~没那么简单。我们求知识与本事，跟旁人一样——靠阅历与战阵。世间一切冥想与自省，若没有经历供给教训与情境，都是无用。~
END
++ ~好，那你新得的这本事是什么？~ + PM_Abil1-5

CHAIN
IF ~~ THEN Borelios PM_Abil1-5
~我在这条路上已修成许多苦修技法——我能乘破绽使凡俗战者衰弱，能治非致命之伤，能无视部分魔法与疾病。这最近的发现，出在第二重修行，心念的自律。~
= ~我相信我已踏出最初试探的步子，能单凭意志影响物质世界。具体说，我相信若我把心念向外投射，就能在小的程度上干扰他人的感官。~
END
++ ~你是什么意思？~ + PM_Abil1-6

CHAIN
IF ~~ THEN Borelios PM_Abil1-6
~借弯折我四周的空气与空间，我能让他人一时更难击中我——至少一时。老练的对手能很快破掉这防备，能以任何手段辨明真幻的人更会一眼看穿，可在战斗中仍该有用。~
END
++ ~听着极好。战斗中能得的优势，我们都欢迎。~ + PM_OrelEx4-2
++ ~我明白了。我不知道这能有多大用，但我想总无害处。~ + PM_OrelEx4-2
++ ~嗯哼，随你吧，老兄。好好用上就是。~ + PM_OrelEx4-3

CHAIN
IF ~~ THEN Borelios PM_OrelEx4-1
~好吧。~
= ~（*奥雷利奥斯已获得“拒视”能力。它在功能上与法师法术“镜影术”相同，可自先天天赋页每日使用一次。*）~
DO ~AddSpecialAbility("PMmirro")~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx4-2
~我同意。我们继续。~
= ~（*奥雷利奥斯已获得“拒视”能力。它在功能上与法师法术“镜影术”相同，可自先天天赋页每日使用一次。*）~
DO ~AddSpecialAbility("PMmirro")~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN Borelios PM_OrelEx4-3
~我照你说的做。~
= ~（*奥雷利奥斯已获得“拒视”能力。它在功能上与法师法术“镜影术”相同，可自先天天赋页每日使用一次。*）~
DO ~AddSpecialAbility("PMmirro")~
END
IF ~~ THEN EXIT

CHAIN
IF ~InParty("PMOrel")
InParty(Player1)
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
GlobalGT("PMOrelTalk","GLOBAL",4)
Global("PM_OrelAbility","GLOBAL",2)
LevelGT(Myself,16)~
THEN Borelios PM_Abil2
~我相信我在冥想上又进了一步。~
DO ~SetGlobal("PM_OrelAbility","GLOBAL",3) IncrementGlobal("PMOrelTalk","GLOBAL",1)~
END
++ ~哦？这回得了什么？~ + PM_Abil2-2

CHAIN
IF ~~ THEN Borelios PM_Abil2-2
~我们行旅时我一直坚持冥想，反复省察我们的经历与冲突。修这种冥想有许多益处，其中一项是它带来的……心念清明。对常人，它给一份平静有度的状态，一种更能应付压力与生活重负的法子。可苦修者得益更多。我们不断想弄明白自己与所处空间的关系，以及若有足够智慧，我们能对那空间施展的力量。~
= ~我觉得借冥想，我在物理空间上立得更稳，对真实的知觉也更清楚。我相信若我们遇到想以诡计或魔法欺瞒我们的敌人，我也许能破掉他们。这要凝神，但对我们该有些用处。~
END
++ ~嗯，有意思。等我们需要用上你这本事时，我会告诉你。~ + PM_Abil2-3

CHAIN
IF ~~ THEN Borelios PM_Abil2-3
~随你。我确信它会派上用场。~
= ~（*奥雷利奥斯已获得“拒诈”能力。它在功能上与法师法术“神谕术”相同，可自先天天赋页每日使用一次。注意：此能力会驱散队友所施的部分有益幻术，慎用。*）~
DO  ~AddSpecialAbility("PMdecei")~
END
IF ~~ THEN EXIT

CHAIN
IF ~InParty("jaheira")
Global("PM_JaheiraYell","GLOBAL",1)~
THEN Borelios PMBJahCon-1
~<CHARNAME>，有件事我们必须谈。~ DO ~SetGlobal("PM_JaheiraYell","GLOBAL",2)~
END
++ ~好。什么事？~ + PMBJahCon-2
++ ~奥雷利奥斯，我现在没心思。~ + PMBJahEx1

CHAIN
IF ~~ THEN Borelios PMBJahCon-2
~我似乎……触动了贾希拉的一根神经。她越来越严厉了。~
== BJAHEIR ~Severe is not the word. Perhaps you will have some luck in getting some sense out of this obstinate fool. It is like drawing water from a stone.~
END
++ ~好，都冷静些。你最好从头说起。~ + PMBJahCon-3
++ ~我发誓，有些日子我真不知道何必受这队伍的麻烦。这回又是什么？~ + PMBJahCon-3
++ ~你知道吗？不，我没时间管这个。别烦我，你们两个都别。~ + PMBJahEx1

CHAIN
IF ~~ THEN Borelios PMBJahCon-3
~我们之间有些我未曾预料的麻烦。冲突起于我的决定——~
== BJAHEIR ~Abandon his loved ones?~
== Borelios ~-set off on an adventure on my own. Frankly I don't know why this is any of her business.~
END
++ ~那你为什么那么做？~ + PMBJahCon-4
++ ~听听她说完，好吗？贾希拉，到底是什么麻烦？~ + PMBJahCon-5
++ ~贾希拉，我看不出这跟你有什么关系。~ + PMBJahCon-6
++ ~也不关我的事。你们俩自己弄明白，我不想沾。~ + PMBJahEx1

CHAIN
IF ~~ THEN Borelios PMBJahCon-4
~我已对家人尽完所有义务，想独自上路去认识这世界。我的女儿们已成年，有了各自的生活与职责。她们的母亲在教会有事，我的军团岁月早已过去。所以我走了。~
END
++ ~身为一家之人，肯定远不止是把孩子养大、然后对曾经的生活一甩手。~ + PMBJahCon-7
++ ~可为什么要冒险？你知道那有多危险。你难道想做那种某天走了就再不回来的父亲？~ + PMBJahCon-8

CHAIN
IF ~~ THEN Borelios PMBJahCon-5
~我宁愿——~
== BJAHEIR ~I am deeply troubled by the cavalier attitude that Orelios has taken with regard to those around him. The life of an adventurer is not for those with such attachments. It is a selfish, callous path to take. He has no regard for the people he is responsible for.~
== Borelios ~That is completely untrue.~
END
++ ~这抱怨听着相当有理。奥雷利奥斯，你有什么为自己辩的？~ + PMBJahCon-4
++ ~可奥雷利奥斯离开前必定征求过家人的准许吧。~ + PMBJahCon-9
++ ~那你为什么决定过冒险的生活，奥雷利奥斯？~ + PMBJahCon-10

CHAIN
IF ~~ THEN Borelios PMBJahCon-6
~谢谢你，<CHARNAME>~
== BJAHEIR~How can I be expected to rely upon this man in times of trial when he has needlessly abandoned those who have need of him?~
== Borelios ~I have done no such thing. They had no need of me, not anymore. I would not have taken the risk if it had been on anyone other than myself.~
END
++ ~可你的家人必定也担着些风险吧？我很难相信他们对你某天回家没有份指望。若你不回去呢？~ + PMBJahCon-8
++ ~我原以为你的家人总需要你。~ + PMBJahCon-7
++ ~我不明白，当初要走的起因是什么？~ + PMBJahCon-10

CHAIN
IF ~~ THEN Borelios PMBJahCon-7
~我的孩子永远是我的孩子，这是真的。可我们从不是寻常的一家人。希尔梅和我从未成婚，甚至从未同住，即便她生了双胞胎之后，我也得为国事四处奔走。我已尽我所能常在、尽我所能付出，可没有我也一向过得好，甚至兴旺。~
= ~我从来注定要远行，可我尽可能留下，直到孩子不再依赖我。梅里尔过着如我旧日的生活，做国家的斥候。莉迪亚在她母亲手下效力于里利凡的神殿。她们已不再需要我的指引。~
END
++ ~即便那时你不也该留下吗？希尔梅必定盼你在身边。~ + PMBJahCon-11
++ ~你说“从来注定要远行”是什么意思？~ + PMBJahCon-12

CHAIN
IF ~~ THEN Borelios PMBJahCon-8
~我以为我们已谈过这个了……~
== BJAHEIR ~That is precisely my point! How does he reconcile himself to that possibility?~
== Borelios ~I am well into middle age, <CHARNAME>. In the grand scheme of things my death is not that far ahead of me, adventure or no. I had fulfilled my obligations to my family, I had a chance to see the world at large, and I took it. That's all.~
END
++ ~那不也太洒脱了吗？你对家人的亏欠不止是把他们养大。~ + PMBJahCon-7
++ ~我还是不明白你为什么要走。为什么非得离开阿格拉隆德来这儿？~ + PMBJahCon-10

CHAIN
IF ~~ THEN Borelios PMBJahCon-9
~是的，我征求过。不然我不会走。他们明白我为何必须走。~
END
++ ~那是为何？~ + PMBJahCon-10

CHAIN
IF ~~ THEN Borelios PMBJahCon-10
~因为那是我该做的。~
END
IF ~Global("PM_OreliosWhom","GLOBAL",0)~ THEN REPLY ~谁要求的？~ + PMBJahCon-13

CHAIN
IF ~~ THEN Borelios PMBJahCon-11
~希尔梅和我……我们一向相爱，也永远会相爱，可我们大体上过着各自的生活，离我们的女儿们很远。这也许难以理解，可这是实情。我多次请她忍受我的不在，也许太多了，而这次是我让她等得最久的一次。~
= ~这等待也许要持续到我们双双身入冥世。可她是我所知最坚强的女人，也比谁都懂我。她明白我为何在此、为何离她和孩子。她接受这个。~
== BJAHEIR ~But does she embrace it?~
== Borelios ~Of course not. But it is my choice, not hers, and she accepts that.~
== BJAHEIR ~And you openly admit to disregarding her? Incredible.~
END
++ ~为什么选择离开？为什么不留在她身边？你显然想留。~ + PMBJahCon-10

CHAIN
IF ~~ THEN Borelios PMBJahCon-12
~那是我知道自己必须做的事，自从我做苦修者起就是。~
~若要充分发挥我的修行，我就得走出阿格拉隆德。~
END
++ ~究竟为什么？~ + PMBJahCon-10

CHAIN
IF ~~ THEN Borelios PMBJahCon-13
~谁？没有人。我自己。要做成苦修者的全部潜力，我就得做最后那些痛切的割舍，放下我在意的俗物，变得独立。不是永久，你要明白，可我希望借舍去家人来更懂自己与别人的关系——正因为他们对我太重要。~ DO ~SetGlobal("PM_OreliosWhom","GLOBAL",1)~
== BJAHEIR ~So that is it. You left to escape them.~
== Borelios ~That is not how I would put it. I had to turn away from them, yes. But not because I resented them. And this is only for a time. I fully intend to return.~
END
++ ~那你若不回来呢？~ + PMBJahCon-14
++ ~好，既然我们彼此都多懂了一点，能不能了结这争执？还是你们两个要继续吵下去？~ + PMBJahCon-15

CHAIN
IF ~~ THEN Borelios PMBJahCon-14
~我会的。我答应过。~
== BJAHEIR ~Hmph, arrogance.~
END
++ ~好了，够了。能不能把这事了了？我受不了队里再多这种对立。~ + PMBJahCon-15
++ ~你看，我们把这事了断吧。我听你们俩已经听够了。~ + PMBJahCon-15

CHAIN
IF ~~ THEN Borelios PMBJahCon-15
~我跟这“冲突”毫无关系。你若想了结，那贾希拉得承认她在做什么。~
== BJAHEIR ~Admit to what? Are you accusing me of something?~
== Borelios ~Whether you know it or not, you are foisting your misplaced guilt over the death of your husband onto me.~
== BJAHEIR ~You... You have no right!~
== Borelios ~Do you think I would accuse you of such unless I absolutely had to? You have only been unreasonable to me.~
END
++ ~奥雷利奥斯说得对，贾希拉。这不健康。反省一下自己。~ + PMBJahEx1-2
++ ~这话过分了，奥雷利奥斯。贾希拉的顾虑完全有理。我不觉得你在当真对待她。~ + PMBJahEx1-3
++ ~好了，我不再掺和了。我能信你们俩自己把这事说清吗？~ + PMBJahEx1-4

CHAIN
IF ~~ THEN Borelios PMBJahEx1
~好，我们俩自己试着理清。你不会再听到这事。~
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN Borelios PMBJahEx1-2
~贾希拉，我从未有意激你。我想这是场误会。~
== BJAHEIR~I... I just... *sigh* Perhaps you are both right. I'm... I'm sorry Orelios. I still think you are being at least somewhat callous toward your family but I have gotten entirely too angry about it. I just hope you don't hurt them more than you already have.~
== Borelios ~I'm doing my best not to, Jaheira. I promise you that.~
END
++ ~很高兴我们能化解。回到路上，嗯？~ + PMBJahEx1-5

CHAIN
IF ~~ THEN Borelios PMBJahEx1-3
~嗯……也许你说得有理。我不信自己亏负了家人，但……我想，说未必如此也算合理。~
== BJAHEIR
~我建议你往后多体恤别人。你的旧错我可以容，可队伍需要你至少有时候想到自己以外。~
END
++ ~好，既然化解了，我们可以专心别的事。~ + PMBJahEx1-5

CHAIN
IF ~~ THEN Borelios PMBJahEx1-4
~我相信你可以，可事情还要热一阵。你可能得留意把我们分开一阵，至少扎营时。~
== BJAHEIR ~Yes, we will deal with this, though I think we could have used your moderation. Do not expect civility out of us for some time.~
END
++ ~那就这样。回到手头的事。~ EXIT

CHAIN
IF ~~ THEN Borelios PMBJahEx1-5
~我很高兴把这事丢在身后。~
== BJAHEIR ~Yes, it will be good to function as a group again without strife.~
END
IF ~~ THEN EXIT



CHAIN
IF ~InParty("minsc")
InParty("PMOrel")
See("minsc")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("minsc",CD_STATE_NOTVALID)
Global("PM_MinscGab","GLOBAL",1)~
THEN BMINSC OrelMinB1
~呃，打扰一下，奥雷利奥斯。~
== Borelios ~Hmm? Yes?~
== BMINSC ~Boo seems to think that you are from Aglarond. Is this true?~
== Borelios ~Boo is your... rodent companion? Ah. Yes, Minsc, I hail from Aglarond.~
== BMINSC ~AHA! I have heard of this place! Dynaheir, my witch, used to speak of it!~
== Borelios ~Your witch? You are Rashemi?~
== BMINSC ~We are! Tell me Orelios, what brings you here to Amn? Are you a noble warrior? Do you have dajemmas where you come from? Are you on one as well?~
== Borelios ~Hm, I suppose you could say I am on a "dajemma" of sorts. I travel to learn about myself and the world... As to whether I am noble, I suppose that depends on who you ask.~
= ~明斯克，你自己的达耶玛走得如何？~
== BMINSC ~It is... It is a failure! My witch was murdered and I could do nothing! My mighty heart, it breaks so!~
== Borelios ~Were I you, Minsc, I would not despair. Witch or no, you have proven yourself a capable force against wickedness. Surely that must count for something?~
== BMINSC ~Boo thinks maybe you are right, but still I struggle to keep my tears at bay. Continue on, Orelios, we shall bring the burden of my shame down upon the heads of evil!~
DO ~IncrementGlobal("PM_MinscGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("minsc")
InParty("PMOrel")
See("minsc")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("minsc",CD_STATE_NOTVALID)
Global("PM_MinscGab","GLOBAL",2)~
THEN BMINSC OrelMinB2
~布布好奇，我们在营地时你为什么坐得那么静，奥雷利奥斯。它本想自己问，可不愿打扰你。~
== Borelios ~When the party sets to rest, I begin my meditations for the day.~
== BMINSC ~How do you do this, eh, meditation?~
== Borelios ~It's a simple matter of concentration and relaxation. Simply focus, and allow your mind to clear. Perhaps you should try it, it may do you some good.~
== BMINSC ~I am interested but Boo says that clearing my mind may be more trouble than it's worth.~
= ~可无论如何，我们感激这番解释。~
DO ~IncrementGlobal("PM_MinscGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("jaheira")
InParty("PMOrel")
See("jaheira")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("jaheira",CD_STATE_NOTVALID)
Global("PM_JaheiraGab","GLOBAL",1)~
THEN BJAHEIR AudJahB1-1
~看来路上的生活合你，奥雷利奥斯。~
== Borelios
~我想是的。我离开故土已一年有余。人学会简朴地活——我带的冒险者行头少，这也帮了忙。~
== BJAHEIR
~我能想象。我想简朴的生活往往更好。可跟<CHARNAME>同行，简朴是不可能的。~
== Borelios
~既然你还在，那想必没那么糟。~
== BJAHEIR
~嗯，我有旧日的誓约要守……我想你对守信知之甚深。~
== Borelios
~我若有义务要尽，那是因为我选择了它们。毁诺者失去对自己的掌控。~
== BJAHEIR
~哼。宁可毁诺，也别在守诺时做出更坏的事。你若想讨我的好，下次扎营时先去守夜。轮到你。~
== Borelios
~我盼着。~
DO ~IncrementGlobal("PM_JaheiraGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("jaheira")
InParty("PMOrel")
See("jaheira")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("jaheira",CD_STATE_NOTVALID)
Global("PM_JaheiraGab","GLOBAL",2)
AreaType(OUTDOOR)~
THEN Borelios AudJahB2-1
~嗯，我还不惯这地形。若遭伏击，我不知道自己能否及时察觉、让我们有所准备。~
== BJAHEIR
~你对队伍就这么没信心？我们冒险已有些时日，相当能干。你若想求得对背叛的万全防护，我劝你打消这念头。我们总在冒险。~
== Borelios
~我不会说别的，我也毫不怀疑同伴的本事，可我做了近二十年斥候的差事。旧习难改。~
== BJAHEIR
~我想警讯该不难辨认——封闭的杀伤区、咽喉要道，诸如此类。~
== Borelios
~我的经验教我，那些迹象往往细微却明白。我惯于巡逻的地界多是草原与海岸。那种环境里天然的藏身之处罕见。~
== BJAHEIR
~那我们就调整战术来补这差异。你不该过虑，奥雷利奥斯。这不称你这一向从容的人。~
== Borelios
~你尽管取笑，贾希拉。我有事要照料。~
DO ~IncrementGlobal("PM_JaheiraGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("jaheira")
InParty("PMOrel")
See("jaheira")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("jaheira",CD_STATE_NOTVALID)
Global("PM_JaheiraGab","GLOBAL",3)
Global("PM_JaheiraYell","GLOBAL",0)
AreaType(FOREST)~
THEN BJAHEIR AudJahB3-1
~嗯，再次踏入荒野总叫人神清气爽。你该放松些，奥雷利奥斯，免得错过自然更简单的乐趣。~ DO ~SetGlobal("PM_JaheiraYell","GLOBAL",1)~
== Borelios
~我享受荒野，不亚于任何困在城里的人。在家时我常应伴侣之请，走到尤尔林的边缘。可它虽清爽，我更喜欢安静些的地界。~
== BJAHEIR
~嗯……我猜你的家人是精灵？~
== Borelios
~半精灵。像我的希尔梅这样的混血，在阿格拉隆德比我在别处见的多。可的确，我乡的林子是精灵的地方，不是人类的。我想我能见它们这么多，算是福分。~
== BJAHEIR
~“我的”希尔梅？我倒没看出你是多情的人，奥雷利奥斯。~
== Borelios
~我也没看出你是，可我确知你有内里的生活，正如我一样。你藏得也相似。~
== BJAHEIR
~我……我们被带到这受咒的土地时，我的丈夫被人残忍地夺走了。怎么会……~
=~告诉我，奥雷利奥斯，你明知选择这生活可能永远让家人失去你的陪伴，你怎么活得下去？~
== Borelios
~我得提醒自己，他们注定要在将来某时感到失去我，或我感到失去他们。我可能今夜就死，也可能五十年后，他们的悲恸大致相同。避不开。所以我不能让它烦我。~
== BJAHEIR
~我想……~
= ~不。不，那不够。你有一个伴侣和几个女儿，无论她们怎么说，必定盼你在身边，你却拒了她们，还每天让她们多受一份苦。~
= ~你怎么能对她们这么残忍？~
== Borelios
~贾希拉，我爱我的家人，胜过一切。可我必须过我的人生。~
== BJAHEIR
~你听不懂自己说的话吗？你瞎了吗？你有过生活，一种与他人交织的生活，你却背过身去。为什么？你为什么要那样？~
== Borelios
~我不信这问题能答到让你满意，贾希拉。你如此感受，我很难过，可我想我们还是等你……缓一缓再理清为好。~
== BJAHEIR
~不！回答我！混蛋！虐人者！~
== Borelios
~我去到队伍前面探路。这事我会想，我向你保证。但愿到时候我们能化解。~
== BJAHEIR
~那就去。我不……走。走开。~
DO ~IncrementGlobal("PM_JaheiraGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("Yoshimo")
InParty("PMOrel")
See("PMOrel")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
Global("PM_YoshimoGab","GLOBAL",1)~
THEN BYOSHIM AudYosB1
~奥雷利奥斯！能与一位武士武僧同行，且离家乡这么远，何其荣幸！~
== Borelios
~当真？~
== BYOSHIM
~当真，朋友。我已不指望在卡拉-图之外见到你这类人。我在此遇到的所有所谓“武僧”都是狂信徒，当然除你之外。~
== Borelios
~对自身的精通，往往是虔信者的功课。那不是弱点。~
== BYOSHIM
~啊，可我真不懂他们。而且跟他们说话太难受了！~
= ~我的故土有许多像你这样的人，多半不关心诸神，只为开悟本身而求开悟。~
== Borelios
~我让你想起他们了？~
== BYOSHIM
~你行走坐立的那份静，是的。不过你的武艺，少了些流转。~
== Borelios
~那你有指点？还是这只是句别扭的挖苦？~
== BYOSHIM
~我只是说笑，朋友。你的路数对我来说怪，可够用。来，下次我们遇上胆敢挑衅我们的蠢货，我让你看看真该怎么做！~
DO ~IncrementGlobal("PM_YoshimoGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("Yoshimo")
InParty("PMOrel")
See("PMOrel")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
Global("PM_YoshimoGab","GLOBAL",2)~
THEN Borelios AudYosB2
~吉见，再跟我说说你先前讲的那些武僧。你故土的那些。~
== BYOSHIM ~What do you wish to know, specifically?~
== Borelios ~Did you know any? Are they common?~
== BYOSHIM ~They are not exactly common, though they are certainly more common than they are here, in this land.~
= ~他们是武艺——心与身——上有名望、受人敬重的宗师。许多人求他们的智慧，不过他们的寺院往往不易进。~
= ~至于我是否认识几位，我没那福气，没有。再说，我怀疑他们没耐心对付我这样的浪荡子。~
== Borelios ~I would seek them out myself, had I no obligations. Perhaps one day I shall. You could accompany me, if you wished to. I imagine you miss your homeland as much as I do mine.~
== BYOSHIM ~Ah, much as I appreciate the offer, one can never plan that far ahead. It would not surprise me if I never saw the shores of Kara-Tur again.~
== Borelios ~That would be a shame. Well, I will leave the possibility open, if you will.~
== BYOSHIM ~Indeed, Orelios. We will see.~
DO ~IncrementGlobal("PM_YoshimoGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("Aerie")
InParty("PMOrel")
See("Aerie")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("PM_AerieGab","GLOBAL",1)~
THEN Borelios AudAerB1
~一个美丽的<DAYNIGHTALL>，你同意吗，小家伙？~
== BAERIE
~嗯？哦……是的，我想是吧，奥雷利奥斯。~
== Borelios
~我们一路走来，我看你低着头有些时候了。在回想你在马戏班的日子？~
== BAERIE
~你……你怎么知道？~
== Borelios
~侥幸猜中。你不该这么阴郁，跟<CHARNAME>同行不算太坏。~
== BAERIE
~我从没说不坏！可我也没法子，奥雷利奥斯。这里一切都那么……不同。我怀念那份兴奋，就这。~
== Borelios
~啊，可冒险自有它的兴奋。也许不常在，可你会渐渐懂得欣赏。~
= ~这当儿，看着。~
== BAERIE
~天哪！你总把这些袋子藏在袖子里吗？~
== Borelios
~啊，小家伙，你该知道不该问这种秘密。~
= ~我年轻时学耍球。在营房里闲熬的那些长日子里，它能让我保持身手协调与时准。~
= ~然后你把它们一起抛到空中，再——~
== BAERIE
~哈哈，好！谢谢你，奥雷利奥斯。这里虽不像家，可你至少让我笑了。~
== Borelios
~一点不费事，艾黎。~
DO ~IncrementGlobal("PM_AerieGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("Aerie")
InParty("PMOrel")
See("Aerie")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("PM_AerieGab","GLOBAL",2)~
THEN BAERIE AudAerB2
~奥雷利奥斯，你有过……奇怪的感觉吗？~
== Borelios ~In what way do you mean?~
== BAERIE ~Well, it's just that... You are always under that heavy hood, even when the sun is shining, and you are always so still...~
= ~我只是想问问……我想问，别人会不会评判你。~
== Borelios ~I'm sure that they do, but there is naught I can do about it.~
== BAERIE ~Doesn't it bother you?~
== Borelios ~Why should it? Those who would detest me on such things could hardly be pleased by any measure I might take to appease them. I would surely lose more than I would gain.~
== BAERIE ~I suppose you're right, Orelios. Still, I... I feel hurt, when others look at me like an oddity.~
== Borelios ~You are still young, Aerie. In time, you will come to wonder why these things ever bothered you.~
== BAERIE ~I hope it isn't too long before that happens.~
== Borelios ~I suspect it will be sooner than you think, young one.~
DO ~IncrementGlobal("PM_AerieGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("Jan")
InParty("PMOrel")
See("Jan")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("Jan",CD_STATE_NOTVALID)
Global("PM_JanGab","GLOBAL",1)~
THEN Borelios AudJanB1
~嗯，我还是没习惯闪亮海来的风。我惯了我家乡更暖的风。~
== BJAN
~啊，坠星海。我有个远房堂亲在那片海上行船，西门以东。他喜欢人叫他“醉鬼乔斯金”，可我们家里人叫他“乔斯基”。亲昵的叫法，你懂。碰巧听说过他吗？~
== Borelios
~没有。~
== BJAN
~嗯，那是些年前的事了，你明白。乔斯基以他在海上买卖的精明闻名，登船议货——~
== Borelios
~换句话说，他是个海盗。~
== BJAN
~哦，乔斯基恨这词。恨透了。“我不过是省掉了中间人！”他会说。乔斯基一向有做买卖的天分，至少他自己爱这么想。~
== Borelios
~是的。~
== BJAN
~总之，我说到哪儿了？哦对！他们叫他“醉鬼乔斯金”，因为他偏好的买卖是美酒烈酿，你明白。每成一笔，他就留一箱自用，然后好几天，有时好几周，全然没用。~
== Borelios
~自然。~
== BJAN
~自然。你也许注意到我提亲爱的乔斯基用的是过去时。嗯，他正在图尔米什北岸外闲荡，那时他看见——若我说谎，愿诸神劈了我——~
== Borelios
~请便。~
== BJAN
~——他看见一颗真正的流星！正落在他船边的水里！乔斯基一向满脑子钱（也不全因为他冒险时被一场钱箱爆炸波及），把那陨石拖上来劈开，盼着从中得一笔矿财。~
= ~可叫他懊恼的是，那里面竟是个塔纳里魔领主，封在石中。那东西一开就撕开通往深渊的门，把乔斯基和他一船人拖了进去！此后再没他的消息。~
== Borelios
~当然。~
== BJAN
~不过船留下了，还有乔斯基那些珍藏的酒。那船漂到图尔米什海岸时，当地人可热闹了一场！~
~啊，往事。呃，你刚才说风什么来着，奥雷利奥斯？~
== Borelios
~嗯……我好像忘了。~
= ~滚开吧，侏儒。~
== BJAN
~下回见，亲爱的朋友！~
DO ~IncrementGlobal("PM_JanGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("viconia")
InParty("PMOrel")
See("viconia")
AreaType(OUTDOOR)
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("viconia",CD_STATE_NOTVALID)
Global("BM_ViconiaGab","GLOBAL",1)~
THEN Borelios AudVicB1
~维康妮亚，尽管你招人侧目，我并不后悔<CHARNAME>留你一命。~
== BVICONI
~哦，我真高兴得了你的赞许，奥雷利奥斯。你必定有几句智慧的箴言给我。~
== Borelios
~我不懂你的敌意。你若和气些，事情对你必定容易得多。~
== BVICONI
~你真会揣度。只有这周遭待我如彼，我才会如此不客气。~
== Borelios
~我只能想象，长年对他人怀着这般轻蔑有多累。~
== BVICONI
~那不累，其实相当自然。阳光下的生活把你们这样的瑞文惯坏了。幽暗地域从不间断的残酷，熄灭了人对这种无谓“和气”的任何欲求。~
== Borelios
~也许如此，可你已不在底下。我想你会发现，在地表诸族之间，礼数——即便不是敬重——是有利的。~
== BVICONI
~呸，你的话空洞。你以为自己通世故吗，武僧？讨好蠢货于我何用？你以为他们会为一点小小的宽纵就放下偏见？~
== Borelios
~要恨你的，总会恨你。可我敢说，你若能收敛怒气，或至少掩住厌恶，你会找到比预想更多的盟友。~
== BVICONI
~你什么都不懂。比什么都不懂还不如。别烦我！~
== Borelios
~随你。~
DO ~IncrementGlobal("BM_ViconiaGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("Anomen")
InParty("PMOrel")
See("Anomen")
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck("Anomen",CD_STATE_NOTVALID)
Global("PM_AnomenGab","GLOBAL",1)~
THEN BANOMEN AudAnoB1
~我得承认，跟一个号称战士却不肯持械的人同行，我不舒服。奥雷利奥斯，下次遇到商人，我愿献上我的效劳。你总有些钱可花，嗯？我们得找件合用的武器和一件锁甲，免得你的愚行害死你自己或队里别人。~
== Borelios ~It is no foolishness, sir. You have seen me in action.~
== BANOMEN ~Yes, I have. I admit to being impressed by your swiftness and your unwillingness to disengage when outmatched, but your continued luck is surely limited. With a blade and plate, you would find your effectiveness increase exponentially, I am sure of it.~
== Borelios ~Anomen, such trappings would only hamper me.~
== BANOMEN ~Have you a death wish, then? What is to protect you from the edge of an orcish blade? How are you to hurt an armored foe?~
== Borelios ~By moving faster, and striking with greater force and precision.~
== BANOMEN ~Your methods are most peculiar, Orelios, but they are... intriguing. I will do my best to aid you in battle but I would still urge you to equip yourself. One never knows what we might come up against.~
DO ~IncrementGlobal("PM_AnomenGab","GLOBAL",1)~
EXIT

CHAIN
IF ~InParty("PMOrel")
InParty(Player1)
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("PMOrel25","GLOBAL",2)~
THEN Borelios PMBantBa1
~<CHARNAME>，我一直在想你这目的的启示。若你容我，我想问你。~
DO ~SetGlobal("PMOrel25","GLOBAL",3)~
END
++ ~你想知道什么？~ + PMBantBa1-1
++ ~我不想听。别烦我。~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantBa1-1
~显然，你的人生旅程大体系于你作为巴尔子嗣的血脉。你必定明白，这既是机缘，也是诅咒。~
= ~那么，<CHARNAME>，你打算成就什么？~
END
++ ~我的人生除了无尽的死亡别无他物。我想一劳永逸地摆脱它。若借此能给这世界带来些善意，我会做。~ + PMBantBa1-2
++ ~我只想按自己的选择过一生。我厌倦命运压在我身上。也许坚持能给我自由。~ + PMBantBa1-3
++ ~我力求成就我的命数。我若拒其神性，这受咒的血又有何用？为登神……我将得超乎凡人传说的声名，取得托瑞尔全境都给不出的财宝。~ + PMBantBa1-4
++ ~别烦我，奥雷利奥斯。我不想谈这些，不是现在。~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantBa1-2
~因为你这一行，也因为你的血，无谓的暴力总追着你。你要怎么确保一个……净收益是正的呢，这么说？~
END
++ ~看来这就是问题了，不是吗？可不是，我有信心能给这世界带来正的东西。假以时日，我会让它持平。~ + PMBantBa1-5
++ ~我父亲即便死了也在扳着天平，可“我”不是恶的灯塔。巴尔的血压不住我的义。我拒它。~ + PMBantBa1-6
++ ~我们现在能不能先专心手头的事？~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantBa1-3
~那可能吗？暴力注在你的本质里。~
END
++ ~我不得不信它可能。若我要熬过这重重试炼，那份力量只能出自我的内里。~ + PMBantBa1-7
++ ~更怪的事也发生过，不是吗？诸神也曾被挫败。我必须一试。~ + PMBantBa1-6
++ ~我们不该拿这种话分心。回到我们的旅程吧。~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantBa1-4
~啊，可这条路风险极大。若命运的前方并非神位呢？若你失了你所珍视的一切呢？若你彻底被毁呢？~
END
++ ~不入虎穴，焉得虎子，朋友。你不也会为同样的珍稀之赏去争吗？~ + PMBantBa1-8
++ ~为这个，一切都值得牺牲。诸界之中没有更大的酬报了。~ + PMBantBa1-9
++ ~算了。我不说了。~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantBa1-5
~嗯，我明白了。守住这份信心，也许你真能成。不过，这也许比你以为的要久。有许多要偿还的。~
END
++ ~“偿还”是什么意思？这些都不是我要的。你我都清楚，奥雷利奥斯。~ + PMBantBa1-10
++ ~不管要多久，我都会那样劳作。那才是对的。~ + PMBantBa1-6
++ ~算了。我们有更要紧的事要办。~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantBa1-6
~嗯，也许。你设法去平衡你父亲的影响，这至少是好的。~
END
++ ~我也该如此！在某种意义上，我不觉得这一生真能算在我头上。我是被推进这生活里的。我缺乏那份自主，能让我真正为此负责。~ + PMBantBa1-10
++ ~放松，奥雷利奥斯。无论等着我们的是什么，我们都会尽力应付。~ + PMBantEx1-3

CHAIN
IF ~~ THEN Borelios PMBantBa1-7
~这话大体不差，我想。而我认为，你能看出自己那……潜在的力量并非达成此事的合用工具，这是好的。拥抱你的血脉只会让你在这条路上走得更远。~
END
++ ~那又为何？~ + PMBantEx1-2

CHAIN
IF ~~ THEN Borelios PMBantBa1-8
~我说不上，因为我不在你的位置。可你该意识到自己在冒的风险。比你所知更多的人，性命在你手里。~
END
++ ~我相信酬报会值得。无论我受多少损失，我得的力量都足以护住更多人。护住多出数倍的人。~ + PMBantBa1-11
++ ~哼，他们若没有力量掌控自己的人生，那就近乎自弃。那也无妨。~ + PMBantBa1-9

CHAIN
IF ~~ THEN Borelios PMBantBa1-9
~别对你的同伴性命这般洒脱。我确信他们愿为你舍命。人该敬那份忠。~
END
++ ~没人拦着他们走。~ + PMBantEx1-3
++ ~也许。但我若牌打得好，该能少有牺牲，甚至没有。~ + PMBantEx1-4

CHAIN
IF ~~ THEN Borelios PMBantBa1-10
~那要紧吗？<CHARNAME>，动手的是你的手；若那附带的暴力本身不归你负责，它影响世界的方式终究归你掌控。~
= ~你否认自己的牵涉不会有什么好处，哪怕是被迫的。让愧疚把你瘫住也不会有什么好处。清点盘账的时候也许不是现在，可若我是你，我会记着。~
END
++ ~也许你说得对，奥雷利奥斯。可我不必等到这事结束。如你所说，我作为的终究影响归我掌控。仍有法子拨转我的命数。~ + PMBantEx1-5
++ ~你在胡说。我无意造成我造成的伤害，怪我就是全无道理。~ + PMBantEx1-6
++ ~说实话，等我做完，我想我不会还有心思去忧心过去某句可能的责难。~ + PMBantEx1-12

CHAIN
IF ~~ THEN Borelios PMBantBa1-11
~我不信……拿未来的收益去赌，真算明智——这地方的人是这么说的。你的同伴不是为达成目的可耗的货物，他们本身就是目的。失去他们，不会那么容易弥补。~
END
++ ~不，这是真的。我只是想说，取我父亲力量的潜在好处极大。谁说这样的力量不能连死亡都违抗？~ + PMBantEx1-7
++ ~呸！他们会拿我去遂自己的意。许多人此前就这么做。我何必给他们他们不肯给我的礼数？~ + PMBantEx1-8
++ ~当我没说。走吧。~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantEx1-1
~如你所说。那就来吧。~
END
++ ~~ EXIT

CHAIN
IF ~~ THEN Borelios PMBantEx1-2
~嗯，以毁灭之力反制它自身的诱惑很强，可那跟以火攻火一样无效。~
= ~你若打算从这烂摊子里脱身，<CHARNAME>，那你终将不得不弃掉你的……承诺。~
END
++ ~若那是我必须做的，那就这样。~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantEx1-3
~啊，可他们决定不走，并不等于因此就对你欠下什么。~
END
++ ~也许不是。你这些话我得想想。~ +PMBantEx1-1
++ ~哼，随你说。我腻了，我们专心别的。~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantEx1-4
~我不认为那可能。你若真想要你父亲的力量，那你身边的人就会受苦。这不可避免。~
= ~若那是你的意图，你最好确保他们觉得你的事业如你一样值得。~
END
++ ~他们懂我，我确信他们会。我们一起经过了许多。~ + PMBantEx1-11
++ ~你会觉得值得吗？~ + PMBantEx1-10

CHAIN
IF ~~ THEN Borelios PMBantEx1-5
~我在一定程度上同意。你对这事抱着一份让人振作的看法。也许这会有最好的结果。~
END
++ ~也许吧。可我们该回到正事。我们说够了。~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantEx1-6
~我不觉得你在听我。可……无妨。该来的会来，我会尽力助你。我只盼你能领会我这些话里的意思，<CHARNAME>。~
END
++ ~我不排除任何可能，可我仍然认为你对这事的看法错了。以后再谈，我确信。~ + PMBantEx1-1
++ ~你对什么事都太阴郁了，奥雷利奥斯。事情不会那么糟，你会看到。~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantEx1-7
~连诸神也有必须守的规矩。如我所说，以为神性就能让你无所不能，是不智的。有些事无法挽回。~
END
++ ~我想这点你说得对。我会尽量不把这类事看得太轻。~ + PMBantEx1-1
++ ~我明白，可为这些事绞手也没用。若我们倒了，那就倒了。~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantEx1-8
~啊，可我们是你的朋友，不是吗？我们也许不时求过你相助，可我们在效力中已多次还清那些债。这安排并不像你说的那么冷酷。~
END
++ ~哼，随你说。等事情真变难时，我们再看你们是不是还站在我身后。~ + PMBantEx1-11
++ ~事情一向如此。我留你们在身边，只是因为合我的意，仅此。~ + PMBantEx1-12

CHAIN
IF ~~ THEN Borelios PMBantEx1-10
~我完全清楚自己卷进了什么。我已做了决定，会走到尽头。~
END
++ ~我领这份情，奥雷利奥斯。我们会成就许多，你等着。~ + PMBantEx1-1
++ ~好。我很高兴这儿总算有人知道自己的位置。~ + PMBantEx1-1

CHAIN
IF ~~ THEN Borelios PMBantEx1-11
~确实，我们会看到。~
END
++ ~~ EXIT

CHAIN
IF ~~ THEN Borelios PMBantEx1-12
~当真？那就预备好走一条难路吧。~
END
++ ~~ EXIT

CHAIN
IF ~InParty("PMOrel")
InParty(Player1)
!StateCheck("PMOrel",CD_STATE_NOTVALID)
!StateCheck(Player1,CD_STATE_NOTVALID)
Global("PMOrelTalk","GLOBAL",6)~
THEN Borelios OrelBant4
~又能上路真好。它让我想起在家时狮子军中的日子。~
DO ~SetGlobal("PMOrelTalk","GLOBAL",7) SetGLOBAL("PMOrelSpy","GLOBAL",2)~
END
IF ~~ THEN REPLY ~你怎么会去服役的？~ GOTO OrelBant4-1
IF ~~ THEN REPLY ~我这会儿不太想谈。~ GOTO OrelBant4-2

CHAIN
IF ~~ THEN Borelios OrelBant4-1
~其实没多少选择。阿格拉隆德人一到成年，服役就是义务。我在东北边境防萨伊，如我父母当年，也如我女儿如今。~
END
IF ~~ THEN REPLY ~阿格拉隆德军中的生活是什么样？~ GOTO OrelBant4-3
IF ~~ THEN REPLY ~见过战阵吗？~ GOTO OrelBant4-4

CHAIN
IF ~~ THEN Borelios OrelBant4-2
~那就不提了。~ EXIT

CHAIN
IF ~~ THEN Borelios OrelBant4-3
~说实话？我那时是快乐的。军旅的章法合我的性情。我驻在艾梅克时遇见了我妻子，成了家。我有生之年没遭过萨伊入侵，所以没人对我们侧目。那是二十年前。~
END
IF ~~ THEN REPLY ~什么变了？既然你如今在此，必定有什么变了。~ GOTO OrelBant4-5


CHAIN
IF ~~ THEN Borelios OrelBant4-4
~我大半的军旅生涯都没有。我入伍时，萨伊已有一代人未曾明攻。我们过正常的日子。我们成家，渐渐安适。我们知道这不会长久，可我们尽量过好。~
END
IF ~~ THEN REPLY ~我猜萨伊来攻了？~ GOTO OrelBant4-5

CHAIN
IF ~~ THEN Borelios OrelBant4-5
~我的孩子长大了，仅此而已。~
END
IF ~~ THEN REPLY ~是的，有意思，可我还是不明白——你怎么曾是个法师，如今却不是了？~ GOTO OrelBant4-6

CHAIN
IF ~~ THEN Borelios OrelBant4-6
~那是个长故事，<CHARNAME>，我今天已经絮叨得够多了。我们不久再谈，不过在专心手头的事之前，我想知道一件事。你当初为什么开始冒险？是什么把你引去的？~
END
IF ~~ THEN REPLY ~我刚成年就成了孤儿，被逐出家门。我实在没别的可做。~ GOTO OrelBant4-7
IF ~~ THEN REPLY ~我们的养父葛立安在我们行到博德之门外时被杀了。直到我被绑来阿斯卡特拉，我的目的都是找杀他的人复仇。~ GOTO OrelBant4-7

CHAIN
IF ~~ THEN Borelios OrelBant4-7
~嗯，我明白了。你所处的境况极为严酷。你仍能活下来、甚至得胜，说明你的韧性。没有多少人能面对你所面对的。~
= ~来，回到我们的旅程。这回我来走前头，好吗？~ EXIT