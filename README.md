# C-BBS

![Image](https://github.com/archievan/C-BBS/blob/master/%E5%9B%BE%E7%89%871.png)
![Image](https://github.com/archievan/C-BBS/blob/master/%E5%9B%BE%E7%89%872.png)
JSP        15            22                                 OK

Servelt    15            8

Filter     2             3                                  OK

Listener   3

数据库表    3             8                                  OK

Model值类   3             9                                 OK

DAO        10             6

Service    3              4                                 OK

JNDI       3              true                              OK

I18N       6

文件上传    5

文件下载    5

页面美观    5

应用创新    4            AJAX                               OK

项目难度    7          +1 +1

              发送mail 2
              发送wechat qq 3
              导航菜单有下拉 伸缩 1 1
              表有关联 一对duo userid -> replyid   1       OK
              表间有关联 多对多 1                           OK
              文件上传进度 1













数据库表描述
admin  管理员表
user    用户
count   计算消息的id  访问数量和回复数量
message  消息的属性
reply   回复
theme   帖子主题
file
fileinfo

待写：file 表  实现文件的上传和下载

两点:触发器 时间戳


-- 触发器   回复后实现自加
DROP TRIGGER IF EXISTS `ttt`;
DELIMITER ;;
CREATE TRIGGER `ttt` AFTER INSERT ON `reply` FOR EACH ROW BEGIN
              update count set replyCount=replyCount+1 where msgid=new.msgid;
END
;;
DELIMITER ;



reply user msg


alter table  user   add foreign key (userid)  REFERENCES  reply(replyid);
一对多 的关系；

在一对多的关系时候，用单的主键作为多的外键约束。保证数据的完整性。
对表添加外键约束2中方式：

（1）创建table时候确定；

（2）后期添加 外键约束；

create table file( filename varchar(20),fileid int);
create table fileinfo(filesize varchar(20),inforid int);

create table coder_project(
file_id int ,
infor_id int ,
-- 添加外键

foreign key (file_id) references file(fileid),
foreign key (infor_id )  references fileinfo(inforid )
);

多对多的关系：

多对多，需要创建一张新的table，对2张表进行外键约束。

中间表对另外两张表关联，中间表删除才可以删除其他表。

域名：com.city
项目名:bbs
模块:hr
对象：Employee

1 Model
com.city.oa.hr.model.EmployeeModel


2 数据库连接工厂
com.city.oa.factory.ConnectionFactory

Model

com.city.oa.hr.model.EmployeeModel

DAO接口
com.city.oa.hr.dao.IEmployeeDao

Dao实现类
com.city.oa.ha.dao.impl.IEmployeeDaoImpl

Service接口
com.city.oa.hr.service.IEmployeeService

Service实现类
com.city.oa.hr.service.impl

Controller类 Servlet
com.city.oa.hr.controller

EmployeeToMainController   /employee/tomain.do
EmployeeAddController      /employee/add.do


view 
/employee/main.JSP



域名：com.city
项目名:bbs
模块:data
对象：User

1 Model
com.city.bbs.hr.model.EmployeeModel

2 数据库连接工厂
com.city.oa.factory.ConnectionFactory

Model

com.city.oa.hr.model.EmployeeModel

DAO接口
com.city.bbs.data.dao.IEmployeeDao

Dao实现类
com.city.oa.ha.dao.impl.IEmployeeDaoImpl

Service接口
com.city.oa.hr.service.IUserService

Service实现类
com.city.oa.hr.service.impl

Controller类 Servlet
com.city.oa.hr.controller


EmployeeToMainController   /employee/tomain.do
EmployeeAddController      /employee/add.do


view 
/employee/main.JSP




XX.JSP    /UploadHandleServlet
        upload.do


photo  checkImage

mail sendMailServelt

























