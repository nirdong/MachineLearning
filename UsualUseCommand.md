# 1.terminal
## hidden files，need restart computer
defaults write com.apple.finder AppleShowAllFiles -bool false <br>
defaults write com.apple.finder AppleShowAllFiles -bool ture <br>
pip install <br>
pip3 install 

# 2.md

md  语法链接
https://github.com/guodongxiaren/README/blob/master/README.md
* 昵称：果冻虾仁
* 别名：隔壁老王
* 英文名：Jelly


# 3.git
## new repoistory
cd /Users/Moli/Documents<br>
git clone git@github.com:nirdong/MachineLearning.git
## upload 
cd /Users/Moli/Documents/MachineLearning<br>
git add .<br>
git commit -m "First Commit"<br>
git push

# 4.mysql
## load .sql from  MySQLWorkbench 
https://blog.csdn.net/u012372661/article/details/52933212
一 点击local instance wampmysqld

登录用户root，密码。进入到这个界面了。点击schemas，切换到图解模式。

二 在空白处，右键。create schema。

三 重命名，选择默认编码集，utf-8。然后点击Apply。就会出现新建的数据库了。

四 打开工具栏，File->Open SQL Script... 选择sql脚本。

五 在打开的sql脚本中的注释后面，添加上： 

    use 刚才新建的数据库名;

    点击按钮。

    之后action output 就有相应的输出了。

若sql文件中已经使用了use 数据库名字 ，可直接打开sql script 然后直接运行。










