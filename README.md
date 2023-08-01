# invest-trade-ctp
CTP交易接口的go语言实现

## 功能
利用swig，把CTP接口转换为go语言接口

## 部署发布
生成 ctp 文件后，使用 ldd ctp 命令查看依赖关系，并将如下文件放在同一文件夹（注意需要有执行权限）:
ctp
libruntime,sync-atomic.so
libthostmduserapi_se.so
libthosttraderapi_se.so

将部署目录路径写入 /etc/ld.so.conf 文件最后一行，并执行 /sbin/ldconfig 命令

## 切换api版本
在以下文件中替换api文件夹的路径:
ctpstd.swigcxx
libctpstd.go
