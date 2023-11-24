# 2023-11-24 **gradle 插件构建docker镜像**

https://zhuanlan.zhihu.com/p/112295164

## 注意：
利用`java -jar <distrution>.jar`启动程序，有以下特点：
- 在源代码的 `src/main/webapp` 目录下存放的文件，在编译打包后的包后，运行起来以后文件是无效的。

- 静态资源文件可以放在以下默认目录(Spring MVC - `org.springframework.boot.autoconfigure.web.WebProperties.Resources` 类)：
  - src/main/resources/META-INF/resources
  - src/main/resources/public
  - src/main/resources/resources
  - src/main/resources/static