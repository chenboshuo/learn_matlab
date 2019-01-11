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
