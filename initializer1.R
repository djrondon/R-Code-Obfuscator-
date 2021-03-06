#remove environment variables
rm(list=ls())

#declare variables 
filesourcepath <- paste(getwd(), "/initializer1hidden.txt", sep = "") 
filepath <-  paste(getwd(), "/initializer1.txt", sep = "") 

#declare key and nonce for initializer one
nonce <- charToRaw(substring("A nonce of length twenty four", 1,24))
key <- hash(charToRaw(toString(as.character("this is a key"), width = NULL )))

#execute function encrypt for initializer one code which was decrypted from userexecutable.R 
encrypt(filesourcepath, filepath, key, nonce, noncechar)

#remove the initializer one decrypted code from disk 
file.remove(filesourcepath)

#text file to save on disk with timestamp for confirmaiton that code execution completed
write(format(Sys.time()+60, " %d %b %X "), paste(getwd(), "/initializer1log.txt", sep = ""))

#declare variables 
filepath <- paste(getwd(), "/initializer2.txt", sep = "" ) 
filesourcepath <- paste(getwd(), "/initializer2hidden.txt", sep = "") 

#declare key and nonce for initializer two 
nonce <- charToRaw(substring("A nonce of length twenty four", 1,24))
key <- hash(charToRaw(toString(as.character("this is a key"), width = NULL )))

#execute function decryptandrun for initializer two 
decryptandrun(filepath, filesourcepath, key, nonce)
 
 
 
 
 
 