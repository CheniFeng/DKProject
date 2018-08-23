# DKProject

自己随便搭建的基于MVC的框架,目前有许多不完善的地方,有待进一步完善,仅供参考

目录结构说明:

-- Classes    存放所有的类文件
    
    -- Application  存放启动相关的类,如AppDelegate等. 为了减轻AppDelegate的入口压力,为AppDelegate创建了两个分类: 
      - AppCoreService 主要处理一些主要的窗口创建内容, 
      - AppPushService 处理推送相关的内容,也可以根据业务需要创建更多的分类
    
    -- BaseClass 存放一些基础类,如: 
        - BaseViewController  基础视图控制器,项目中的所有视图控制器都应该继承它
        - BaseModel  基础model,项目中的所有model都应该继承它
        - RequestService  网络请求服务,此处用到了第三方SDK: YTKNetwork
    
    -- Modules  存放业务模块相关的代码,每个模块分五个文件夹: 
        - Controllers 存放视图控制器类; 
        - Models 存放模型相关类; 
        - Views 存放一些自定义的视图; 
        - Services 主要存放接口请求相关的类; 
        - Resources 存放该模块下用到的所有图片资源
    
    -- Managers 存放一些管理类,如: 
        - DKUserManager 用于管理相关的用户信息
    
    -- Expands  存放一些常用的扩展类:
        - Categories 存放常用的类别; 
        - Networks 存放网络请求相关的类, 如: DKNetwork 用于处理网络请求; 
        - Consts 存放一些公用的常量 如: DKNotification 处理项目中一些通知相关的常量, DKNetworkConfig 处理网络请求接口相关的常量;  
        - Macros 存放项目中通用的宏 如: DKPublicMacros 提供了一些常用的便利宏, DKDisplayMacros 用于存放一些全局的界面显示相关的宏
        - Tools 工具类,如: 加密工具 DKCryptor, DKEncryptTool
        - Controls 存放一些通用的自定义控件
        - DataBase 存放数据库相关的类
        - Helpers  存放一些帮助类 如: DKHelper
        
    -- Venders 存放一些不通过CocoaPods管理的第三方库

-- Resources  存放公用的资源文件

    -- Atlases   存放公用的图片资源
    -- WebFiles  存放js及html相关文件
    -- Images    存放一些特殊的图片
    -- Plists    存放相关Plist文件
    -- Videos    存放视图相关的文件
    -- Audios    存放音频相关的文件

