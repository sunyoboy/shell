tomcat
http://tomcat.apache.org/tomcat-7.0-doc/config/http.html

Server\Service\Executor\HTTP(tomcat由外层到内层的访问机制)

    <Connector port="8080" protocol="HTTP/1.1"
               connectionTimeout="20000"
               redirectPort="8443" />
    <Connector port="8009" protocol="AJP/1.3" redirectPort="8443" />
　protocol表示处理对应端口port请求所使用的协议
    <!--The connectors can use a shared executor, you can define one or more named thread pools-->
    <!--
    <Executor name="tomcatThreadPool" namePrefix="catalina-exec-"
        maxThreads="150" minSpareThreads="4"/>
    -->
   开启线程池
       <!-- A "Connector" using the shared thread pool-->
    <!--
    <Connector executor="tomcatThreadPool"
               port="8080" protocol="HTTP/1.1"
               connectionTimeout="20000"
               redirectPort="8443" />
　连接器指定线程池

阻塞
非阻塞　
    针对单一事件
同步
异步
    针对多个事件

Reactor、Proactor两种I/O设计模式
　　Reactor：Reactor模式是基于NIO多路复用I/O模型实现的一种常用的模式。在Reactor模式中每个客户连接会注册自己感兴趣的事件，然后Selector多路复用器会轮询每个就绪事件，每到一个事件执行一个事件。Reactor实现了一个被动的事件分离和分发模型，服务等待请求事件的到来，再通过不受间断的同步处理事件，从而做出反应。Reactor比较适合连接数较多但是任务量较小的场景。Reactor实现相对简单，对于耗时短的处理场景处理高效；操作系统可以在多个事件源上等待，并且避免了多线程编程相关的性能开销和编程复杂性；事件的串行化对应用是透明的，可以顺序的同步执行而不需要加锁；事务分离，将与应用无关的多路分解和分配机制和与应用相关的回调函数分离开来。Reactor同时接收多个服务请求，并且依次同步的处理它们的事件驱动程序；但是Reactor不适合执行耗时较长的操作，处理耗时长的操作会造成事件分发的阻塞，影响到后续事件的处理。
　Proactor模式是基于AIO实现的一种高效的I/O设计模式。在Proactor中用户连接请求I/O操作，这时操作系统内核就会调用相应的系统调用来完成请求，内核线程在完成用户的I/O请求后把执行结果放在完成事件队列中，Proactor从完成事件队列中取出结果根据相应的回调处理器来完成对操作结果的相应处理。Proactor实现了一个主动的事件分离和分发模型；这种设计允许多个任务并发的执行，从而提高吞吐量；并可执行耗时长的任务（各个任务间互不影响）。相对Reactor来说，Proactor性能更高，能够处理耗时长的并发场景；可以异步接收和同时处理多个服务请求的事件驱动程序；但是Proactor依赖操作系统对异步操作的支持，各类操作系统对异步I/O支持的实现细节有差异，没有形成统一的标准。
　Reactor不适合执行耗时较长的操作，处理耗时长的操作会造成事件分发的阻塞，影响到后续事件的处理。    
http://blog.jobbole.com/103290/

LRU

BIO
　Socket
  ServerSocket
NIO
  SocketChannel
  ServerSocketChannel
  Channel
    SelectableChannel
    FileChannel