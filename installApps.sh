aptNames=(htop vim git ffmeg mlocate curl npm)
aptgetNames=(ubuntu-restricted-extras)
snapNames=(spotify)

sudo apt upgrade -y
sudo apt update -y
for i in "${aptNames[@]}"; do
	sudo apt install -y "$i"
done

sudo apt-get upgrade -y
sudo apt-get update -y
for i in "${aptgetNames[@]}"; do
	sudo apt-get install -y "$i"
done

sudo snap upgrade -y
sudo snap update -y
for i in "${snapNames[@]}"; do
	sudo snap install -y "$i"
done


sudo update-alternatives --config editor

git config --global user.email "p.swiercz@student.uw.edu.pl"
git config --global user.name "pswiercz"

