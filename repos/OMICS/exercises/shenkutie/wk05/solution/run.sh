#ln -s ../../../../content/wk05/data/multiplexed.fq
#ln -s ../../../../content/wk05/data/sample_sheet.csv 
wc -l sample_sheet.csv 
cat sample_sheet.csv
seqkit stats multiplexed.fq  | tee muxed.stats.tsv 
#sample_name,forward,reverse
#SRR23803536,ACCT,CCAG
#SRR23803537,ACCT,TCAG
#SRR23803538,CTGC,CCAG
#SRR23803539,CTGC,TCAG
seqkit grep -srip ^ACCT multiplexed.fq |seqkit grep -srip CCAG$ -o SRR23803536.fastq
