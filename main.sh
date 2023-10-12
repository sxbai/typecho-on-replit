echo "Typecho博客一键搭建脚本"
echo "脚本作者：舒夏"
echo "GitHub开源地址：https://github.com/sxbai/typecho-on-replit"
rm -rf index.php
rm -rf database.sqlite
rm -rf README.md
nix-env -iA nixpkgs.wget
mkdir a
cd a
wget -O .replit https://github.com/sxbai/typecho-on-replit/raw/master/.replit
wget -O replit.nix https://github.com/sxbai/typecho-on-replit/raw/master/replit.nix
cd ..
wget https://github.com/typecho/typecho/releases/download/v1.2.1/typecho.zip
wget
nix-env -iA nixpkgs.unzip
unzip typecho.zip
echo "恭喜搭建完成"
echo "点击Run立即运行项目"
rm -rf a
rm -rf typecho.zip