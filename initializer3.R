#remove environment variables
rm(list=ls())

#declare variables 
filesourcepath <- paste(getwd(), "/initializer3hidden.txt", sep = "") 
filepath <-  paste(getwd(), "/initializer3.txt", sep = "") 

#declare key and nonce for initializer two
nonce <- charToRaw(substring("A nonce of length twenty four", 1,24))
key <- hash(charToRaw(toString(as.character("this is a key"), width = NULL )))

#execute function encrypt for initializer two code which was decrypted from initializer2.R
encrypt(filesourcepath, filepath, key, nonce, noncechar)

#remove the initializer three decrypted code from disk 
file.remove(filesourcepath)

#text file to save on disk with timestamp for confirmaiton that code execution completed
write(format(Sys.time(), " %d %b %X "), paste(getwd(), "/initializer3log.txt", sep = ""))

#declare variables 
filepath <- paste(getwd(), "/core.txt", sep = "" ) 
filesourcepath <- paste(getwd(), "/corehidden.txt", sep = "") 

#declare key and nonce for core program
nonce <- charToRaw(substring("A nonce of length twenty four", 1,24))
key <- hash(charToRaw(toString(as.character("this is a key"), width = NULL )))

#execute function decryptandrun for core program
decryptandrun(filepath, filesourcepath, key, nonce)