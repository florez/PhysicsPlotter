###### eMuPlotter running script
# Pass one of the following arguments to run the eMuPlotter over the sample 
# General (ttbar, Ztautau, Zprime_tautau_SSM*, Diboson), QCD_J*, WenuNp*, WmunuNp*

SAMPLE=$1
SAMPLE1=$2
SAMPLE2=$3
SAMPLE3=$4
SAMPLE4=$5
Directory=$6

for region in `cat config/directories.in`; do
    cd ${Directory}/${region}
	hadd normalizedHistos_${SAMPLE}.root normalizedHistos_${SAMPLE1}.root normalizedHistos_${SAMPLE2}.root normalizedHistos_${SAMPLE3}.root normalizedHistos_${SAMPLE4}.root  
	cd ../../
done    



