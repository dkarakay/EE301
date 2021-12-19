% Group 96 19/12/2021
% Arda Ünver    - 2444081
% Deniz Karakay - 2443307
% Ercihan Kara  - 2375160

% HW2 Q4 Part 1

clc;
clear;
close all;

% Period
T = 4;

% "N + 1" period is shown
N = 4;

% 200 samples per one period
samples = 200;

% Given function
f = @(t)(t-1).*(0<=t & t<=2) + (3-t).*(2<=t & t<=4);

% Generating samples in one period
x = linspace(0,T,samples);

% Interval to be shown
intvl = [-T, N*T];

% Copying the original function values to get multiple periods
periodic_fx = repmat(f(x),1,N+1);

% Copying the original input values to get multiple periods
periodic_x = linspace(intvl(1),intvl(2),length(periodic_fx));

% Plot multiple periods
plot(periodic_x, periodic_fx)
grid
title("5 Periods of the given function")

% For k = 7
fs = 51;
sum=0;

% Finding FS coefficients
for k=1:2:fs
    ak=(4)/(k*pi)^2*(-1+(-1)^k); 
    sum=sum+(ak*cos(k*pi*x*1/2));
    
    % k=7
    if k == 7
    % Make output periodic
    periodic_sum = repmat(sum,1,N+1);
    figure;

    % Plot original and reconstructed signal
    plot(periodic_x, periodic_fx,periodic_x,periodic_sum)
    grid
    title('k=7')

    % k=9
    elseif k == 9
    % Make output periodic
    periodic_sum = repmat(sum,1,N+1);
    figure;

    % Plot original and reconstructed signal
    plot(periodic_x, periodic_fx,periodic_x,periodic_sum)
    grid
    title('k=9')

    % k=11
    elseif k == 11
    % Make output periodic
    periodic_sum = repmat(sum,1,N+1);
    figure;

    % Plot original and reconstructed signal
    plot(periodic_x, periodic_fx,periodic_x,periodic_sum)
    grid
    title('k=11')

    % k=21
    elseif k == 21
    % Make output periodic
    periodic_sum = repmat(sum,1,N+1);
    figure;

    % Plot original and reconstructed signal
    plot(periodic_x, periodic_fx,periodic_x,periodic_sum)
    grid
    title('k=21')

    % k=51
    elseif k == 51
    % Make output periodic
    periodic_sum = repmat(sum,1,N+1);
    figure;

    % Plot original and reconstructed signal
    plot(periodic_x, periodic_fx,periodic_x,periodic_sum)
    grid
    title('k=51')
    end
end 


% We do not expect a significant improvement in the approximation because
% as you can see from results. After k=9, we got almost the original graph.
% This is happened because the first FS coefficients have more effect on
% the output. When we think about Parseval's equation, what Parseval's
% relation states is that the total average power in a periodic signal
% equals the sum of the average powers in all of its harmonic components.
% Therefore, the kth harmonic elements have less effect on the output that
% is shown by Parseval's equation as well.