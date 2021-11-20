% Group 96 20/11/2021
% Arda Ünver    - 2444081
% Deniz Karakay - 2443307
% Ercihan Kara  - 2375160

% HW1 Q4-a

% Close all other figures and reset the workspace
clc
close all


% Choose N=15 & L=10 for this part
N = 15;
L = 10;


% Showing the x[n] input signal
n=0:1:N-1;
x=(1/2).^n;
figure;
stem(n,x);
xlabel('n');
ylabel('x[n]');
title('Input x[n]')

% Showing h[n] = u[n] - u[n-L] signal
h=ones(1,L);
figure;
stem(0:L-1, h);
xlabel('n');
ylabel('h[n]');
title('Impulse response h[n]')

% Converting h[n] -> h[-n]
h_rev=flip(h);

% We are adding 0's to the beginning and to end of x.
% This is for making computation possible for finite interval.
% This is called zero padding.
x_padded_version = [zeros(1,L-1) x zeros(1,L-1)];

% Create y array with zeros for output 
y = zeros(1,N+L-1);

% Using for loop to execute the convolution sum
for i=1:N+L-1
    % Taking scalar product of h_rev and x
    y(i) = x_padded_version(i:i+L-1) * h_rev';
end

% Showing y[n] signal
y=y(1:N);figure;
stem(n,y);
xlabel('n');
ylabel('y[n]');
title('Convolution of x[n] * h[n]')

% The y[n] signal is same as our theoritical result in Q1-B. We checked the
% values for different L values and our boundaries give same values with
% the MATLAB plot that we generated.

% Executing convolution using MATLAB's built-in function
y=conv(x,h);

% Showing the y[n] signal executed by conv function
figure;
stem(0:N+L-2, y);
xlabel('n');
ylabel('y[n]');
title('Convolution of x[n] * h[n] using conv')

% As you can see that using conv function and calculating convolution by
% ourselves does not affect the final result. Of course, using conv
% function is much easier.
