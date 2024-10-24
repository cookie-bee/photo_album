//日志记录工具
import hilog from '@ohos.hilog';

const LOGGER_PREFIX: string = 'Electronic Album'
//标识日志来源

//封装hilog中的日志记录功能
class Logger {
  private domain: number = 0   //服务域（0xFFFFF），用于区分不同的服务或者模块
  private prefix: string = ''   //标识日志标签（log tag）

  //日志格式
  private format: string = '%{public}s,%{public}s'

  //设立构造函数
  constructor(prefix: string = '',domain: number = 0xFF00) {
    this.prefix = prefix
    this.domain = domain
  }

  //定义格式化日志方法
  //这些方法接受可变参数args
  debug(...args: Object[]):void {
    hilog.debug(this.domain,this.prefix,this.format)
  }

  info(...args: Object[]):void {
    hilog.info(this.domain,this.prefix,this.format)
  }

  warn(...args: Object[]):void {
    hilog.warn(this.domain,this.prefix,this.format)
  }

  error(...args: Object[]):void {
    hilog.error(this.domain,this.prefix,this.format)
  }
}

export default new Logger(LOGGER_PREFIX)