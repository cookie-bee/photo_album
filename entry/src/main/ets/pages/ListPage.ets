import router from '@ohos.router';
import Constants from '../common/constants/Constants'
import Logger from  '../common/utils/Logger'
import { JSON } from '@kit.ArkTS';

@Entry
@Component
struct ListPage {
  photoArr: Array<Resource> = (router.getParams() as Record<string,Array<Resource>>)[`${Constants.PARAM_PHOTO_ARR_KEY}`]
  //获取页面路由参数，使用PARAM_PHOTO_ARR_KEY作为键来获取对应的值
  @StorageLink('selectedIndex') selectedIndex: number = 0


  build() {
    Navigation(){
      Grid(){
        ForEach(this.photoArr,(img:Resource,index: number)=>{
          GridItem() {
            Image(img)
              .width(Constants.FULL_PERCENT)
              .height(Constants.FULL_PERCENT)
              .objectFit(ImageFit.Cover)     //图片自适应
              .onClick(()=>{
                this.selectedIndex = index
                router.pushUrl({
                  url: Constants.URL_DETAIL_LIST_PAGE,
                  params: {
                    photoArr: this.photoArr
                  }
                }).catch((error: Error)=>{
                  Logger.error(Constants.TAG_LIST_PAGE,JSON.stringify(error))
                })
              })
          }
          .width(Constants.FULL_PERCENT)
          .aspectRatio(1)   //设置宽高比

        }, (item: Resource) => JSON.stringify(item))
      }
      .columnsTemplate(Constants.GRID_COLUMNS_TEMPLATE)
      .rowsGap(Constants.LIST_ITEM_SPACE)
      .layoutWeight(1)
    }
    .title(Constants.PAGE_TITLE)
    .hideBackButton(false)
    .titleMode(NavigationTitleMode.Mini)
  }



}