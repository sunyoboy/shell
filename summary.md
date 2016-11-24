## ORM基础 (Hibernate, ibatis(MyBatis))
ORM终极目标：
    让数据库操作对象化、简单化
ORM作用：
    抽象公用模块

Hibernate:
ibatis:
    十分轻量级，使用resultMap的方式或通过查询结果集的别名来达到映射的目的，自己编写SQL，灵活，方便SQL调优。
Spring JdbcTemplate:

实践：1、使用自动化工具帮助生成映射关系。

## Annotation 与配置文件

监控系统的运行队列：
typeperf -si 5 "\System\Processor Queue Length"

监控内存命令：
typeperf -si 5 "\Memory\Available Mbytes" "\Memory\Pages/sec"

#统一RPC框架序列化、反序列化、网络框架、连接池、收发线程、超时处理、状态机等“业务之外”的技术劳动统一处理，是服务化首要解决的问题
