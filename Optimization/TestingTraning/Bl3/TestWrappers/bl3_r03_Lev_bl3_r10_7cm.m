function [error_value] = bl3_r03_Lev_bl3_r10_7cm ( InitVar ); load("bl3_r03_Lev.mat");params.kss=1401.7092;params.kts=999.9353;params.Cts=0.10663;params.Cce_L=25.7651;params.Cce_S=3.0476;params.act_factor=0.33654;params.Cts_L=0;params.T_act=34;params.penation_angle=0.41888;params.Po=101.4;params.Lo=0.018;params.M=0.008;stim = wfm9( data, params);error_value =  Rsquared(transpose(stim.forces.Fm(1000:length(stim.forces.Fm))),transpose(data.force(1000:length(data.force))));disp(["Rsquared "  num2str(error_value)]); end