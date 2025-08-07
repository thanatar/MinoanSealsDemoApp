# MinoanSealsDemoApp
 This repo contains all the necessary programs and data to run a demo for the paper

"**Archimedes’ spirals appear with impressive precision on Late Neolithic and Bronze Age Aegean Seals**"

In a folder with the seal name, we have a folder named "DP" and the file `resolution.txt` with the resolution of the seal's image. In a txt file, like `input_func.txt`, we provide each of the following parameters, indicated by <...>, in a corresponding line, in the same order:

>`1`<folder_path - the path to the folder of the seal's image>\
>`2`<DP_path - the path to the folder of the `mat` files of the seal's motifs' data points>\
>`3`<save_path - the path to the folder where the output will be saved>\
>`4`<mat_file - the filename of the data points (DP) that will be processed>\
>`5`<DPstart - the start of the DP, the standard value is 1>\
>`6`<koila - a binary value of -1 or 1 for mirroring the stencil or not>\
>`7`<min_length - the minimum length to start the search from, in cm>\
>`8`<type_save - ending of the `.mat` file where the output is stored>\
>`9`<upper_max_mm - upper limit of the maximum prototype-to-datapoints distance, in mm>\
>`10`<upper_mean_mm - upper limit of the average distance, in mm>\
>`11`<start of `k` - the minimum value of the spirals' scaling factor `k`>\
>`12`<k_step - the step of the partition of `k`, in cm>\
>`13`<end_k - the maximum value of the partition of `k`, in cm>

The path to this txt file is fed as input to the `main_App` function and the stencil parts of the linear spiral and circle involute prototypes that best fit the data points of the `mat_file` are determined.\

The output file is a `mat` file that contains the following variables:\
'Kappa' - the array of Archimedes' constants for which the datapoints fit to them. \
'analysis' - the resolution of the DataPoints and the seal under study.\
"kommatiLS" - an array that consist of a struct with the fields:            \
            kommatiLS.min_mean - the minimum overall distance in mm \
            kommatiLS.min_max - the maximum distance in mm\
            kommatiLS.ls - k of the model linear spiral, in cm\
            kommatiLS.lsInd - the index of k in the Kappa array\
            kommatiLS.arxiC - the index to the first point of the DataPoint array \
            kommatiLS.telosC - the index to the last point of the DataPoint array\
each struct of the array corresponds to the optimal fitting of a model linear spiral to the DataPoints, for the indexes of points from kommatiLS.arxiC to kommatiLS.telosC in the DataPoint array. The optimal k is given in kommatiLS.ls.\
"mikos" - the length of the greater DP for which an acceptable fitting to a model linear spiral was detected.\ 
"Mean_Max_LS" - a nx2 array, each line of which contains the minimum overall error in the first column and the maximum error in the second column, in pixels. Each pair of errors corresponds to a specific k of the Kappa array, based on the index of the related line of the array, eg Mean_Max_LS(3,:) contains the errors of fitting to a model linear spiral with k=Kappa(3), etc.\
"Mean_Max_LS_mm" - the same array as "Mean_Max_LS", but the dimensions are in mm.\
The next three variables contain the fitting results of all k that generate involutes of a circle, for the greater determined acceptable length of DataPoints, where DP starts from point with index kommatiLS(end).arxiC and ends to point with index kommatiLS(end).telosC.\
'Mean_Max_ES_arr' a nx2 array, each line of which contains the minimum overall error in the first column and the maximum error in the second column, in pixels. Each pair of errors corresponds to a specific k of the Kappa array, based on the index of the related line of the array, eg Mean_Max_LS(3,:) contains the errors of fitting to a model involute of a circle with k=Kappa(3), etc.\
"Mean_Max_ES_mm" - the same array as "Mean_Max_ES_arr", but the dimensions are in mm.\
"kommati_es" - a struct that contains information regarding the optimal fitting of a model involute of a circle to the DP part, eg the fitting where the minimum overall distance and the maximum distance are minimized, with fields:\
            kommati_es.min_mean - the minimum overall distance in mm for the specific k\
            kommati_es.min_max - the maximum distance in mm for the specific k\
            kommati_es.es - k of the optimal model involute of a circle, in cm\
            kommati_es.esInd - the index of k in the Kappa array\
            kommati_es.arxiC - the index to the first point of the DataPoint array \
            kommati_es.telosC - the index to the last point of the DataPoint array\
We also provide the script `show_k_ls_es_errors.m` to visualize the results of the application. The user provides the following input:\
>`1`<sp_path - the path to the folder where the output of mainApp was saved >\
>`2`<mat_file - the name of the output file that mainApp produced>\
 
