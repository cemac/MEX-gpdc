%- gpdc_test_fail.m
%
%  an example of input data which will fail.
%  should produce:
%
%    >> gpdc_test_fail
%    Error using gpdc
%    gpdc : dispersion calculate failed

T  = [17.56040703, 12.50057917, 10.62848775, 1.026866407, 0];
Vp = [1965.650528, 1568.468983, 2547.986286, 1500.285937 1850.967346];
Vs = [730.8464869, 2695.293591, 1847.041835, 2300.811234 1896.724571];
d  = [1036.682181, 2011.402531, 2055.658501, 906.9977179, 594.3044673];
out = gpdc(T, Vp, Vs, d);

