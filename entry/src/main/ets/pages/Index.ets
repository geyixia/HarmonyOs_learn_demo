@Entry
@Component
struct Index {
  @State message: string = 'Hello World1'

  build() {
    // Column 的子组件都会以纵向的方式排列 Row 的子组件左右方式排列
    Column() {
      Header()
      Main()
      Footer()
    }
  }
}
// comp
@Component
struct Header {
  build() {
    Row() {
      Text("Header")
    }
    .width('100%')
    .height(50)
    .backgroundColor(Color.Pink)
    .justifyContent(FlexAlign.Center)

  }
}

@Component
struct Main {
  build() {
    Row() {
      Text("Main")
        .fontColor(Color.White)
    }
    .width('100%')
    .height(200)
    .backgroundColor(Color.Blue)
    .justifyContent(FlexAlign.Center)
  }
}

@Component
struct Footer {
  build() {
    Row() {
      Text("Footer")
        .fontColor(Color.White)
    }
    .width('100%')
    .height(50)
    .backgroundColor(Color.Pink)
    .justifyContent(FlexAlign.Center)
  }
}

// @Entry修饰符 @Component自定义组件 @State响应式变量声明
// struct结构的意思 声明的内容不能与系统的组件名重名
// struct上面必须有@Component或者@CustomDialog装饰器装饰 声明是组件还是弹窗

// Column容器组件 - 列