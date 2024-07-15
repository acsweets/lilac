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
### 配置文件
> vi ~/.zshrc   
> source ~/.zshrc   

### 查看列表
>ls -a


### 当前命令行所处的位置
> pwd

### 查看一下内存和存储

> free -h 和 df -h

### 查看系统版本

> cat /etc/os-release



## git命令
### 移除git 管理
>rm -rf.git

### 将commit 重置 保留更改

>git reset --soft HEAD^
#### 撤销最近的两个commit
> git reset --hard HEAD~2

### commit 重置不保留
>git reset --hard HEAD^

## 自动生成代码
>dart run build_runner build

## ios下载依赖包
> pod install --repo-update

