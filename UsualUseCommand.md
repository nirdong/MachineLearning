# 1.terminal
## hidden files，need restart computer
defaults write com.apple.finder AppleShowAllFiles -bool false <br>
defaults write com.apple.finder AppleShowAllFiles -bool ture <br>
pip install <br>
pip3 install 

# 2.git
## new repoistory
cd /Users/Moli/Documents<br>
git clone git@github.com:nirdong/MachineLearning.git
## upload 
cd /Users/Moli/Documents/MachineLearning<br>
git add .<br>
git commit -m "First Commit"<br>
git push


# 3.mysql
## load .sql from terminal
/usr/local/mysql/bin/mysql -uroot -p<br>
create database newntwd;<br>
use newntwd;<br>
show tables;<br>
source /Users/Moli/Documents/mysqldata/NorthwindDB.sql;<br>
show databases;<br>
show tables;









