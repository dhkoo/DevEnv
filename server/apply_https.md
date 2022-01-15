sudo add-apt-repository ppa:certbot/certbot
sudo apt install python-certbot-nginx
sudo certbot --nginx -d pala.world -d alap.world
sudo certbot renew --dry-run # 갱신 테스트
sudo certbot certificates

# Crontab 보기
$ sudo crontab -l

# Crontab 편집
$ sudo crontab -e

# Crontab 실행 로그
$ view /var/log/syslog

# 매주 월,목 새벽 3시마다 갱신 시도 (서버 시간은 한국시간보다 9시간 느림)
* 12 * * 1,4 /usr/bin/certbot renew --renew-hook="sudo systemctl restart nginx"
