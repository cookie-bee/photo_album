import { DEFAULT } from '@ohos/hypium'
import Constants from '../common/constants/Constants'

@Component
export default struct PhotoItem {
  photoArr: Array<Resource> = []

  @State currentIndex: number = 0

  private showCount: number = Constants.SHOW_COUNT / Constants.DOUBLE_NUMBER

  @Builder   //制定图片格式
  albumPicBuilder(img: Resource, index: number) {
    Column() {
      Image(img)
        .width(Constants.FULL_PERCENT)
        .height(Constants.FULL_PERCENT)
        .borderRadius($r('app.float.img_border_radius'))
        .opacity(1-(this.showCount-index-1)*Constants.ITEM_OPACITY_OFFSET)    //制定透明度按顺序递减
    }
    .padding((this.showCount-index-1) * Constants.PHOTO_ITEM_PADDING )         //制定内边距按顺序递减
    .offset({
      y: (this.showCount - index - 1) * (Constants.PHOTO_ITEM_OFFSET)          //制定位置偏移量按顺序递减
    })
    .height(Constants.PHOTO_ITEM_PERCENT)      //这个height是图片组件整体的高度
    .width(Constants.FULL_PERCENT)
  }

  build() {
    Stack({alignContent:Alignment.Top})        //设置堆叠模式
    {
      ForEach(Constants.CACHE_IMG_LIST,(img: string,index: number)=>{
        this.albumPicBuilder(this.photoArr[this.showCount- (index || 0) -1],index) //调用函数进行图片渲染
      },
        (item: string, index: number)=> JSON.stringify(item) + index)
      //这个回调函数用于生成一个唯一的键值，这个键值由图片资源的字符串表示和索引index组成。这个键值用于优化列表渲染性能，确保列表中的每个项都有一个唯一的标识符
    }
    .width(Constants.FULL_PERCENT)
    .height(Constants.FULL_PERCENT)
  }
}