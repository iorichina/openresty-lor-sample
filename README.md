# forked from OpenResty China 

https://github.com/sumory/lor

![首页](./docs/index.jpg)


### 安装

- 导入数据到[MySQL](docs/blog.sql)
	- 有几个初始账户供体验: admin|sumory|momo|jerry，密码均为123456
- 修改配置文件`app/config/config.lua`为本地对应配置
	- session_secret 用于session加密
	- pwd_secret 用户数据库密码存储时加密
- 配置静态文件目录，这个目录用于存放用户上传的头像、文章图片、评论图片等
	- 默认的目录为data/static，请在本地新建此目录，并保证该目录有供应用访问和修改的权限
    - app/config/config.lua中的upload_config.dir和nginx配置文件中的$static_files_path的值保证一致
- libuuid.so的安装，下面安装后的文件在不同系统有不同路径和文件名
    - centos:$sudo yum install libuuid && mv /lib64/libuuid.so.1.3.0 app/libs/uuid/libuuid.so
    - ubuntu:$sudo apt-get install uuid-dev && mv /usr/lib/x86_64-linux-gnu/libuuid.so app/libs/uuid/libuuid.so

### License

[MIT](./LICENSE)
