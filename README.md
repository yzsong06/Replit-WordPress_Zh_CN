<p align="center"><b>WordPress中文版</b>部署于Replit，️WordPress是一款能让您建立出色网站、博客或应用程序的开源软件。</p>
<br />
<a href="https://www.takagi.icu">博客</a>
<a href="https://cn.wordpress.org/support/">文档</a>
<a href="https://cn.wordpress.org/support/forums/">论坛</a>

------------------------------
## 使用说明
- replit环境选择`Bash`
- 不建议使用免费版部署，会泄漏数据库源文件及文件管理器密码

```bash
bash <(curl -s https://raw.githubusercontent.com/yzsong06/Replit-Wordpress_zh_CN/main/install.sh)
```
- 执行上面脚本
- 最后点击Run运行项目即可。
## 数据库设置
- 数据库名称：MySql
- 数据库用户名：root
- 数据库密码：root

## 在线文件管理配置
依赖项目:[FileAdmin](https://github.com/NLR-DevTeam/FileAdmin)  
修改密码：在Replit项目文件管理器根目录下找到file.php文件，打开后参照内部注释修改密码（Replit免费版会泄漏密码源文件）  
使用方式：打开https://项目网址/file.php即可，密码同上方设置密码

## 脚本来源
- [ ] 修改自Github开源项目 [https://github.com/onrepl/wordpress-replit](https://github.com/onrepl/wordpress-replit)
- [x] 修改原脚本下载wordpress英文版改为wordpress中文版
- [x] 修改原脚本命令英文语言显示改为中文
- [x] 修改原英文在线文件管理器语言显示改为中文

