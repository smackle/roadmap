# On your LOCAL machine (WSL) — NOT on EC2!
cd ~

rsync -avz --delete \
  -e "ssh -i ~/awskeys/testinstnace.pem" \
  ./mysite/ \
  ec2-user@44.212.201.34:/usr/share/nginx/mysite/
