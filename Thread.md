ThreadLocal
    每一个ThreadLocal可以放一个线程级别的变量，但它本身可以被多个线程共享使用，而且可以达到线程安全的目的，且绝对线程安全。
    例如：
        public final static ThreadLocal<String> RESOURCE = new ThreadLocal<String>();
单例模式