###
 # @Descripttion:
 # @version: V 1.0
 # @Author: wxw
 # @Date: 2020-08-23 18:12:31
###
#!/usr/bin/env sh

# 当发生错误时中止脚本
set -e

# 构建
npm run build

# cd 到构建输出的目录下
cd dist

# 部署到自定义域域名
#echo 'blog.wxw.plus' > CNAME

git init
git add -A
git commit -m 'deploy'

# 部署到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 部署到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:GitHubWxw/wxw-manage-web.git master:gh-pages

cd -
