@Entry
@Component
struct Equalization {
  //自适应布局-均分能力
  build() {
    Column() {
      //示例：当设备的宽度增加或减少时，子组件的宽度不变，增加或减少的区域全部均匀分配给空白区域
      //实现方案1：容器Flex + 参数justifyContent
      Flex({ justifyContent: FlexAlign.SpaceEvenly }) {
        Text('T1')
          .backgroundColor(Color.Red)
          .fontSize(88)

        Text('T2')
          .backgroundColor(Color.Pink)
          .fontSize(88)

        Text('T3')
          .backgroundColor(Color.Gray)
          .fontSize(88)
      }

      //实现方案2：容器Row + 属性justifyContent
      Row() {
        Text('T1')
          .backgroundColor(Color.Red)
          .fontSize(88)

        Text('T2')
          .backgroundColor(Color.Pink)
          .fontSize(88)

        Text('T3')
          .backgroundColor(Color.Gray)
          .fontSize(88)
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceEvenly)

      //实现方案3：容器Row + 组件Blank
      Row() {
        Blank()
        Text('T1')
          .backgroundColor(Color.Red)
          .fontSize(88)
        Blank()
        Text('T2')
          .backgroundColor(Color.Pink)
          .fontSize(88)
        Blank()
        Text('T3')
          .backgroundColor(Color.Gray)
          .fontSize(88)
        Blank()
      }
      .width('100%')

    }
  }
}