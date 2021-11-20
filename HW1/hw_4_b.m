% Group 96 20/11/2021
% Arda Ünver    - 2444081
% Deniz Karakay - 2443307
% Ercihan Kara  - 2375160

% HW1 Q4-b

% Close all other figures and reset the workspace
clc
close all

% Choose signal length as 40
N=40;

% Showing the x[n] input signal
n=0:1:N-1;
x=randn(1,N); 
figure;
stem(n,x);
xlabel('n');
ylabel('x[n]');
title('Input x[n]')


% Pulse duration (L = 3)
L=3;
h=ones(1,L);
% Execute convolution using conv function
y=conv(x,h);
figure;
stem(0:N+L-2, y);
xlabel('n');
ylabel('y[n]');
title('Output y[n] for L=3')


% Pulse duration (L = 15)
L=15;
h=ones(1,L);
% Execute convolution using conv function
y=conv(x,h);
figure;
stem(0:N+L-2, y);
xlabel('n');
ylabel('y[n]');
title('Output y[n] for L=15')


% Pulse duration (L = 35)
L=20;
h=ones(1,L);
% Execute convolution using conv function
y=conv(x,h);
figure;
stem(0:N+L-2, y);
xlabel('n');
ylabel('y[n]');
title('Output y[n] for L=35')

% We used L=3, L=15, L=35 values to make a comparison. We added an extra
% term to comprehend the effect of L on output signal better. As you can 
% see from output figures, the length of L of averaging filter changes the
% output signal's characteristic. If we use larger L values, we can see
% that y[n] seems smoother. If we do not, the values are more like input 
% x[n] values and they seem like more random.
