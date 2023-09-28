#!/bin/bash
#SBATCH --time=20:00:00
#SBATCH --job-name=dplp_second_round
#SBATCH --output=dplp_second_round.log
#SBATCH --error=dplp_second_round_error_file.err
#SBATCH --mail-user=ardestani@uleth.ca
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=7G
#SBATCH --cpus-per-task=20



module load java/1.8

scriptdir="/home/path_to_your_folder/DPLP"
PATH="/home/path_to_your_folder/DPLP/data"


for FNAME in $PATH/*
do
    /cvmfs/restricted.computecanada.ca/easybuild/software/2020/Core/java/1.8.0_192/bin/java -mx2g -cp "$scriptdir/*" edu.stanford.nlp.pipeline.StanfordCoreNLP -annotators tokenize,ssplit,pos,lemma,ner,parse -ssplit.eolonly -tokenize.whitespace true -file $FNAME -outputFormat xml
    # /usr/bin/java -mx2g -cp "$scriptdir/*" edu.stanford.nlp.pipeline.StanfordCoreNLP -annotators tokenize,ssplit,pos,lemma,ner,parse -file $FNAME
    /bin/mv $(/usr/bin/basename $FNAME.xml) $PATH/
done