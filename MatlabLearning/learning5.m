%% github��https://github.com/MichaelBeechan
%% CSDN��https://blog.csdn.net/u011344545
%% Time��2019.5.25
%% Function������ �÷�����  ����ʽ 

%% ���ö��ֲ�ͬ������ MATLAB ���������
%{
����Ԫ�ص���ȷ�б���
���ⲿ�����ļ����ؾ���
ʹ�����ú������ɾ���
ʹ�����Լ��ĺ����������󣬲����䱣�����ļ��С�

ʹ�ÿո�򶺺ŷָ��е�Ԫ�ء�
ʹ�÷ֺ� ; ��ʾÿ��ĩβ��
ʹ�÷����� [ ] ������Ԫ���б���������
%}

A = [16 3 2 13; 5 10 11 8; 9 6 7 12; 4 15 14 1]

%% ������͡�ת�úͶԽǾ���
sum(A)  % ���ȴ�����
% sum(sum(A))
% sum(A')'

% sum(A, 2)

% diag(A)

% sum(diag(A))

% sum(diag(fliplr(A)))

B = magic(4)

%% ��� B �е�ÿһ�У�����ָ��˳��1��3��2��4�����н�����������
A = B(:, [1 3 2 4])

%% ���ɾ��� zeros  ones   rand(���ȷֲ������Ԫ��)  randn(��̬�ֲ������Ԫ��)
N = 10 * rand(1, 10)
fix(N)     %ȡ��
round(N)   %��������

randn(4)

%% ����ʽ
% �������ƿ���Ϊ���ⳤ�ȣ�MATLAB ��ʹ�����Ƶ�ǰ N ���ַ�
N = namelengthmax

x = 36028797018963968;
y = 36028797018963972;
x == y   % 1
x = uint64(36028797018963968);
y = uint64(36028797018963972);
x == y   % 0

sort([3+4i, 4+3i])  % ��������

angle(3+4i)

angle(4+3i)

%% ������
n = (0:9)'

pows = [n n.^2 2.^n]

format short g
x = (1:0.1:2)';
logs = [x log10(x)]

%%  abs��sqrt��exp �� sin ����
%% �йس�����ѧ�������б�
% help elfun

%% �ߵ���ѧ�����;��������б�
% help specfun
% help elmat

%% format ������������ʾ��ֵ����ֵ��ʽ���˺�����Ӱ��������ʾ��ʽ��������Ӱ�� MATLAB������μ���򱣴�����

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

%% ����
A = magic(4)
A(1,4) + A(2,4) + A(3,4) + A(4,4)
sum(A(:,4))
sum(A(1:4,4))
sum(A(:,end))
sum(1:16)/4  % Ϊʲô 4��4 �÷�����Ļ����͵��� 34����������� 1 �� 16 ֮���������Ϊ�ĸ��ܺ���ȵ��飬���ܺͱ���Ϊ
% A(1:k,j) % ��ʾ A �� j ���е�ǰ k ��Ԫ��

B = [A  A+32; A+48  A+16]
sum(B)

%% ɾ������
X = A;
X(:,2) = []

%X(1,2) = []    %����
X(:,1) = []
A(2:2:10) = []  %ɾ������������� 

x = [2.1 1.7 1.6 1.5 NaN 1.9 1.8 1.5 5.1 1.8 1.4 2.2 1.6 1.8];
x = x(isfinite(x))

% ����һ���ƺ���������ܲ�һ���Ĺ۲�ֵ
% ɾ����Ⱥֵ
x = x(abs(x-mean(x)) <= 3*std(x))

%% �߼������ͱ�����չ������������Ϊ 0
A = magic(4)
A(~isprime(A)) = 0

B = magic(4)
k = find(isprime(B))'
B(k)
B(k) = NaN






