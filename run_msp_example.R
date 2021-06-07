# IMPORTANT
# This file must be run in the directory where the msp files are, currently RMassBank/inst/msp_examples
library(RMassBank)
w <- newMsmsWorkspace()
files <- list.files('.', '.msp', full.names=TRUE)
w@files <- files
loadList('./Compoundlist.csv')
loadRmbSettings('./RMB_options.ini')
w <- msmsWorkflow(w, readMethod='msp', filetable='./Filelist.csv', mode='pH', steps=1, archivename='msp_archive')
mb <- newMbWorkspace(w)
mb <- mbWorkflow(mb)
