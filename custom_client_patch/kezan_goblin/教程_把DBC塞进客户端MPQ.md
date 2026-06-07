# 教程:把改好的 DBC 塞进客户端,改地精出生动画

## 你要替换的文件
- **改好的DBC**:`ChrRaces_地精科赞动画.dbc`(从服务器机器拷到客户端机器)
- **改动内容**:只把地精(race=9)的出生动画从 21(杜隆塔尔)改成 171(科赞)

---

## 核心原理(先懂这个)

- 出生过场动画是**客户端**播的,服务器管不着。
- 客户端读 DBC 的优先级:**散装文件 > patch MPQ > 原版 MPQ**
  - 也就是说,只要把 DBC 放成**散装文件**,客户端会优先用它,**根本不用碰 MPQ**!
- DBC 在客户端里的标准路径是:`Data\DBFilesClient\ChrRaces.dbc`

---

## 方法 A:散装文件(最简单,推荐先试这个)

不需要任何工具,5 步搞定:

1. 到客户端根目录(有 `Wow.exe` 的那个文件夹)
2. 进入 `Data` 文件夹
3. 在 `Data` 里新建一个文件夹,命名 **`DBFilesClient`**(如果没有的话)
4. 把改好的 `ChrRaces_地精科赞动画.dbc` 拷进去,**改名成 `ChrRaces.dbc`**
   - 最终路径:`你的客户端\Data\DBFilesClient\ChrRaces.dbc`
5. 启动游戏(如果开着先关掉重开),新建地精测试

> ✅ 优点:不用工具、随时删掉就还原、不破坏 MPQ
> ⚠️ 注意:有些登录器/客户端会校验文件或忽略散装 DBC。如果方法A没效果,再用方法B。

---

## 方法 B:塞进 patch MPQ(方法A无效时用)

需要工具:**Ladik's MPQ Editor**(免费,Windows)
下载搜 "Ladik MPQ Editor" 即可。

### 步骤

1. **找一个可写的 patch MPQ**
   - 在 `客户端\Data\` 下找 `patch-4.MPQ`、`patch-5.MPQ` 之类的**自定义补丁包**
   - 中文客户端可能在 `Data\zhCN\` 下,如 `patch-zhCN-4.MPQ`
   - **不要动 `common.MPQ`、`expansion.MPQ`、`lichking.MPQ` 这些原版大包**!
   - 如果没有自定义 patch,自己新建一个空的(MPQ Editor 菜单 File → New MPQ),命名按字母序排在后面的,如 `patch-Z.MPQ`,放进 `Data\`

2. **用 MPQ Editor 打开那个 patch MPQ**
   - File → Open,选中 patch-X.MPQ

3. **导入 DBC**
   - 把 `ChrRaces_地精科赞动画.dbc` 拖进 MPQ Editor 窗口
   - 弹出对话框,**目标路径填**:`DBFilesClient\ChrRaces.dbc`
     (注意是反斜杠 `\`,文件名必须叫 `ChrRaces.dbc`)
   - 确认导入

4. **保存并关闭** MPQ Editor

5. 启动游戏测试

> ⚠️ 关键:MPQ 加载是**按文件名字母/数字顺序**,后面的覆盖前面的。
> 你的 patch 文件名排序要在含原版 ChrRaces.dbc 的包**之后**,否则不生效。
> 实在不确定就命名 `patch-9.MPQ` 或 `patch-Z.MPQ`(排最后)。

---

## 测试 & 可能的结果

新建一个地精角色,看出生动画:

- 🎬 **播出科赞动画** → 成功!客户端有这个视频文件。
- ⬛ **黑屏卡住 / 一直黑** → 客户端 MPQ 里**没有 171 号科赞动画的视频文件**
  (WotLK 原版没有,这是 Cataclysm 内容)。
  → 解决:告诉我,我把动画改成 **0(无动画直接进游戏)**,干净不卡。
- ⏭️ **直接跳过进游戏** → 客户端找不到视频,自动跳过,也算能接受。

---

## 还原方法

- 方法A:删掉 `Data\DBFilesClient\ChrRaces.dbc` 散装文件即可。
- 方法B:用 MPQ Editor 从 patch 里删掉 `DBFilesClient\ChrRaces.dbc`。
- 服务器端备份在:`/home/bealien15u/azeroth-server/data/dbc/ChrRaces.dbc.bak_*`
