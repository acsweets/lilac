# 常用的命令

## Flutter
### 创建一个包
 `flutter create --template=package` app [包名]
 
### 重新生成模块
`flutter create .`

###  直接运行
`flutter run --release --verbose`

###  打包apk ios
> flutter build apk --release --no-shrink

> flutter build  apk  --release --no-tree-shake-icons --verbose

> flutter build ios --release --no-tree-shake-icons --verbose


###  运行 build_runner
`dart  run build_runner build --delete-conflicting-outputs`

### 这是Dart命令行工具的一部分，用于全局安装Dart包

`dart global activate`

### 命令用于自动修复Dart代码中的问题和警告

`dart fix --apply`

### 升级版本
> flutter upgrade —verbose

### 发布包
> dart pub publish
## linux
### 递归删除这个目录下所有文件
`rm -rf ` utils[目录]