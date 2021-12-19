% Group 96 19/12/2021
% Arda Ünver    - 2444081
% Deniz Karakay - 2443307
% Ercihan Kara  - 2375160

% HW2 Q4 Part 2

clc;
clear;
close all;

% Period
T = 4;

% Delay
delay = 1;

% Fund Frequency
w0 = 2*pi/T;

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

% Get 51th Harmonic
fs=51;
sum=0;
for k=1:2:fs
    % Calculate FS coefficients
    ak =(4)/(k*pi)^2*(-1+(-1)^k);

    % Delay FS coefficients by 1
    ak = ak * exp(-1j*k*w0*delay);

    % Differentiate FS coefficients
    ak = ak *(1j*k*w0);

    % Calculate output function
    sum=sum+(ak*(cos(k*x*w0)));

    % k = 11
    if k == 11
        figure;

        % Make output periodic
        periodic_sum = repmat(sum,1,N+1);
      
        % Plot original and reconstructed signal
        plot(periodic_x, periodic_fx,periodic_x,periodic_sum)
        grid
        title('k = 11')

    % k = 21
    elseif k == 21
        figure;

        % Make output periodic
        periodic_sum = repmat(sum,1,N+1);

        % Plot original and reconstructed signal
        plot(periodic_x, periodic_fx,periodic_x,periodic_sum)
        grid
        title('k = 21')

    % k = 51
    elseif k == 51
        figure;

        % Make output periodic
        periodic_sum = repmat(sum,1,N+1);

        % Plot original and reconstructed signal
        plot(periodic_x, periodic_fx,periodic_x,periodic_sum)
        grid
        title('k = 51')
    end
end 

% After reconstruction of the original signal by delayed and differentiated
% version, we observed the Gibbs phenomenon. If we further increase the
% number of FS coefficients to reconstruct the original signal, we can
% observe convergence to the delayed and differentiated waveform at the
% edges. However, as you can see from the results of k = 11, we do not need
% to zoom into the see the Gibbs effect. Therefore, increasing the number
% of FS coefficients allow us to converge our reconstructed signal to the
% original one.