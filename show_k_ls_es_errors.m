clear all
close all

sp_path = ['C:\Users\mamat\Documents\GitHub\codes_for_stencils\codes_paper_sragidwn\results\II_2_070a\'];
mat_file = 'left_inner_out_spiral_07cm_spV2_1_78.mat';
load([sp_path,mat_file]);

%%plotting 
ek = [Kappa',Mean_Max_LS_mm];
figure(1)
subplot(1,2,1)
plot(Kappa, Mean_Max_LS_mm(:,1), 'b')
title('minimum overall distance vs k')
subplot(1,2,2)
plot(Kappa, Mean_Max_LS_mm(:,2), 'k')
title('maximum distance vs k')

figure(2)
subplot(1,2,1)
plot(Kappa, Mean_Max_ES_mm(:,1), 'b')
title('minimum overall distance vs k')
subplot(1,2,2)
plot(Kappa, Mean_Max_ES_mm(:,2), 'k')
title('maximum distance vs k')