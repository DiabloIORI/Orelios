# Orelios（奥雷利奥斯）汉化说明

## 一、模组信息

| 项目 | 内容 |
| --- | --- |
| 模组名 | Orelios NPC（奥雷利奥斯） |
| 原作 | PaulaMigrate（`SUPPORT ~PaulaMigrate@mail.com~`，`VERSION ~2.0~`） |
| 适配 | BG2 SoA + ToB，支持 EET |
| 角色 | 可招募武僧（苦修者），来自阿格拉隆德（Aglarond），SoA 段于铜冠酒馆后屋初遇 |
| 模组根目录 | `Orelios/Orelios` |
| 主要内容 | 3 个 `.d` 对话脚本 + 1 个 `Setup-Orelios.tp2` + 22 段 ogg 语音 + 法术/立绘/CRE |

## 二、汉化范围（源码级汉化）

本模组**没有 tra 层**：不存在 `tra/`、`languages/`、`English/`、`Schinese/` 之类的目录，全部文本直接内嵌在源码里，因此采用**源码级（代码级）汉化**，直接替换原文件中的字符串字面量：

| 文件 | 文本承载形式 |
| --- | --- |
| `D/PM_Orel.d` | `SAY ~…~`、`IF ~~ THEN REPLY ~…~`、`++ ~…~`（初遇、招募、离队归队、CCQuery 问答） |
| `D/PMOrelJ.d` | 各地剧情插话（铜冠酒馆、影贼、蒙面法师会、禁魔监狱、眼魔教团、盲眼信徒、卓尔、食人魔、ToB 终局） |
| `D/BOrelios.d` | 巨型 banter 文件：`CHAIN` 块体文本（`THEN Borelios <label>` 后另起一行的 `~…~` 与 `= ~…~` 续行）、`REPLY ~…~`、`++ ~…~` |
| `Setup-Orelios.tp2` | `SAY NAME1/NAME2/BIO/MORALE/HAPPY/UNHAPPY_*/…/SELECT_*/…` 的 CRE 文本，及 4 个法术的 `SAY NAME1` |

### 未改动（有意保留）

- **触发器与脚本代码**：`InParty("PMOrel")`、`Global("PMOrelTalk","GLOBAL",1)`、`StateCheck(...)`、`DO ~IncrementGlobal(...)~`、`SetGlobal("OreliusJoinrf","LOCALS",1) JoinParty()`、label 名、`APPEND ~pdialog.2da~` / `~interdia.2da~` 的文件名列表等，**逐字未变**（校验项 4 已逐对确认）。
- **`BAF/PM_Orel.baf`、`BAF/AR0406.baf`**：通篇 0 个 `~…~` 字符串，纯脚本，无需汉化。
- **`audio/*.ogg`（22 段语音）**、**`portrait/*.bmp`**、**`spells/*.spl`**（仅 `NAME1` 由 tp2 的 `SAY` 覆写）、**`Misc/*`**、**`Orelios.ini`**（eseries/esium 配置）。

## 三、编码与换行

- **编码：UTF-8 无 BOM**。依据：`Setup-Orelios.tp2` 中**没有 `HANDLE_CHARSETS`**、没有 `AUTO_TRA`、没有 `LANGUAGE` 定义，WeiDU 不会对源码做转码，`.d`/`.tp2` 里的字节会原样进入 `dialog.tlk`；中文 EET 的 `lang/zh_CN/dialog.tlk` 本身为 UTF-8，故源码存 UTF-8 中文即可正确显示。
- **换行：CRLF**，与改动前完全一致（4 个文件的行数、`CR`/`LF` 计数前后完全相同，无孤立 LF、无 BOM）。
- 改写方式：按 `~(.*?)~` 的**出现序号**逐个替换字符串字面量，其余字节原样保留；改前自动生成同名 `.bak` 备份。

## 四、文件与条目统计

| 文件 | 字符串对数（`~…~`） | 汉化条数 | 说明 |
| --- | --- | --- | --- |
| `D/PM_Orel.d` | 159 | **78** | 另有 2 处 `DO ~SetGlobal… JoinParty()~` 脚本代码，按规则不译 |
| `D/PMOrelJ.d` | 128 | **66** | 其余为触发器 |
| `D/BOrelios.d` | 900 | **553** | 其余为触发器与 `DO ~…~` 动作 |
| `Setup-Orelios.tp2` | 85 | **48** | 另 2 处为 2DA 文件名列表，不译 |
| **合计** | 1233 | **745** | 原文约 7.7 万字符 |

- 4 个法术名：`Denial of Harm` → **拒伤**、`Denial of Sight` → **拒视**、`Denial of Deceit` → **拒诈**、`Denial of Magic` → **拒法**。
- NPC 名：`Orelios` → **奥雷利奥斯**（`NAME1`/`NAME2` 与对话内自称一致）。
- `BIO` 为一段约 300 字的第三人称小传（维塔拉出身、从军多年、两个女儿成年后离乡、气质沉静自持），已整段译出。

## 五、术语表

| 原文 | 译文 |
| --- | --- |
| Orelios | 奥雷利奥斯 |
| Aglarond / Aglarondan | 阿格拉隆德 / 阿格拉隆德人 |
| Veltalar | 维塔拉 |
| Sea of Fallen Stars | 坠星海 |
| Amn / Amnish | 安姆 / 安姆人 |
| Athkatla | 阿斯卡特拉 |
| Candlekeep | 烛堡 |
| Baldur's Gate | 博德之门 |
| Sword Coast | 剑湾 |
| Chionthar | 奇昂萨河 |
| Sembia / Cormyr | 森比亚 / 科米尔 |
| Fields of the Dead | 亡者之野 |
| Cloakwood / Yuirwood | 斗篷森林 / 尤尔林 |
| Thay / Thayan | 萨伊 / 萨伊的 |
| Rillifane Rallathil | 里利凡·拉拉希尔（简称“里利凡”） |
| Sylmae | 希尔梅 |
| Queen Ilione / the Symbul | 伊莉奥娜女王 / 辛布尔 |
| the Symbulmyn | 辛布尔民 |
| Army of the Lion | 狮子军 |
| Emmech | 艾梅克 |
| Tymora / Bhaal / Cyric | 泰摩拉 / 巴尔 / 塞瑞克 |
| Alaundo | 阿劳多 |
| Gorion / Imoen / Irenicus | 葛立安 / 爱蒙 / 爱瑞尼克斯 |
| Jon Irenicus | 琼·爱瑞尼克斯 |
| Sarevok / Iron Throne | 萨瑞沃克 / 铁王座 |
| Copper Coronet / Bernard | 铜冠酒馆 / 伯纳德 |
| Adventurer's Mart / Waukeen's Promenade | 冒险者市场 / 沃金步道 |
| Temple District / the Slums | 神殿区 / 贫民区 |
| Shadow Thieves / Cowled Wizards / Spellhold | 影贼 / 蒙面法师会 / 禁魔监狱 |
| Yoshimo / Viconia / Jaheira / Minsc / Aerie / Edwin | 吉见 / 维康妮亚 / 贾希拉 / 明斯克 / 艾黎 / 艾德温 |
| Drizzt Do'Urden / drow / beholder / ogre | 崔斯特·杜垩登 / 卓尔 / 眼魔 / 食人魔 |
| Ki / monk / ascetic / scout | 气 / 武僧 / 苦修者 / 斥候 |
| Denial of Harm / Sight / Deceit / Magic | 拒伤 / 拒视 / 拒诈 / 拒法 |
| Mirror Image / Oracle | 镜影术 / 神谕术 |

## 六、保留不译

- 占位符原样保留：`<CHARNAME>`、`<PRO_SIRMAAM>`、`<PRO_MANWOMAN>`、`<PRO_HESHE>`、`<PRO_HISHER>`、`<DAYNIGHTALL>`。
- 代码标识符一律不译：`PMOrel`、`Orelius`（脚本内变量拼写）、`PM_Orel*`、`OreliusJoinrf`、`PMOrelTalk`、label 名、2DA 表名与文件名。
- 语音标记（`[PM_Orela]` 等）与 `*.ogg` 文件名保留原样。
- 法术提示里的英文法术名在译文中以中文名呈现（“镜影术”“神谕术”），不保留英文。

## 七、校验记录

以各文件 `.bak` 为原文基线，逐项自动比对，全部通过：

| 校验项 | 结果 |
| --- | --- |
| `~…~` 对数（159/128/900/85） | 前后一致，4/4 通过 |
| 未列入译稿的字符串逐字未变 | 0 处意外改动（含全部触发器、`DO ~…~`、2DA 文件列表） |
| 占位符集合逐条一致 | 4/4 通过，无缺失/新增 |
| 多行条目行数（`\n` 数）逐条一致 | 4/4 通过（`CHAIN` 块体文本与 `= ~…~` 续行完整） |
| 文件物理行数与 `CR`/`LF` 计数 | 前后完全相同（146/284/1502/100） |
| UTF-8 可严格解码 + 无 BOM | 通过 |
| 孤立 LF（非 CRLF 换行） | 0 |
| 译文条内连续 ≥4 拉丁字母残留 | 0 |
| `~…~` 之外的区域出现汉字 | 0（中文未泄漏进代码区） |

汉化条数：`PM_Orel.d` 78 + `PMOrelJ.d` 66 + `BOrelios.d` 553 + `tp2` 48 = **745 条**。

## 八、备注

1. **备份**：4 个被改文件旁均有同名 `.bak`（`PM_Orel.d.bak`、`PMOrelJ.d.bak`、`BOrelios.d.bak`、`Setup-Orelios.tp2.bak`），可直接覆盖回滚。
2. **无需语言选择**：因无 tra 层，安装时不会出现语言菜单，安装完成即是中文；也不存在“装在 English 目录仍是英文”的问题。
3. **安装顺序**：本模组不含 crossmod 内容（无其它 NPC 模组的交叉对话文件），因此**不涉及 crossmod 顺序**；按常规 NPC 模组顺序（EET 核心 → 本模组 → EET_End）安装即可。若与其它 NPC 模组同装，只需保证都在 `EET_End` 之前。
4. **tp2 未改动安装逻辑**：`ALWAYS` 块的 EET 章节变量计算、`COPY`/`COMPILE`/`LAF HANDLE_AUDIO`/`APPEND` 流程、`EXTEND_TOP` 等一律保持原样，仅替换 `SAY` 与法术 `NAME1` 的字面量。
5. **文风**：奥雷利奥斯为武士苦修者，译文取“沉静、克制、略带说教”的书面语（“谨慎乃勇武之要”“我提醒你”“我猜/我本希望”），与队友（贾希拉、维康妮亚、吉见、明斯克、艾黎）的插话保持各自语气区分。
