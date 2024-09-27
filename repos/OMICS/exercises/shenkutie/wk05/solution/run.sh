  #ln -s ../../../../content/wk05/data/multiplexed.fq
  #ln -s ../../../../content/wk05/data/sample_sheet.csv 
  wc -l sample_sheet.csv 
  cat sample_sheet.csv
  seqkit stats multiplexed.fq  | tee muxed.stats.tsv 
