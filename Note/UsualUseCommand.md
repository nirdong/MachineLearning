# python
## txt
test_image = 'dafs'
out_file = open('%s.txt'%(test_image), 'w')
out_file.write("w" )
out_file.write(' ')
out_file.write('u')
out_file.write("w")



# ubuntu
## acitvate tf
source activate tf

## screen
远程登录：
       如果是首次登录，可用screen启动会话，保持异常断开后，程序仍在运行：
       screen -S screen_name #可通过-S指定会话名称，方便恢复
       恢复：
       screen -r screen_name
# 密码
Bgpinc#2020a
# 查看文件夹下面数量 
ls -l | grep "^-" | wc -l
# 拷贝
sudo cp -r  /home/Data/xieyouqu /home/dnie
cp -rf /home/dnie/df/Annotations/. /home/dnie/df/result
# 删除
rm -f Annotations/label_correction.ipynb

# tensorflow
## tensorbard
tensorboard --logdir=./train --port=6007






远程登录：
如果是首次登录，可用screen启动会话，保持异常断开后，程序仍在运行：
screen -S screen_name #可通过-S指定会话名称，方便恢复

恢复：
screen -r screen_name

指定GPU：
export CUDA_VISIBLE_DEVICES=1,3 #指定CUDA可见的GPU序号

激活环境：
conda activate tf

安装软件：
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple/ tensorflow-gpu

导入环境变量：
# From tensorflow/models/research/
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

准备数据：
# 1. 图片尽量改小一点，200张1280x720的图片的训练速度大概在1秒1步
# 2. 用LabelImg标注图片

# 3. 数据转换
python3 xml_to_csv.py #修改xml_to_csv.py，将标注xml转成csv格式
python3 generate_tfrecord.py #修改此文件，将csv文件转成tfrecord格式

# 4. 修改配置
# 修改ssd_mobilenet_v1_pets.config，将类别改为1，将train和test路径改为自己的路径

执行训练：
# From models-master
python3 research/object_detection/legacy/train.py --logtostderr --train_dir=./meter-images-train --pipeline_config_path=./meter-images-train/ssd_mobilenet_v1_pets.config

验证：
# From models-master
python3 research/object_detection/legacy/eval.py --logtostderr --train_dir=./meter-images-train --pipeline_config_path=./meter-images-train/ssd_mobilenet_v1_pets.config --checkpoint_dir=./meter-images-train --eval_dir=./meter-images-train

导出模型：
python3 research/object_detection/export_inference_graph.py --input_type image_tensor --pipeline_config_path=meter-images-train/ssd_mobilenet_v1_pets.config --trained_checkpoint_prefix=meter-images-train/model.ckpt-20000 --output_directory meter-images-train

# 这样会在meter-images-train文件里得到 frozen_inference_graph.pb 的模型文件。
# 直接使用文波给的android程序就可以直接加载使用了。


注：
新训练模型需要修改：
ssd_mobilenet_v1_pets.config：修改识别类别数
object-detection.pbtxt：修改要识别的类别标签

参考资料：
主要步骤参考：https://towardsdatascience.com/detecting-pikachu-on-android-using-tensorflow-object-detection-15464c7a60cd
如果想把pb模型转成tflite模型，可以参考：https://github.com/tensorflow/models/blob/master/research/object_detection/g3doc/running_on_mobile_tensorflowlite.md
这个链接应该也可以，可以学习一下素材如何收集：https://towardsdatascience.com/building-a-toy-detector-with-tensorflow-object-detection-api-63c0fdf2ac95






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

# 5.python
##设置显示最大行
pd.set_option('display.max_rows', None) 












