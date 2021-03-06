## MOSAD_HW1
### 介绍

个人作业1-创建第一个XCode项目、面向对象与Objective-C语法学习

###  开发环境

* Mac OS
* Objective-C
* Xcode

TA check: 9月23日实验课或提前

DeadLine: 10月7日23:59 

### 任务

* 安装配置Mac OS和Xcode

* 熟悉Mac OS按键操作

* 熟悉Xcode项目结构，编译运行第一个Xcode项目，项目创建流程详见[tutorial](manual/tutorial.md)

* 张三衣柜里有N（N>3）件上衣：白色T恤.......M(M>4)条裤子：灰色沙滩裤........你需要帮张三在未来的一周内挑选搭配。（你需要自己定义N、M取值）

要求：

- 上衣未来两天内不可重复穿着，裤子未来一天内不可重复穿着。

- 不同颜色搭配可获得不同分数。例如

  | 上衣 | 裤子                   | 得分              |
  | ---- | ---------------------- | ----------------- |
  | 白色 | 灰色、蓝色、白色...... | 20、10、30....... |

  你需要自行定义颜色搭配分数。

- 需要用到多态。

- 输出程序设计和运行过程中，相关设计体现的oo特性（数据隐秘性、封装性、继承、多态）。

验收要点：

- 输出一周内每天张三的随机搭配，包括衣物的关键属性、搭配分数。
- 输出哪一天搭配分数最高及搭配是什么。
- 类的设计与封装。
- 类与类之间的继承关系与多态的体现。


### 提交要求及命名格式

/src 存放项目文件

/report 存放项目报告

个人项目提交方式:

- 布置的个人项目先fork到个人仓库下；
- clone自己仓库的个人项目到本地目录；
- 在个人项目中，在src、report目录下，新建个人目录，目录名为“学号+姓名”，例如“12345678WangXiaoMing”；
在“src\12345678WangXiaoMing”目录下，保存项目，按要求完成作业;
- 实验报告以md的格式，写在“report\12345678WangXiaoMing”目录下；
- 完成任务需求后，Pull Request回主项目的master分支，PR标题为“学号+姓名”， 如“12345678王小明”；
- 一定要在deadline前PR。因为批改后，PR将合并到主项目，所有同学都能看到合并的结果，所以此时是不允许再PR提交作业的。

PS：clone项目后，不能删除或修改项目原有的所有目录和文件，否则PR项目会出错。

