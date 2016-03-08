# forked from OpenResty China 

https://github.com/sumory/lor

![首页](./docs/index.jpg)


### 安装

- 导入数据到[MySQL](data/blog.sql)
	- 有几个初始账户供体验: admin|sumory|momo|jerry，密码均为123456
- 修改配置文件`app/config/config.lua`为本地对应配置
	- session_secret 用于session加密
	- pwd_secret 用户数据库密码存储时加密
- 配置静态文件目录，这个目录用于存放用户上传的头像、文章图片、评论图片等
	- 默认的目录为data/static，请在本地新建此目录，并保证该目录有供应用访问和修改的权限
	- 若要修改上述默认目录，请修改app/config/config.lua中的upload_config.dir和nginx配置文件中的$static_files_path的值，保证两个值一致

### License

[MIT](./LICENSE)
