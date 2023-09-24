![Pipeline](thesie_data_processing_pipeline.jpg)

## Table of Contents
1. [General notes](#general-notes)
2. [Server Configuration](#server-configuration)
3. [Labeling](#labeling)
4. [EDU](#edu)
5. [RST](#rst)
6. [Final dataset](#final-dataset)

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

## Labeling
Here, we discuss the labeling process.

## EDU
This section is about the EDU (Education) aspect.

## RST
RST (ReStructuredText) is discussed in this section.

## Final Dataset
The final dataset is the topic of this section.
