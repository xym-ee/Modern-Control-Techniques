clc;clear;
M = 1;m2 = 1; m1 = m2;l2 = 0.5; l1 = l2; g = 9.8;
K11 = 0;
K12 = (3*(-2*g*m1-4*g*m2))/(2*(-4*m1-3*m2)*l1);
K13 = 9*m2*g/(2*(-4*m1-3*m2)*l1);
K14 = 0;
K15 = 0;
K16 = 0;
K17 = 3*(-2*m1-m2)/(2*(-4*m1-3*m2)*l1);

K21 = 0;
K22 = 2*g*(m1+2*m2)/(4*m2*l2-16/9*(m1+3*m2)*l2);
K23 = -4*g*(m1+3*m2)/(3*(4*m2*l2-16/9*(m1+3*m2)*l2));
K24 = 0;
K25 = 0;
K26 = 0;
K27 = (2*(m1+2*m2)-4/3*(m1+3*m2))/(4*m2*l2-16/9*(m1+3*m2)*l2);
A = [
0 0 0 1 0 0 ;
0 0 0 0 1 0 ; 
0 0 0 0 0 1 ;
0 0 0 0 0 0 ;
0 K12 K13 0 0 0 ;
0 K22 K23 0 0 0 ;
];
B = [0 0 0 1 K17 K27]';
C = [1 0 0 0 0 0; 0 1 0 0 0 0; 0 0 1 0 0 0 ];
D = [0 0 0];


%��������
% p1 = -2 + 5i;
% p2 = -2 - 5i;
% p3 = -5 + 4i;
% p4 = -5 - 4i;
% p5 = -8 + 6i;
% p6 = -8 - 6i;
p1 = -2 + 6i;
p2 = -2 - 6i;
p3 = -12;
p4 = -13.8;
p5 = -14;
p6 = -14.1;
P = [p1,p2,p3,p4,p5,p6];

K = place(A,B,P)

