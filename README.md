# LearnHos 项目
GitHub：[LearnHos](https://github.com/fourseas1998/LearnHos)

码云：[LearnHos](https://gitee.com/csh1998/LearnHos)

---

# UI开发
## 布局
### 自适应布局
<a id="Layout-Adaptive-Stretch"></a>
#### 拉伸能力
##### 定义
当父容器的尺寸发生变化时，增加或减少的空间**全部分配**给父容器内的**指定子组件**
##### 场景1：自动填充
实现：[组件Blank](#Compont-Blank)

##### 场景2：按指定的比例拉伸或收缩
- 拉伸

  当父容器在主轴方向上的尺寸**大于**所有子组件的尺寸之和时

  实现：[属性FlexGrow](#Property-Flex)
- 收缩

  当父容器在主轴方向上的尺寸**小于**所有子组件的尺寸之和时

  实现：[属性FlexShrink](#Property-Flex)

##### 代码示例
GitHub：[自适应布局-拉伸能力](https://github.com/fourseas1998/LearnHos/blob/master/entry/src/main/ets/pages/layout/stretch.ets)

码云：[自适应布局-拉伸能力](https://gitee.com/csh1998/LearnHos/blob/master/entry/src/main/ets/pages/layout/stretch.ets)

---
# 【资料】ArkTs语言
## 组件
### 组件通用信息
#### 通用事件
~~TODO~~
#### 通用属性
<a id="Property-Flex"></a>
##### Flex布局
官方API文档：[Flex布局](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/ts-universal-attributes-flex-layout-0000001430161081-V3)

***注意***

- 仅当父组件是 Flex、Column、Row 时生效。

###### Flex布局-FlexGrow
***定义***

设置父容器的剩余空间分配给此属性所在组件的比例。默认值为0。

***使用***

案例：[自适应布局-拉伸能力](#Layout-Adaptive-Stretch)

###### Flex布局-FlexShrink
***定义***

设置父容器压缩尺寸分配给此属性所在组件的比例。

父容器为Row、Column时，默认值：0

父容器为flex时，默认值：1

***使用***

案例：[自适应布局-拉伸能力](#Layout-Adaptive-Stretch)

#### 手势处理
~~TODO~~
### 基础组件
<a id="Compont-Blank"></a>
#### Blank
官方API文档：[Blank](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/ts-basic-components-blank-0000001380281274-V3)

***定义***

空白填充组件，在容器主轴方向上，空白填充组件具有自动填充容器空余部分的能力。

***使用***
```typescript
Blank()
//设置填充颜色
Blank().color(Color.Yellow)
Blank().color('#FFF24D')
Blank().backgroundColor(Color.Yellow)
Blank().backgroundColor('#FFF24D')
//设置最小宽度为160
Blank('160').color(Color.Yellow)
```
案例：[自适应布局-拉伸能力](#Layout-Adaptive-Stretch)

***注意***

- 仅当父组件为 Row / Column 时生效。
- Blank的父组件如果不设置宽度，那么Blank会失效，可以通过设置Blank的最小宽度来填充固定宽度。

### 容器组件
~~TODO~~
### 媒体组件
~~TODO~~
### 绘制组件
~~TODO~~
### 画布组件
~~TODO~~

---
持续更新中~