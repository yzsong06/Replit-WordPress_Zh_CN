#获取最新中文版WordPress
curl -L https://cn.wordpress.org/latest-zh_CN.tar.gz -o wp.tar.gz
tar -zxvf wp.tar.gz
mv -f wordpress/* ./
rm -rf wordpress
#解压SQL设定
tar -zxvf data.tar.gz
#清除冗余文件
rm -rf wp.tar.gz
rm -rf data.tar.gz
#设置MySQL
cat <<EOF > $HOME/$REPL_SLUG/data/my.cnf
[server]
datadir=$HOME/$REPL_SLUG/data
bind-address=127.0.0.1
innodb-log-file-size=8M
innodb_temp_data_file_path=ibtmp1:1M:autoextend:max:8M
lower_case_table_names=1
EOF

export MYSQL_HOME=$HOME/$REPL_SLUG/data
mysqld_safe &
php -S 0.0.0.0:443 -t .
