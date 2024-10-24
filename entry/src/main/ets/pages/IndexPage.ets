import router from '@ohos.router';
import Constants from '../common/constants/Constants'
import Logger from '../common/utils/Logger'
import PhotoItem from '../view/PhotoItem'
import { JSON } from '@kit.ArkTS';

//首页面
@Entry
@Component
struct IndexPage {

  swiperController: SwiperController = new SwiperController();
  scroller: Scroller = new Scroller();
  //定义Swiper组件所需控制器

  @State
  currentIndex: number = 0
  @State
  angle: number = 0


  build() {
    Column(){
      Row() {
        Text($r('app.string.EntryAbility_label'))
          .fontSize($r('app.float.title_font_size'))
          .fontWeight(Constants.TITLE_FONT_WEIGHT)
      }
      .height($r('app.float.navi_bar_height'))
      .width(Constants.FULL_PERCENT)
      .alignItems(VerticalAlign.Center)
      .justifyContent(FlexAlign.Start)
      .padding({
        left: $r('app.float.title_padding')
      })
      .margin({
        top: $r('app.float.grid_padding')
      })

      //设置首页轮播图
      Swiper(this.swiperController) {
        ForEach(Constants.BANNER_IMG_LIST,(item: Resource)=>{
          Row(){
            Image(item)
              .width(Constants.FULL_PERCENT)
              .height(Constants.FULL_PERCENT)
          }
          .width(Constants.FULL_PERCENT)
          .aspectRatio(Constants.BANNER_ASPECT_RATIO)
        },
          (item: Resource,index: number)=> JSON.stringify(item) +index)
      }
      .autoPlay(true)    //是否自动轮播
      .loop(true)        //是否循环
      .margin($r('app.float.grid_padding'))
      .borderRadius($r('app.float.img_border_radius'))
      .clip(true)        //超过组件的子组件将被剪辑（确保子组件不会超出容器的范围）
      .duration(Constants.BANNER_ASPECT_RATIO)     //组件切换的动画时长
      .indicator(false)       //是否显示导航点


      //网格布局
      Grid(){
        ForEach(Constants.IMG_ARR,(photoArr: Array<Resource>)=>{
          GridItem(){
            PhotoItem({photoArr})
          }
          .width(Constants.FULL_PERCENT)
          .aspectRatio(Constants.STACK_IMG_RATIO)
          .onClick(()=>{
            router.pushUrl({
              url: Constants.URL_LIST_PAGE,
              params: {photoArr: photoArr}
            }).catch((error:Error) => {
              Logger.error(Constants.TAG_INDEX_PAGE, JSON.stringify(error));
            })
          })
        },
          (item:Array<Resource>,index: number)=> JSON.stringify(item) + index)
      }
      .columnsTemplate(Constants.INDEX_COLUMNS_TEMPLATE)
      .columnsGap($r('app.float.grid_padding'))
      .rowsGap($r('app.float.grid_padding'))
      .padding({
        left: $r('app.float.grid_padding'),
        right: $r('app.float.grid_padding')
      })
      .width(Constants.FULL_PERCENT)
      .layoutWeight(1)       //自适应布局，括号内数字表示权重

    }
    .width(Constants.FULL_PERCENT)
    .height(Constants.FULL_PERCENT)
  }
}