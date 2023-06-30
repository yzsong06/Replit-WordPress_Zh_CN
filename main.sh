export MYSQL_HOME=$HOME/$REPL_SLUG/data
mysqld_safe &
# 防休眠命令
while true; do curl -s --user-agent "${UA_Browser}" "https://${REPL_SLUG}.${REPL_OWNER}.repl.co" >/dev/null 2>&1 && echo "$(date +'%Y%m%d%H%M%S') Keeping online ..." && sleep 600; done &
php -S 0.0.0.0:443 -t .
