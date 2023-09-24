![Pipeline](thesie_data_processing_pipeline.jpg)

## Table of Contents
1. [General notes](#general-notes)
2. [Server Configuration](#server-configuration)
3. [Labeling](#labeling)
4. [EDU](#edu)
5. [RST](#rst)
6. [Final datasets](#final-datasets)

## General Notes
+ There are some Xsum articles that have missing 'document' field and I have removed them. The doc ids are:
  - Train: [7685, 8241, 18941, 34482, 45994, 47375, 51451, 55972, 81764, 93859, 98279, 100515, 111410, 132307, 133278, 137842, 139131, 140449, 161069, 161224, 167620, 167701, 169668, 177000, 183925, 194983, 199290, 200409]
  - Test: [11155]
  - valid: [3834, 5677, 4715, 219, 8445]
+ In case you want to long documents, You need to changed -mx2g to a higher number (like -xm7g). Since I have truncated the documents to have less than 768 BPE tokens I did not need to change the 2 Gbytes jave heapsize to a higher number.
+ Sometimes corenlp.sh does not generate xml file for some documents. In this case you just need to (usually) run that one more time on those documents that where left unprocessed.
+ Without losing the generality of the problem, I have removed '[' and ']' characters from the documents since corenlp.sh fails to properly generate xml files of documents containing those two characters.

## Server Configuration
I used remote servers of ComputeCanada Alliance and a local server.
+ Local Server Configs:
  - GPU: 12G NVIDIA TITAN XP. Driver Version: 530.41.03. CUDA version: 12.1
  - RAM: 64G
  - OS: UBUNTU 16.04
  - 10K of documents takes 2.5 days to compute xml files.
+ Compute Canada Clusters:
  - I used cedar, beluga, narval, graham, and niagara.
  - sbatch file used to process train documents on these remove servers are available in run_dplp_computeCanada.sh file.
  - On avarage it takes 4 days to compute a batch of 20K documents on each of these remove servers. Narval, however, was faster than others and I used that mostly.

## Labeling
Code snippet used for selecting important EDUs with a pre-choosen hyperparameter (maximum number of important EDUs) is provided in a notebook in labeling folder. 
+ I ran this code snippet on already processed (by Discobert paper authors) CNNDM dataset and the percision of their provided labels and our produced labels is 95%. I think the minor difference lies in the fact that they have done some preprocessing and post-processing (such as selecting EDUs with their grammatically related neighboring EDUs), yet the code is not available on their repository.
  
## EDU
### Notes:
notes
### How to run:
pipeline

## RST
### Notes:
notes
### How to run:
pipeline

## Final Datasets
The final dataset is the topic of this section.

## References and acknowledgement
Taha and Ryia
