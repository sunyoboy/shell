argument.callee指向当前正在执行的函数，严格模式下不能使用

闭包是有权访问另一个函数作用域的函数
实现方式：在一个函数内部创建另一个函数

mvn archetype:generate -DgroupId=com.javase -DartifactId=ActivitiHelloWorld -DarchetypeArtifactId=maven-archetype-webapp -DinteractiveMode=false -DarchetypeCatalog=local