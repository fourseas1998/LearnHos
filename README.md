# 开源项目
GitHub：[LearnHos](https://github.com/fourseas1998/LearnHos)

码云：[LearnHos](https://gitee.com/csh1998/LearnHos)

---

# 布局
## 自适应布局
<a id="Layout-Adaptive-Stretch"></a>
### 拉伸能力
#### 定义
当父容器的尺寸发生变化时，增加或减少的空间**全部分配**给父容器内的**指定子组件**
#### 场景1：自动填充
实现：[容器组件-Row](#Compont-Row) + [基础组件Blank](#Compont-Blank)

#### 场景2：按指定的比例拉伸或收缩
- 拉伸

  当父容器在主轴方向上的尺寸**大于**所有子组件的尺寸之和时

  实现：[组件通用属性-Flex布局-FlexGrow](#Property-Flex)
- 收缩

  当父容器在主轴方向上的尺寸**小于**所有子组件的尺寸之和时

  实现：[组件通用属性-Flex布局-FlexShrink](#Property-Flex)

#### 代码示例

GitHub：[自适应布局-拉伸能力](https://github.com/fourseas1998/LearnHos/blob/master/entry/src/main/ets/pages/layout/Stretch.ets)

码云：[自适应布局-拉伸能力](https://gitee.com/csh1998/LearnHos/blob/master/entry/src/main/ets/pages/layout/Stretch.ets)

<a id="Layout-Adaptive-Equalization"></a>
### 均分能力
#### 定义
当父容器的尺寸发生变化时，增加或减少的空间**全部均匀分配**给父容器内的**空白区域**
#### 场景
内容数量固定、均分显示。

实现方案1：[容器组件-Flex](#Compont-Flex) + 参数justifyContent

实现方案2：[容器组件-Row](#Compont-Row) + 属性justifyContent

实现方案3：[容器组件-Row](#Compont-Row) + [基础组件Blank](#Compont-Blank)

#### 代码示例

GitHub：[自适应布局-均分能力](https://github.com/fourseas1998/LearnHos/blob/master/entry/src/main/ets/pages/layout/Equalization.ets)

码云：[自适应布局-均分能力](https://gitee.com/csh1998/LearnHos/blob/master/entry/src/main/ets/pages/layout/Equalization.ets)

### 占比能力
~~TODO~~
### 缩放能力
~~TODO~~
### 延伸能力
~~TODO~~
### 隐藏能力
~~TODO~~
### 折行能力
~~TODO~~

## 响应式布局
### 断点
~~TODO~~
### 媒体查询
~~TODO~~
### 栅格布局
~~TODO~~

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

- 仅当父组件为 [容器组件-Row](#Compont-Row) / Column 时生效。

- Blank的父组件如果不设置宽度，那么Blank会失效，可以通过设置Blank的最小宽度来填充固定宽度。


### 容器组件
<a id="Compont-Column"></a>
#### Column
官方API文档：[Column](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/ts-container-column-0000001380440890-V3)

***定义***

沿垂直方向布局的容器。可以包含子组件。

***使用***

```typescript
//参数
/*
纵向布局元素垂直方向间距。
默认值：0，单位vp
*/
Column({space:10}){
}

//属性
/*
设置子组件在水平方向上的对齐格式。
默认值：HorizontalAlign.Center
*/
Column(){
}
.width('100%')
.height(30)
.alignItems(HorizontalAlign.Center)

/*
设置子组件在垂直方向上的对齐格式。
默认值：FlexAlign.Start
*/
Column(){
}
.width('100%')
.height(30)
.justifyContent(FlexAlign.Start)
```

<a id="Compont-Row"></a>
#### Row
官方API文档：[Row](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/ts-container-row-0000001380440898-V3)

***定义***

沿水平方向布局容器。可以包含子组件。

***使用***

```typescript
//参数
/*
横向布局元素间距。
默认值：0，单位vp
*/
Row({space:10}){
}

//属性
/*
设置子组件在垂直方向上的对齐格式，
默认值：VerticalAlign.Center
*/
Row(){
}
.width('100%')
.alignItems(VerticalAlign.Center)

/*
设置子组件在水平方向上的对齐格式，
默认值：FlexAlign.Start
*/
Row(){
}
.width('100%')
.justifyContent(FlexAlign.Start)
```

案例：[自适应布局-均分能力](#Layout-Adaptive-Equalization)

<a id="Compont-Flex"></a>
#### Flex
官方API文档：[Flex](https://developer.harmonyos.com/cn/docs/documentation/doc-references-V3/ts-container-flex-0000001430320949-V3)

***定义***

以弹性方式布局子组件的容器组件。可以包含子组件。

***使用***

```typescript
//参数
/*
子组件在Flex容器上排列的方向，即主轴的方向。
*/
Flex({direction:FlexDirection.Row}){
}

/*
Flex容器是单行/列还是多行/列排列。
*/
Flex({wrap:FlexWrap.NoWrap}){
}

/*
子组件在Flex容器主轴上的对齐格式。
*/
Flex({justifyContent:FlexAlign.Start}){
}

/*
子组件在Flex容器交叉轴上的对齐格式。
*/
Flex({alignItems:ItemAlign.Start}){
}

/*
交叉轴中有额外的空间时，多行内容的对齐方式。仅在wrap为Wrap或WrapReverse下生效。
*/
Flex({alignContent:FlexAlign.Start}){
}
```

案例：[自适应布局-均分能力](#Layout-Adaptive-Equalization)


### 媒体组件
~~TODO~~
### 绘制组件
~~TODO~~
### 画布组件
~~TODO~~

---
持续更新中~