%% github：https://github.com/MichaelBeechan
%% CSDN：https://blog.csdn.net/u011344545
%% Time：2019.5.25
%% Function：矩阵 幻方矩阵  表达式 

%% 采用多种不同方法在 MATLAB 中输入矩阵
%{
输入元素的明确列表。
从外部数据文件加载矩阵。
使用内置函数生成矩阵。
使用您自己的函数创建矩阵，并将其保存在文件中。

使用空格或逗号分隔行的元素。
使用分号 ; 表示每行末尾。
使用方括号 [ ] 将整个元素列表括起来。
%}

A = [16 3 2 13; 5 10 11 8; 9 6 7 12; 4 15 14 1]

%% 矩阵求和、转置和对角矩阵
sum(A)  % 优先处理列
% sum(sum(A))
% sum(A')'

% sum(A, 2)

% diag(A)

% sum(diag(A))

% sum(diag(fliplr(A)))

B = magic(4)

%% 针对 B 中的每一行，按照指定顺序（1、3、2、4）对列进行重新排列
A = B(:, [1 3 2 4])

%% 生成矩阵 zeros  ones   rand(均匀分布的随机元素)  randn(正态分布的随机元素)
N = 10 * rand(1, 10)
fix(N)     %取整
round(N)   %四舍五入

randn(4)

%% 表达式
% 变量名称可以为任意长度，MATLAB 仅使用名称的前 N 个字符
N = namelengthmax

x = 36028797018963968;
y = 36028797018963972;
x == y   % 1
x = uint64(36028797018963968);
y = uint64(36028797018963972);
x == y   % 0

sort([3+4i, 4+3i])  % 升序排列

angle(3+4i)

angle(4+3i)

%% 构建表
n = (0:9)'

pows = [n n.^2 2.^n]

format short g
x = (1:0.1:2)';
logs = [x log10(x)]

%%  abs、sqrt、exp 和 sin 函数
%% 有关初等数学函数的列表
% help elfun

%% 高等数学函数和矩阵函数的列表
% help specfun
% help elmat

%% format 函数控制所显示的值的数值格式。此函数仅影响数字显示方式，而不会影响 MATLAB软件如何计算或保存数字

x = [4/3 1.2345e-6]

%format short
x
%format short e
x
%format short g
x
%format long
x
%format long e
x
%format long g
x
%format bank
x
%format rat
x
%format hex
x

%% 索引
A = magic(4)
A(1,4) + A(2,4) + A(3,4) + A(4,4)
sum(A(:,4))
sum(A(1:4,4))
sum(A(:,end))
sum(1:16)/4  % 为什么 4×4 幻方矩阵的幻数和等于 34？如果将介于 1 到 16 之间的整数分为四个总和相等的组，该总和必须为
% A(1:k,j) % 表示 A 第 j 列中的前 k 个元素

B = [A  A+32; A+48  A+16]
sum(B)

%% 删除行列
X = A;
X(:,2) = []

%X(1,2) = []    %出错
X(:,1) = []
A(2:2:10) = []  %删除后会重新排列 

x = [2.1 1.7 1.6 1.5 NaN 1.9 1.8 1.5 5.1 1.8 1.4 2.2 1.6 1.8];
x = x(isfinite(x))

% 存在一个似乎与其他项很不一样的观测值
% 删除离群值
x = x(abs(x-mean(x)) <= 3*std(x))

%% 逻辑索引和标量扩展将非质数设置为 0
A = magic(4)
A(~isprime(A)) = 0

B = magic(4)
k = find(isprime(B))'
B(k)
B(k) = NaN







