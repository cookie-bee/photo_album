import display from '@ohos.display'
import router from '@ohos.router';
import Constants from '../common/constants/Constants'

@Entry
@Component
struct DetailPage {
  scroller: Scroller = new Scroller()
  photoArr: Array<Resource> = (router.getParams() as Record<string,Array<Resource>>)[`${Constants.PARAM_PHOTO_ARR_KEY}`]
  preOffsetX: number = 0
  preOffsetY: number = 0
  currentScale: number = 1
  @State
  deviceWidth: number = Constants.DEFAULT_WIDTH
  @State
  smallImgWidth: number = (Constants.DEFAULT_WIDTH - Constants.LIST_ITEM_SPACE * (Constants.SHOW_COUNT - 1)) / Constants.SHOW_COUNT
  @State
  imageWidth: number = this.deviceWidth + this.smallImgWidth
  @StorageLink
  ('selectedIndex')selectedIndex: number = 0
  @State
  isScalling: boolean = true
  @State
  imgScale: number = 1
  @State
  imgOffSetX: number = 0
  @State
  imgOffSetY: number = 0
  @State
  bgOpacity: number = 0

  aboutToAppear(): void {
    let displayClass
  }

  build() {

  }
}