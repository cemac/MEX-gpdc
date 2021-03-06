%- gpdc_test.m
%
%  simple gpc test, should be equivalent to running:
%
%    gpdc -R 5 -s frequency -n 150 -min 1.0 -max 150.0 test.model | figue -c

T  = [7.5, 25, 0];
Vp = [500, 1350, 2000];
Vs = [200, 210, 1000];
d  = [1700, 1900, 2500];
out00 = gpdc(T, Vp, Vs, d);

% plot:
fig00 = figure;
plot(out00(:, 1), out00(:, 2:end));
fig01 = figure;
plot(out00(:, 1), rdivide(1, out00(:, 2:end)));

% same thing, using nSamples, minRange and maxRange:
out01 = gpdc(T, Vp, Vs, d, 'minRange', 1.0, 'maxRange', 150.0, 'nSamples', 150);
% plot:
fig00 = figure;
plot(out01(:, 1), out01(:, 2:end));
fig01 = figure;
plot(out01(:, 1), rdivide(1, out01(:, 2:end)));

% using fV (frequency vector), which should be equivalent to:
%   gpdc -R 5 -s frequency -n 3 -min 10.0 -max 30.0 test.model
out02 = gpdc(T, Vp, Vs, d, 'fV', [10, 20, 30]);
% plot:
fig00 = figure;
plot(out02(:, 1), out02(:, 2:end));
fig01 = figure;
plot(out02(:, 1), rdivide(1, out02(:, 2:end)));
