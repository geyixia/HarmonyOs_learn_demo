@Entry
@Component
struct Case {
  @State message: string = 'Hello World'

  build() {
    Scroll(){
      Row() {
        Column() {
          // Text里面只能放span
          Text("你好，鸿蒙")
          Text() {
            Span("¥")
              .fontSize(12)
            Span("50.86")
              .fontSize(20)
          }
          // Row与css中的flex布局相似 支持调整布局 space: 15间距
          Row({ space: 15 }) {
            Column()
              .width(100)
              .height(200)
              .backgroundColor(Color.Pink)
            Column()
              .width(100)
              .height(200)
              .backgroundColor(Color.Blue)
            Column()
              .width(100)
              .height(200)
              .backgroundColor(Color.Red)
          }.width('100%').justifyContent(FlexAlign.Center)

          Column({ space: 20 }) {
            Column()
              .width(200)
              .height(100)
              .backgroundColor(Color.Pink)
            Column()
              .width(200)
              .height(100)
              .backgroundColor(Color.Blue)
            Column()
              .width(200)
              .height(100)
              .backgroundColor(Color.Red)
          }.margin({ top: 20 })
          // Flex组件 direction布局
          Flex({ direction: FlexDirection.Row, justifyContent: FlexAlign.SpaceEvenly }){
            Column()
              .width(100)
              .height(200)
              .backgroundColor(Color.Pink)
            Column()
              .width(100)
              .height(200)
              .backgroundColor(Color.Blue)
            Column()
              .width(100)
              .height(200)
              .backgroundColor(Color.Red)
          }.margin({top:200})
        }
        .width('100%')
      }
    }
  }
}