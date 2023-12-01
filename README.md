# 解决apline镜像里离线安装字体包的问题

## 问题
部署的java 环境的Docker容器里，利用POI生成Excel的代码有出错：

```text
Exception in thread "main" java.lang.UnsatisfiedLinkError: /usr/lib/jvm/java-8-amazon-corretto/lib/amd64/libfontmanager.so: Error loading shared library libfreetype.so.6: No such file or directory (needed by /usr/lib/jvm/java-8-amazon-corretto/lib/amd64/libfontmanager.so)
        at java.lang.ClassLoader$NativeLibrary.load(Native Method)
        at java.lang.ClassLoader.loadLibrary0(ClassLoader.java:1934)
        at java.lang.ClassLoader.loadLibrary(ClassLoader.java:1838)
        at java.lang.Runtime.loadLibrary0(Runtime.java:843)
        at java.lang.System.loadLibrary(System.java:1136)
        at sun.font.FontManagerNativeLibrary$1.run(FontManagerNativeLibrary.java:61)
        at java.security.AccessController.doPrivileged(Native Method)
        at sun.font.FontManagerNativeLibrary.<clinit>(FontManagerNativeLibrary.java:32)
        at sun.font.SunFontManager$1.run(SunFontManager.java:346)
        at java.security.AccessController.doPrivileged(Native Method)
        at sun.font.SunFontManager.<clinit>(SunFontManager.java:342)
        at java.lang.Class.forName0(Native Method)
        at java.lang.Class.forName(Class.java:348)
        at sun.font.FontManagerFactory$1.run(FontManagerFactory.java:82)
        at java.security.AccessController.doPrivileged(Native Method)
        at sun.font.FontManagerFactory.getInstance(FontManagerFactory.java:74)
        at java.awt.Font.getFont2D(Font.java:491)
        at java.awt.Font.canDisplayUpTo(Font.java:2064)
        at java.awt.font.TextLayout.singleFont(TextLayout.java:470)
        at java.awt.font.TextLayout.<init>(TextLayout.java:531)
        at org.apache.poi.ss.util.SheetUtil.getDefaultCharWidth(SheetUtil.java:275)
        at org.apache.poi.ss.util.SheetUtil.getColumnWidth(SheetUtil.java:250)
        at org.apache.poi.ss.util.SheetUtil.getColumnWidth(SheetUtil.java:235)
        at org.apache.poi.xssf.usermodel.XSSFSheet.autoSizeColumn(XSSFSheet.java:501)
        at org.apache.poi.xssf.usermodel.XSSFSheet.autoSizeColumn(XSSFSheet.java:483)
        at com.App.excelExport(App.java:106)
        at com.App.main(App.java:48)
```
以上日志表明，系统缺少库，
这里需要安装字体库 `ttf-dejavu`，
但是由于Docker镜像构建时不允许连外网，
所这里需要在线下载依赖的所有库，再离线安装。

## 进行入Docker 容器中（由`amazoncorretto:8u372-alpine3.17`镜像构建）

```shell
 docker run -it --rm --name test -v /workspaces/docker-lab/java/app/build:/build amazoncorretto:8u372-alpine3.17  sh
```

## 运行java程序
```shell
sh /build/distributions/app/bin/app

```


## 下载离线包
```shell
apk update && apk fetch --recursive ttf-dejavu
```

## 安装离线apk包

```shell
 touch rep.list && apk add --repositories-file=rep.list --allow-untrusted --no-network --no-cache /build/apk/apks/*.apk

```



