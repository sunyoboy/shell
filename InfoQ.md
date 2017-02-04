Greekbang InfoQ

莫红波 又拍云-企业容器私有云架构分享
    problem: 
        1. 如何快速扩容
        2. 如何解决环境部署问题
        3. 整合离散计算资源
        4. ...
    理想私有云平台
      满足需求：

    技术架构
      Docker
      Mesos
      {malasong, hadoop}
    Docker持续交付
      GitLab Ci方案
  ##HAProxy VS Nginx(lua实现自定义业务)
   * 动态路由Slardar
   * 日志搜集：管道,Heka, DockerLoginInput(Heka Agent -> Kafaka -> Heka/Log,Charge, )
   * 监控报警（DIY Docker， cAdvisor, 根据Container ID统计）（ES Agent -> Kibana, Alertman）参数：rssPercent, AppID

FreeWheel 