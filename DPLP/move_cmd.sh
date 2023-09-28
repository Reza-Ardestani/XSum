#!/bin/bash
#SBATCH --time=1:00:00
#SBATCH --job-name=movecmd
#SBATCH --output=movecmd.log
#SBATCH --error=movecmd.err
#SBATCH --mail-user=ardestani@uleth.ca
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --cpus-per-task=20


# Moves the completed produced data to a new folder both name.txt.xml & its corresponding name.txt
cd /home/path_to_your_folder//DPLP/data


for xmlfile in *.xml; do
    txtfile="${xmlfile%.xml}"
    echo "xmlfile ${xmlfile}"
    echo "txtfile ${txtfile}"
    if [ -e "$txtfile" ]; then
        mv "$xmlfile" "$txtfile" ../processed_data/
    fi
done