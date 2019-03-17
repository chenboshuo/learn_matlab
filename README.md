# matlab_learning
我的matlab学习

# 第一章 基础
## 1.1 变量与函数
### 1.2.1 变量
- 特殊变量表

特殊变量 | 取值     
 :- | :-
 ans |用于结果缺省的变量名
pi|圆周率
eps|计算机的最小数
inf|无穷大,如1/0
NaN|不定量,如0/0
i,j|i=j= <img src="https://latex.codecogs.com/gif.latex?\sqrt{-1}" title="\sqrt{-1}" />
realmin|最小可用正实数(2.2251e-308)
realmax|最大可用正实数(1.7977e+308)

### 1.2.2 数学运算及标点符号

  | 符号     | 说明    |
  | :------------- | :------------- |
  | + - *        | 基本运算       |
  | a/b      | <img src="https://latex.codecogs.com/gif.latex?\frac{a}{b}" title="\frac{a}{b}" />      |
  | a\b      | <img src="https://latex.codecogs.com/gif.latex?\frac{b}{a}" title="\frac{b}{a}" />          |
  | .*       | 点乘       |
  |./|点除|
  |a^b|<img src="https://latex.codecogs.com/gif.latex?a^{b}" title="a^{b}" />|
  |%|注释|
  |...|续行|

### 1.2.3 数学函数
  sin(x), cos(x),tan(x),绝对值 abs(x), min(x),开平方 sqet(x),自然对数 log(x), 符号函数 sign(x), 反正弦asin(x),acos(x), atan(x), max(x), 元素总和 sum(x), exp(x),以10为底的对数log10(x), 取整 fix(x).

### 1.2.4 函数m文件

  `function 因变量名=函数名(自变量名)`

  注意
  - 函数m的文件名必须与函数名相同
  - 脚本m文件没有输入与输出参数,函数文件m有输入和输出参数.对函数进行调用时,可以少于或等于m规定的输入输出文件变量数.
  - 脚本m运行产生的所有变量是局部变量,函数m是全局变量.

## 1.3 数组
### 1.3.1 数组的建立

| 命令 | 说明 |
| :------------- | :------------- |
| x = [a b c d e f] | 创建包含指定元素的行向量 |
| x = a:b| 创建由a到b(含a,b)的行向量|
|x = first:increment:last| 由first到last,步长为increment|
| linspace(first, last, n)|创建由first开始,到last结束的n个元素的行向量|

### 1.3.2 数组元素的访问
  - 直接访问x(i),x的第i个元素(从1开始数)
  - `x(a:b:c)`表示访问从a开始,以步长为b到第c个元素(含c),b可以为负数,缺省时为1.
  - `x([a b c d])`表示提取数组的第a,b,c,d 个元素生成一个新的数组[x(a),x(b),x(c),x(d)]如
  ```matlab
  x = [11,22,33,44,55]
  x([2,4,3])
  ```
  output
  ```
  ans =

      22    44    33
  ```

### 1.3.3 数组的方向
  - 产生列向量的方法,直接生成或转置
```
c = [1;2;3;4]
```
```
c =

   1
   2
   3
   4
```
  或者
```
a = [1,2,3],b = a'
```
  output

```

a =

     1     2     3


b =

     1
     2
     3
```     

### 1.3.4 数组的运算
#### (1)标量-数组运算
设 a = [a1,a2,...,an],c为一标量
```
a+c = [a1+c,a2+c,...,an+c]
a*c = [a1*c,...,an*c]
a./c = [a1/c,...,an/c](右除)
a.\c = [c/a1,...,c/an](左除)
a.^c = [a1^c,...,an^c]
c.^a = [c^a1,...,c^an]
```
#### (2)数组-数组运算
若两个数组有相同维数,则对每一个元素运算

## 1.4 matlab 程序设计
### 1.4.1 关系与逻辑运算

- ~= 不等于
- & 与
- | 或
- ~ 非
### 1.4.2 控制流
#### 1.for
一般形式
```matlab
for x = array
  {commands}
end
```
例如
[for_.m](./basic/for_.m)

注意:

for不能对内部变量重新赋值;for循环接受任何有效的MATLAB数组;

for循环可以按需嵌套;

为提高运算速度,能用其他方法解决不用for,必须用for时需要预先分配数组

#### 2.while
```matlab
while(expression)
  {commands}
end
```
