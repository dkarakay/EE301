% Group 96 20/11/2021
% Arda Ünver    - 2444081
% Deniz Karakay - 2443307
% Ercihan Kara  - 2375160

% HW1 Q4-b

% Close all other figures and reset the workspace
clc
close all

% Signal length of 40
N=40;
L=2;

n=0:1:N-1;
x=randn(1,N); 
figure;
stem(n,x);
xlabel('n');
ylabel('x[n]');


h=ones(1,L);

y=conv(x,h);
figure;
stem(0:N+L-2, y);
xlabel('n');
ylabel('y[n]');



L=10;
h=ones(1,L);
y=conv(x,h);
figure;
stem(0:N+L-2, y);
xlabel('n');
ylabel('y[n]');


L=15;
h=ones(1,L);
y=conv(x,h);
figure;
stem(0:N+L-2, y);
xlabel('n');
ylabel('y[n]');


L=20;
h=ones(1,L);
y=conv(x,h);
figure;
stem(0:N+L-2, y);
xlabel('n');
ylabel('y[n]');


