# MinoanSealsDemoApp
 This repo contains all the necessary programs and data to run a demo for the paper

"**Archimedes’ spirals appear with impressive precision on Late Neolithic and Bronze Age Aegean Seals**"

In a folder with the seal name, we have a folder named "DP" and the file `resolution.txt` with the resolution of the seal's image. In a txt file, like `input_func.txt`, we provide each of the following parameters, indicated by <...>, in a corresponding line, in the same order:

><folder_path - the path to the folder of the seal's image>\
><DP_path - the path to the folder of the `mat` files of the seal's motifs' data points>\
><save_path - the path to the folder where the output will be saved>\
><mat_file - the filename of the data points (DP) that will be processed>\
><DPstart - the start of the DP, the standard value is 1>\
><koila - a binary value of -1 or 1 for mirroring the stencil or not>\
><min_length - the minimum length to start the search from, in cm>\
><type_save - ending of the `.mat` file where the output is stored>\
><upper_max_mm - upper limit of maximum error, in mm>\
><upper_mean_mm - upper limit of the minimum overall distance, in mm>\
><start of `k` - the minimum value of the spirals' scaling factor `k`>\
><k_step - the step of the partition of `k`, in cm>\
><end_k - the maximum value of the partition of `k`, in cm>
