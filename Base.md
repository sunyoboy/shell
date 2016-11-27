hashCode()
    为算法快速定位数据
    重写后的方法将决定它在Hash相关数据结构中的分布情况
equals()
    对比真实值

编译时优化
    当String a="a" + "b" + 1;时，会将其编译为String a = "ab1";
    因为都是常量，编译器认为这3个常量相加会得到固定的值，无需运行时进行计算，进行优化。
    int i = 3 * 4 + 120;编译时会直接编译成 int i = 132;
String的"+"操作并不一定比StringBuilder.append()慢，如果是编译时合并就会更快，因为在运行时是直接获取的，根本不需要计算。

    public class StringTest2 {
        public static void main(String[] args) {
            String a = "a";
            final  String c = "a";
            String b = a + "b";
            String d = c + "b";
            String e = getA() + "b";

            String compare = "ab";
            System.out.println(b == compare); // false **
            System.out.println(d == compare); // true
            System.out.println(e == compare); // false
        }

        private static String getA() {
            return "a";
        }
    }
## 第一个输出为false
compare是一个常量，b为什么不是呢？因为 b = a + "b"; a并不是一个常量，
虽然a作为一个局部变量，它也指向一个常量，但是其引用上并未“强制约束”是不可以被改变的。虽然知道这段代码中是不会被改变的，但运行时任何事情都会发生，所以编译器不会优化，在"+"运算时会被编译为下面类似的结果：
    StringBuilder tmp = new StringBuilder();
    tmp.append(a).append("b");
    String b = tmp.toString();
## 第二个输出为true
与第一个输出相比，区别在于对叠加的变量c有一个final修饰符。
从定义上强制约束了c是不允许被改变的，由于c不可变,所以编译器自然
认为结果是不可变的。
## 第三个输出false
叠加内容来源于一个方法，编译器并不会去查看方法内部做了什么。

理解：
    编译器优化一定是在编译阶段能确定优化后不会影响整体功能，编译器只有确定引用的内容，编译器才有可能进行编译时优化。
    编译时确定的内容只能来自于常量池，例如int、long、String等常量。

    public static void test3() {
        String a = "a";
        String b = a + "b";
        String c = "ab";
        String d = new String(b);
        System.out.println(b == c); // false
        System.out.println(c == d); // false
        System.out.println(c == d.intern()); // true
        System.out.println(b.intern() == d.intern()); // true
    }    
#
HotSpot VM 7及以前的版本都是有Perm Gen(永久代)这个模块的，常量池区域是在
永久代中的，它对于同一个值的字符串保证全局唯一。

# StringBuilder.append() 与 "+"
运行时拼接
    String a = "a";
    String b = "b";
    String c = a + b + "f"
编译器会将它编译为：
    String a = "a";
    String b = "b";
    // String c = a + b + "f"
    StringBuilder tmp = new StringBuilder();
    tmp.append(a).append(b).append("f");
    String c = tmp.toString();
如果将String的"+"操作放在循环中，会在循环体内部创建出多个StringBuilder
对象，并且执行append()后再调用toString()

#变量A, B交换有几种方式