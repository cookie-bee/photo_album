
export default class Constants {

  //轮换图列表
  static readonly BANNER_IMG_LIST: Array<Resource> = [
    $r('app.media.ic_food_0'),
    $r('app.media.ic_flower_0'),
    $r('app.media.ic_emoji_0'),
    $r('app.media.ic_dududa_0'),

  ]

  //食物相册
  static readonly FOOD_LIST: Array<Resource> = [
    $r('app.media.ic_food_0'),
    $r('app.media.ic_food_1'),
    $r('app.media.ic_food_2'),
    $r('app.media.ic_food_3'),
    $r('app.media.ic_food_4'),
    $r('app.media.ic_food_5')
  ]

  //嘟嘟哒嘟嘟哒！相册
  static readonly DUDUDA_LIST: Array<Resource> = [
    $r('app.media.ic_dududa_0'),
    $r('app.media.ic_dududa_1'),
    $r('app.media.ic_dududa_2'),
    $r('app.media.ic_dududa_3'),
    $r('app.media.ic_dududa_4'),
    $r('app.media.ic_dududa_5'),
    $r('app.media.ic_dududa_6'),
    $r('app.media.ic_dududa_7'),
    $r('app.media.ic_dududa_8')
  ]

  //表情包相册
  static readonly EMOJI_LIST: Array<Resource> = [
    $r('app.media.ic_emoji_0'),
    $r('app.media.ic_emoji_1'),
    $r('app.media.ic_emoji_2'),
    $r('app.media.ic_emoji_3'),
    $r('app.media.ic_emoji_4'),
    $r('app.media.ic_emoji_5'),
  ]

  //花相册
  static readonly FLOWER_LIST: Array<Resource> = [
    $r('app.media.ic_flower_0'),
    $r('app.media.ic_flower_1')
  ]

  //索引页
  static readonly IMG_ARR: Resource[][] = [
    [...Constants.FOOD_LIST,...Constants.DUDUDA_LIST,...Constants.EMOJI_LIST,...Constants.FLOWER_LIST],
    [...Constants.DUDUDA_LIST,...Constants.EMOJI_LIST,...Constants.FLOWER_LIST],
    [...Constants.FOOD_LIST,...Constants.EMOJI_LIST,...Constants.FLOWER_LIST],
    [...Constants.FOOD_LIST,...Constants.DUDUDA_LIST,...Constants.FLOWER_LIST]
  ]

  //标题字体粗细
  static readonly TITLE_FONT_WEIGHT: number = 500

  //宽高比
  static readonly BANNER_ASPECT_RATIO: number = 1.5

  //动画持续时间
  static readonly BANNER_ANIMATE_DURATION: number = 300

  //共享延迟
  static readonly SHARE_TRANSITION_DELAY: number = 100

  //宽高比
  static readonly STACK_IMG_RATIO: number = 0.7

  //列表间隔
  static readonly LIST_ITEM_SPACE: number = 2

  //缓存大小
  static readonly CACHE_IMG_SIZE: number = 4

  //缓存列表
  static readonly CACHE_IMG_LIST: string[] = ['', '', '', '']
  //数组中四个元素都被初始化为一个空字符串

  //标题
  static readonly PAGE_TITLE: string = '电子相册'

  //页面路由参数
  static readonly PARAM_PHOTO_ARR_KEY: string = 'photoArr'

  //Grid 列布局模板
  static readonly GRID_COLUMNS_TEMPLATE: string = '1fr 1fr 1fr 1fr'
  //这个字符串定义了一个包含四列的Grd布局，创建四个等宽的列

  //索引页列布局模板
  static readonly INDEX_COLUMNS_TEMPLATE: string = '1fr 1fr'

  //百分比
  static readonly FULL_PERCENT: string = '100%'

  //图片百分比
  static readonly PHOTO_ITEM_PERCENT: string = '90%'

  //显示计数
  static readonly SHOW_COUNT: number = 8

  //标准宽度
  static readonly DEFAULT_WIDTH: number = 360

  //内边距
  static readonly PHOTO_ITEM_PADDING: number = 8

  //偏移量
  static readonly PHOTO_ITEM_OFFSET: number = 16

  //透明度偏移值
  static readonly ITEM_OPACITY_OFFSET: number = 0.2

  //双倍数字
  static readonly DOUBLE_NUMBER: number = 2

  //ListPage索引
  static readonly URL_LIST_PAGE: string = 'pages/ListPage'

  static readonly URL_DETAIL_LIST_PAGE: string = 'pages/DetailListPage'

  static readonly URL_DETAIL_PAGE: string = 'pages/DetailPage'

  //报错
  static readonly TAG_INDEX_PAGE: string = 'IndexPage push error '

  static readonly TAG_LIST_PAGE: string = 'ListPage push error '

  static readonly TAG_DETAIL_PAGE: string = 'DetailListPage push error '



}

