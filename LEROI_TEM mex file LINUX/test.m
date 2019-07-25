% Test LEROI_TEM

% The input below is equivalent to the Leroi.cfl content:
%
% 4 0 4                 !! NLYR, NPLT, NLITH
% 30 -1 1 1 0 0 1
% 10000 -1 1 1 0 0 1 
% 10 -1 1 1 0 0 1  
% 100 -1 1 1 0 0 1  !! LYTH(NLITH, 4)
% 1 3
% 2 60
% 3 10                  !! LITHL(NLYR - 1), THK(NLYR - 1)
% 4                     !! LITH(NLYR) 

NLYR  = 4;
NPLT  = 0;
NLITH = 4;
LYTH  = [30, -1, 1, 1, 0, 0, 1; 10000, -1, 1, 1, 0, 0, 1; 10, -1, 1, 1, 0, 0, 1; 100, -1, 1, 1, 0, 0, 1];
LITHL = [1, 2, 3, 4];
THK   = [3, 60, 10];

LEROI_TEM(NLYR, NPLT, NLITH, LYTH, LITHL, THK)
