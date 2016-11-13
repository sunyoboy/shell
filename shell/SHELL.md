## find file and list files
 ＊ find工作方式: 沿着文件层次结构向下遍历匹配符合条件的文件，并执行相应的操作。
    find base_path
    find /home
    find . -print
    
## 参数说明
  -print 打印出匹配文件的文件名（路径）,'\n'为分隔符。 
  -print0 使用'\0'作为分隔符，打印匹配的文件名，在文件名中包含换行符时使用。

  －name 指定文件名必须匹配的字符串，可以将通配符作为参数。
    find . -name '*.txt' # 列出当前目录下所有以.txt结尾的文件名
    find . -name '*.txt' －print # 列出当前目录下所有以.txt结尾的文件名
  
  -iname 忽略字母大小写，指定文件名必须匹配的字符串，可以将通配符作为参数。
    find . -iname '*.TXT' -print
  
  如果想匹配多个条件中的一个，可以采用OR条件操作。
    find . \( -name '*.txt' -o -name '*.pdf' \) -print # \(及\)用于将-name '*.txt' -o -name '*.pdf'视为一个整体。
  
  －path 使用通配符来匹配文件路径或文件，将文件路径作为一个整体进行匹配。
    find /var/root -path '*Linux*' -print

  -regex参数与-path类似,只不过-regex是基于正则表达式来匹配文件路径。正则表达式是通配符匹配的高级形式，可以指定文本模式。
  -iregex用于忽略正则表达式的大小写
    find . -regex '.*\(\.txt\)$'
    find . -regex '.*\(\.py\)$'
  "!" 否定参数
    find . ! -name '*.txt' -print #匹配所有不以.txt结尾的文件名
  -maxdepth 指定最大深度
  -mindepth 指定最小深度
    find . -maxdepth 1 -type f -print # 只列出当前目录下的所有普通文件
    find . -mindepth 2 -type f -print # 打印出距离当前目录至少两个字目录的所有文件
  -maxdepth, -mindepth应该作为find的第3个参数出现，如果作为第4个或之后的参数，会影响find的效率。