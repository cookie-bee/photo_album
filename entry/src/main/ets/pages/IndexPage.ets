import router from '@ohos.router';
import Constants from '../common/constants/Constants'
import Logger from '../common/utils/Logger'
import PhotoItem from '../view/PhotoItem'


@Entry
@Component
struct IndexPage {

  swiperController: SwiperController = new SwiperController();
  scroller: Scroller = new Scroller();
  //定义Swiper组件所需控制器


  build() {
    Column(){
      Row() {
        Text($r('app.string.EntryAbility_label'))
      }

      Swiper(this.swiperController)
    }
  }
}