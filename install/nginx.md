ping www.sjdd.com.cn
ping 211.152.9.72
doskey /history > D:\history.txt

nginx安装与配置
（1）下载nginx安装包及依赖库安装包
	wget http://nginx.org/download/nginx-1.8.0.tar.gz
	wget https://codeload.github.com/openssl/openssl/zip/OpenSSL_1_0_2
	wget http://zlib.net/zlib-1.2.8.tar.gz
	wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.37.tar.gz
	
	解压命令：tar -zxvf nginx-1.8.0.tar.gz
	
如果安装时找不到上述依赖模块，使用--with-openssl=<openssl_dir>、--with-pcre=<pcre_dir>、--with-zlib=<zlib_dir>指定依赖的模块目录。
如已安装过，此处的路径为安装目录；若没有安装，则此路径为编译安装包路径（只需将上述依赖库的压缩包与nginx解压到同一目录即可），nginx将执行模块的默认编译安装。
（2）安装
./configure --sbin-path=/usr/local/nginx/nginx --conf-path=/usr/local/nginx/nginx.conf --pid-path=/usr/local/nginx/nginx.pid --with-http_ssl_module --with-pcre=../pcre-8.37 --with-zlib=../zlib-1.2.8 --with-openssl=../openssl-OpenSSL_1_0_2
make
make install 

如果没有安装编译器执行以下命令安装：
yum install gcc-c++
（3）常用命令
	安装目录为/user/local/nginx/
	启动nginx：/user/local/nginx/nginx
	停止nginx: /user/local/nginx/nginx -s stop
	重新加载配置: /user/local/nginx/nginx - reload
 （4）配置

仅备参考：
一、安装nginx时必须先安装相应的编译工具
yum -y install gcc gcc-c++ autoconf automake
yum -y install zlib zlib-devel openssl openssl-devel pcre-devel

建立nginx 组
groupadd -r nginx
useradd -s /sbin/nologin -g nginx -r nginx
id nginx

zlib:nginx提供gzip模块，需要zlib库支持
openssl:nginx提供ssl功能
pcre:支持地址重写rewrite功能

二、tar -zxvf nginx-1.2.8.tar.gz

三、cd nginx-1.2.8

四、./configure \
--prefix=/usr \
--sbin-path=/usr/sbin/nginx \
--conf-path=/etc/nginx/nginx.conf \
--error-log-path=/var/log/nginx/error.log \
--pid-path=/var/run/nginx/nginx.pid \
--user=nginx \
--group=nginx \
--with-http_ssl_module \
--with-http_flv_module \
--with-http_gzip_static_module \
--http-log-path=/var/log/nginx/access.log \
--http-client-body-temp-path=/var/tmp/nginx/client \
--http-proxy-temp-path=/var/tmp/nginx/proxy \
--http-fastcgi-temp-path=/var/tmp/nginx/fcgi \
--with-http_stub_status_module

五、make && make install


小结：centos没有安装make编译器
解决：yum -y install gcc automake autoconf libtool make