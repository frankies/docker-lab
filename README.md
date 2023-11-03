# docker-lab
Lab for docker testing

以最小镜像 `scratch` 为基础 + `ubuntu`发布版本的 `tgz`，快速构建一个ubuntu环境


## os 的release包

- ubuntu (bio)
    
    https://cdimage.ubuntu.com/ubuntu-base/releases/18.04/release/ubuntu-base-18.04.5-base-amd64.tar.gz

- debian

    https://github.com/debuerreotype/docker-debian-artifacts/raw/b024a792c752a5c6ccc422152ab0fd7197ae8860/jessie/rootfs.tar.xz


## 安装软件列表

- jdk 

    ```shell
    apt-get install openjdk-8-jdk
    ```

## 参考

- [https://cloud.tencent.com/developer/article/1367035](https://cloud.tencent.com/developer/article/1367035)