#remove environment variables
rm(list=ls())

#declare variables 
filesourcepath <- paste(getwd(), "/corehidden.txt", sep = "") 
filepath <-  paste(getwd(), "/core.txt", sep = "") 

#declare key and nonce for core program
nonce <- charToRaw(substring("A nonce of length twenty four", 1,24))
key <- hash(charToRaw(toString(as.character("this is a key"), width = NULL )))

#remove the core program code from disk 
file.remove(filesourcepath)

#text file to save on disk with timestamp for confirmaiton that code execution completed
write(format(Sys.time(), " %d %b %X "), paste(getwd(), "/corelog.txt", sep = ""))