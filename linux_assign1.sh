echo "=======question -1================="
sudo useradd Sam
sudo useradd Bob
sudo useradd James

echo "================================"
echo "=======question -2================="
touch test.txt
setfacl -m u:Sam:r test.txt
setfacl -m u:Bob:w test.txt
setfacl -m u:James:w test.txt

echo "================================"
echo "=======question -3================="
sudo apt update  
sudo apt install curl
touch ~/.bash_profile
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
source ~/.nvm/nvm.sh
nvm --version  
nvm install node  
node --version
nvm install 11.5  
nvm ls  

echo "================================"
echo "=======question -4================="
sudo apt-get install gnupg
curl -fsSL https://pgp.mongodb.com/server-6.0.asc |    sudo gpg -o /usr/share/keyrings/mongodb-server-6.0.gpg    --dearmor
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-6.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
echo "mongodb-org hold" | sudo dpkg --set-selections
echo "mongodb-org-database hold" | sudo dpkg --set-selections
echo "mongodb-org-server hold" | sudo dpkg --set-selections
echo "mongodb-mongosh hold" | sudo dpkg --set-selections
echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
echo "mongodb-org-tools hold" | sudo dpkg --set-selections
ps --no-headers -o comm 1
sudo systemctl daemon-reload
sudo systemctl status mongod


echo "================================"
echo "=======question -5================="
mkdir project
ls

echo "================================"
echo "=======question -6================="
echo "Hello, please introduce yourself."
echo -n "Your name: "
read -r name
echo "hello,$name"

echo "================================"
echo "=======question -9================="
echo 'Hello, world.' >test1.txt
echo 'nkjnfkjn, world.' >test2.txt
grep -il hello test1.txt test2.txt

echo "================================"
echo "=======question -11================="
ps -e -o pid,etimes,command | awk '{if($2>7200) print $0}'

