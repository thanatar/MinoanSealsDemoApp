function main_App(txtfile)
%   we test a given DP against all k=start of k:k_step:end_k generating
%   Archimedean Spirals and we choose the part of DP having the greater
%   length that satisfies Cond.1. For this DP part we test how well
%   involutes of a circle fit to it, with kIC= start of k:k_step:end_k.
%   For detailed documentation on the output file and the inputs, read
%   README.md.

% in a folder with the seal name, we have a folder named "DP" and the file
% "resolution.txt" with the resolution of the seal's image. In a txt file,
% we fill each of the following parameters, indicated by <...>, in a corresponding line,
% in the same order:
%     <folder_path>
%     <DP_path>
%     <savepath1>
%     <mat_file>
%     <DPstart> %the start of the DP, usually 1
%     <koila> %a binary value of 1 or -1
%     <min_length>  %the minimum length to start the search from, in cm
%     <type_save>  %ending of the .mat file where the output is stored
%     <upper_max_mm> %upper limit of maximum error, in mm
%     <upper_mean_mm> %upper limit of the minimum overall distance, in mm
%     <start of k> %the minimum value of k for linear spiral and the involute
%     of a circle, in cm
%     <k_step> % the step of the partition of k, in cm
%     <end_k> %the maximum value of the partition of k, in cm

coder.extrinsic('FastAlgorithmMex');
fid = fopen(txtfile,"r");
if(fid<0)
    disp('no file exists.');
else
    folder_path = fgetl(fid);
    DP_path = fgetl(fid);
    savepath1 = fgetl(fid);
    mat_file = fgetl(fid);
    fclose(fid);
    if not(isfolder(savepath1)),mkdir(savepath1);end
    %% run main program
    DataPoint=load([DP_path mat_file '.mat']);DataPoint=DataPoint.DataPoint;
    mainRun_mex(DataPoint,txtfile);
end
