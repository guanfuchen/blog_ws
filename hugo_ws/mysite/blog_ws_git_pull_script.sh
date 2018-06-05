#!/usr/bin/env bash

blog_ws_root_path=~/GitHub/Quick/blog_ws

echo ${blog_ws_root_path}

# markdown_blog_ws for md
if [ ! -d ${blog_ws_root_path}/hugo_ws/mysite/content/post/markdown_blog_ws ]; then
    echo ${blog_ws_root_path}/hugo_ws/mysite/content/post/markdown_blog_ws
    cd ${blog_ws_root_path}/hugo_ws/mysite/content/post
    git clone git@gitee.com:chenguanfu/markdown_blog_ws.git markdown_blog_ws
else
    echo ${blog_ws_root_path}/hugo_ws/mysite/content/post/markdown_blog_ws
    cd ${blog_ws_root_path}/hugo_ws/mysite/content/post/markdown_blog_ws
    git pull
fi

# blog workspace for github
if [ ! -d ${blog_ws_root_path}/hugo_ws/mysite/public ]; then
    echo ${blog_ws_root_path}/hugo_ws/mysite/public
    cd ${blog_ws_root_path}/hugo_ws/mysite
    git clone git@gitee.com:chenguanfu/blog_ws_public.git public
else
    echo ${blog_ws_root_path}/hugo_ws/mysite/public
    cd ${blog_ws_root_path}/hugo_ws/mysite/public
    git pull
fi

# blog workspace for github
if [ ! -d ${blog_ws_root_path}/hugo_ws/mysite/guanfuchen.github.io ]; then
    echo ${blog_ws_root_path}/hugo_ws/mysite/guanfuchen.github.io
    cd ${blog_ws_root_path}/hugo_ws/mysite
    git clone git@github.com:guanfuchen/guanfuchen.github.io.git guanfuchen.github.io
else
    echo ${blog_ws_root_path}/hugo_ws/mysite/guanfuchen.github.io
    cd ${blog_ws_root_path}/hugo_ws/mysite/guanfuchen.github.io
    git pull
fi

cd ${blog_ws_root_path}
git pull
