# blog_ws

![](http://chenguanfuqq.gitee.io/tuquan2/img_2018_5/hugo.png)

---
## 概述

该仓库用来构建hugo框架的博客，通过hugo，将[子目录](./hugo_ws/mysite/content/post/markdown_blog_ws)下的markdown文件静态编译为html文件，其中部署在[gitee.com](./hugo_ws/mysite/public)和[github.com](./hugo_ws/mysite/guanfuchen.github.io)中。

---
## 使用方法

### 更新和上传

通过```sh blog_ws_git_pull_script.sh```快速垃取更新，通过```sh blog_ws_git_push_script.sh```快速上传更新。

### 创建新博客

在```${blog_ws_root_path}/hugo_ws/mysite```目录下通过```hugo new post/markdown_blog_ws/markdown_blog_2018_05/bash用法.md```类似命令创建新博客。

---
## 参考资料

[Hugo Documentation](https://gohugo.io/documentation/)

