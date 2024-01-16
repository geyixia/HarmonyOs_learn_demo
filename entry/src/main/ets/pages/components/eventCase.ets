import promptAction from '@ohos.promptAction'
@Entry
@Component
struct EventCase {
  // @State修饰的必须有个初始值
  @State name: string = ''
  @State account:string = ''
  login(){
    // AlertDialog.show({message:`${this.name}-${this.account}`})
    // 轻提示
    promptAction.showToast({message:`${this.name}-登录成功`})
  }
  build() {
    Row() {
      Column({ space: 20 }) {
        Text(){
          Span(this.name)
          Span(this.account)
        }
        TextInput({
          placeholder: '请输入用户名'
        }).width('80%').height(40).onChange((value)=>{
            // 只改变是出发
          this.name = value
        })
        TextInput({
          placeholder: '请输入密码'
        }).width('80%').height(40).onChange((value)=>{
          // 只改变是出发
          this.account = value
        }).type(InputType.Password)
        Button("登录").width('80%').onClick(()=>{
          this.login()
        }).enabled(!!(this.name&&this.account))
      }.width('100%')

    }.height('100%')
  }
}