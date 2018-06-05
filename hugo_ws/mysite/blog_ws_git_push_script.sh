#!/usr/bin/env bash

blog_ws_root_path=~/GitHub/Quick/blog_ws

echo ${blog_ws_root_path}

cd ${blog_ws_root_path}/hugo_ws/mysite/content/post/markdown_blog_ws
git status -sb .
git add . && git commit -m "update" && git push

cd ${blog_ws_root_path}/hugo_ws/mysite
hugo --config=config.toml

cd ${blog_ws_root_path}/hugo_ws/mysite/public
git status -sb .
git add . && git commit -m "update" && git push

cd ${blog_ws_root_path}/hugo_ws/mysite
hugo --config=config-github.toml

cd ${blog_ws_root_path}/hugo_ws/mysite/guanfuchen.github.io
git status -sb .
git add . && git commit -m "update" && git push

cd ${blog_ws_root_path}
git status -sb .
git add . && git commit -m "update" && git push
