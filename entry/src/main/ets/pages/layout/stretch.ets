@Entry
@Component
struct Stretch {
  //自适应布局-拉伸能力
  build() {
    Column() {
      //示例1：当设置的宽度增加或减少时，WIFI和开关始终在设备左右两端，并且中间的黄色块自动进行填充
      //实现方案：使用Blank组件
      Row() {
        Text('WIFI')
          .fontSize(50)
        Blank()
          .color(Color.Yellow)
        Toggle({ type: ToggleType.Switch, isOn: true })
          .size({ width: 158, height: 98 })
      }
      .width('100%')
      .height(200)

      /**
       * 示例2
       * T1、T2、T3,默认宽度之和为1000。当设备宽度进行变化，T1、T2始终按照1:3的比例进行缩放，T3宽度始终不变
       * */
      Flex() {
        Text('Flex-T1')
          .fontSize(50)
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Red)
          .width(400)
          .flexGrow(1)
          .flexShrink(3)

        Text('Flex-T2')
          .fontSize(50)
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Pink)
          .width(400)
          .flexGrow(3)
          .flexShrink(1)

        Text('Flex-T3')
          .fontSize(50)
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Gray)
          .width(200)
          .flexGrow(0)
          .flexShrink(0)
      }
      .height(100)

      Row() {
        Text('Row-T1')
          .fontSize(50)
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Red)
          .width(400)
          .flexGrow(1)
          .flexShrink(3)

        Text('Row-T2')
          .fontSize(50)
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Pink)
          .width(400)
          .flexGrow(3)
          .flexShrink(1)

        Text('Row-T3')
          .fontSize(50)
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Gray)
          .width(200)
          .flexGrow(0)
          .flexShrink(0)
      }
      .height(100)
      .width('100%')

      /**
       * 示例3
       * T1、T2、T3，默认宽度之和为1000,
       * 当设备宽度大于1000，多余的宽度，全部分配给T2，T1和T3的宽度不变
       * 当设备的宽度小于1000，T2的宽度不变，T1和T3的宽度按照1:1的比例进行缩小。
       * */
      Flex() {
        Text('T1')
          .fontSize(50)
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Red)
          .width(400)
          .flexGrow(0)
          .flexShrink(1)

        Text('Flex-T2')
          .fontSize(50)
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Pink)
          .width(200)
          .flexGrow(1)
          .flexShrink(0)

        Text('T3')
          .fontSize(50)
          .textAlign(TextAlign.Center)
          .backgroundColor(Color.Gray)
          .width(400)
          .flexGrow(0)
          .flexShrink(1)
      }
      .height(100)

    }
  }
}