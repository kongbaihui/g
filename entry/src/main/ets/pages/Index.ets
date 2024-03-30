//gujiale
import router from '@ohos.router';
console.log('gujiale1');
console.log('gujiale3');
let title : string = 'gujiale';
console.log('name is', title);

@Entry
@Component
struct Index {
  @State message: string = 'welcome to the world'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button(){
          Text('Next')
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({
          top:20
        })
        .backgroundColor('red')
        .width('40%')
        .height('10%')
        // 跳转按钮绑定onClick事件，点击时跳转到第二页
        .onClick(() => {
          console.info(`Succeeded in clicking the 'Next' button.`)
          // 跳转到第二页
          router.pushUrl({ url: 'pages/Second' }).then(() => {
            console.info('Succeeded in jumping to the second page.')
          }).catch((err) => {
            console.error(`Failed to jump to the second page.Code is ${err.code}, message is ${err.message}`)
          })
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}